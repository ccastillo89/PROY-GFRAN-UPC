using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UPC.SISGFRAN.Web.Helper.PdfReportGenerator;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.Web.Models;
using System.Web.Services;
using System.Web.Script.Services;
using UPC.SISGFRAN.EL.NonInherited;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.Web.Helper;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SugerenciaController : PdfViewController
    {
        SugerenciaBL sugerenciaBL = new SugerenciaBL();

        private PARDOSDBEntities db = new PARDOSDBEntities();

        public ActionResult EvaluarSugerencia(String cboDistrito, String cboLocal, String dtpInicio, String dtpFin)
        {

            EvaluacionSugerenciaHelper evaluacion = new EvaluacionSugerenciaHelper();
            DetalleEvaluacionsugerencia detalle = new DetalleEvaluacionsugerencia();

            int año = 0;
            int mes = 0;
            int dia = 0;

            if (dtpInicio == "" || dtpFin == "")
            {
                ModelState.AddModelError("validacion", "Se debe ingresar la fecha de busqueda.");
            }

            //yyyy-mm-dd
            año = int.Parse(dtpInicio.Substring(0,4));
            mes = int.Parse(dtpInicio.Substring(5, 2));
            dia = int.Parse(dtpInicio.Substring(8, 2));

            DateTime thisDate1 = new DateTime(año, mes, dia);
            año = int.Parse(dtpFin.Substring(0, 4));
            mes = int.Parse(dtpFin.Substring(5, 2));
            dia = int.Parse(dtpFin.Substring(8, 2));

            DateTime thisDate2 = new DateTime(año, mes, dia);
            Console.WriteLine("Today is " + thisDate1.ToString("MMMM dd, yyyy") + ".");

            SugerenciaEL records = new SugerenciaEL();
            ListaPaginada<SugerenciaEL> listaContentSugerencia = new ListaPaginada<SugerenciaEL>();

            Distrito distrito = db.Distrito.Find(int.Parse(cboDistrito));
            Local local = db.Local.Find(int.Parse(cboLocal));
            
            List<SugerenciaEL> listaSugerencias = sugerenciaBL.GetSugerencias(cboDistrito, cboLocal, thisDate1.ToString("MMMM dd, yyyy"), 
                thisDate2.ToString("MMMM dd, yyyy"));

            if (listaSugerencias.Count == 0)
            {
                ModelState.AddModelError("validacion", "No hay sugerencias por evaluar.");
            }

            if(cboDistrito.Equals("0") )
            evaluacion.nombre_distrito = "TODOS";
            else
                evaluacion.nombre_distrito = distrito.Nombre;
            if (cboLocal.Equals("0"))
                evaluacion.nombre_local = "TODOS";
            else
            evaluacion.nombre_local = local.Nombre;

            evaluacion.fecha_inicio = thisDate1.ToString("MMMM dd, yyyy");
            evaluacion.fecha_fin = thisDate2.ToString("MMMM dd, yyyy");
            evaluacion.descripcion_evaluacion = "Se ha evaluado las solicitudes ingresadas en las fechas: " + thisDate1.ToString("MMMM dd, yyyy") + " a " + thisDate2.ToString("MMMM dd, yyyy"); 
            List<DetalleEvaluacionsugerencia> detalleEvaluacionLista = new List<DetalleEvaluacionsugerencia>();

            foreach (SugerenciaEL sugerencia in listaSugerencias) {

                DetalleEvaluacionsugerencia detalleSugerencia = new DetalleEvaluacionsugerencia();
                /**/
                detalleSugerencia.codigo_sugerencia = Convert.ToString(sugerencia.Id);
                detalleSugerencia.administrador_sugerencia = sugerencia.Local.Responsable;
                detalleSugerencia.fecha_sugerencia = Convert.ToString(sugerencia.FechaIngreso);
                detalleSugerencia.prioridad_sugerencia = sugerencia.Prioridad;
                detalleSugerencia.enviar_sugerencia = "N";
                detalleSugerencia.detalle_sugerencia = sugerencia.Comentario;

                detalleEvaluacionLista.Add(detalleSugerencia);
                /**/

            }

            evaluacion.DetalleEvaluacionsugerencia = detalleEvaluacionLista;
            return View(evaluacion);
        }

        public ActionResult Regresar()
        {
            return View("~/views/Sugerencia/Index.cshtml");
        }

        public ActionResult Index()
        {
            DateTime thisDay = DateTime.Today;
            SugerenciaHelper sugerenciaHelper = new SugerenciaHelper();
            sugerenciaHelper.fecha_inicio = string.Format("{0:yyyy-MM-dd}", thisDay);
            sugerenciaHelper.fecha_fin = string.Format("{0:yyyy-MM-dd}", thisDay);
            return View(sugerenciaHelper);
        }

        public JsonResult ListaDistritos()
        {
            var distritos = (db.Distrito.OrderBy(a => a.Nombre) 
                             .Select (c => new { Id = c.Id , Nombre = c.Nombre })).ToList();

            return Json(distritos, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaLocales()
        {
            var locales = (db.Local.OrderBy(a => a.Nombre)
                             .Select(c => new { Id = c.Id, Nombre = c.Nombre })).ToList();

            return Json(locales, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaLocalesXDistrito(String distrito)
        {
            int distritoId = Int32.Parse(distrito);
            var locales = (db.Local.OrderBy(a => a.Nombre)
                             .Select(c => new { Id = c.Id, Nombre = c.Nombre })).Where(x => x.Id == distritoId).ToList();

            return Json(locales, JsonRequestBehavior.AllowGet);
        }
    }
}