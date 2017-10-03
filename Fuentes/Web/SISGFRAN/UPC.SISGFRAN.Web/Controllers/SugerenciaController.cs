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
using System.Configuration;
using System.Text;
using UPC.SISGFRAN.Web.Helper.Mail;

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

            if (dtpInicio == null || dtpFin == null || dtpInicio == "" || dtpFin == "" )
            {
                ModelState.AddModelError("validacion", "Se debe ingresar la fecha de busqueda.");
                return View("~/views/Sugerencia/Index.cshtml");
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

           


            tb_distrito distrito = db.tb_distrito.Find(int.Parse(cboDistrito));
            tb_local local = db.tb_local.Find(int.Parse(cboLocal));

            List<SugerenciaEL> listaSugerencias = sugerenciaBL.GetSugerencias(cboDistrito, cboLocal, dtpInicio,
                dtpFin);

            if (listaSugerencias.Count == 0)
            {
                ModelState.AddModelError("validacion", "No hay sugerencias por evaluar.");
                return View("~/views/Sugerencia/Index.cshtml");
            }

            if(cboDistrito.Equals("0") )
            evaluacion.nombre_distrito = "TODOS";
            else
                evaluacion.nombre_distrito = distrito.Nombre;
            if (cboLocal.Equals("0"))
                evaluacion.nombre_local = "TODOS";
            else
            evaluacion.nombre_local = local.nombre;

            evaluacion.fecha_inicio = thisDate1.ToString("dd/MM/yyyy");
            evaluacion.fecha_fin = thisDate2.ToString("dd/MM/yyyy");
            evaluacion.descripcion_evaluacion = "Se ha evaluado las solicitudes ingresadas en las fechas: " + thisDate1.ToString("MMMM dd, yyyy") + " a " + thisDate2.ToString("MMMM dd, yyyy"); 
            List<DetalleEvaluacionsugerencia> detalleEvaluacionLista = new List<DetalleEvaluacionsugerencia>();

            List<tb_sugerencia_parametro> sugerencia_parametros = new List<tb_sugerencia_parametro>();

            var parametrosParametros = from c in db.tb_sugerencia_parametro select c;

            tb_sugerencia_parametro parametros = new tb_sugerencia_parametro();

            foreach (tb_sugerencia_parametro solicitudd in parametrosParametros)
            {
                sugerencia_parametros.Add(solicitudd);
            }


            int total_prioridad_alta = 0;
            int total_prioridad_baja = 0;
            int total_prioridad_media = 0;
            int total_sugerencias = 0;

            foreach (SugerenciaEL sugerencia in listaSugerencias) {

                DetalleEvaluacionsugerencia detalleSugerencia = new DetalleEvaluacionsugerencia();
                /**/
                detalleSugerencia.codigo_sugerencia = Convert.ToString(sugerencia.Id);
                detalleSugerencia.administrador_sugerencia = sugerencia.Local.Responsable;
                detalleSugerencia.fecha_sugerencia = sugerencia.FechaIngreso.ToString("dd/MM/yyyy");
                detalleSugerencia.prioridad_sugerencia = sugerencia.Prioridad;
                detalleSugerencia.enviar_sugerencia = "N";
                detalleSugerencia = evaluarPrioridad(sugerencia.Descripcion, sugerencia_parametros, detalleSugerencia,evaluacion);
                detalleSugerencia.detalle_sugerencia = detalleSugerencia.detalle_sugerencia;
                detalleSugerencia.prioridad_sugerencia = detalleSugerencia.prioridad_sugerencia;

                detalleSugerencia.descripcion_sugerencia = sugerencia.Descripcion;

                tb_local locals = db.tb_local.Find(sugerencia.Local.Id);
                detalleSugerencia.correo_electronico = locals.Usuario.Email;

                detalleSugerencia.descripcion_local = locals.tb_distrito.Nombre + " - " + locals.direccion;


                if (detalleSugerencia.prioridad_sugerencia.Equals("ALTA"))
                {
                    total_prioridad_alta += 1;
                }
                else if (detalleSugerencia.prioridad_sugerencia.Equals("MEDIA"))
                {
                    total_prioridad_media += 1;
                }
                else if (detalleSugerencia.prioridad_sugerencia.Equals("BAJA"))
                {
                    total_prioridad_baja += 1;
                } 
                detalleEvaluacionLista.Add(detalleSugerencia);
                /**/

            }

            total_sugerencias = total_prioridad_alta + total_prioridad_media + total_prioridad_baja;
            evaluacion.descripcion_evaluacion = evaluacion.descripcion_evaluacion + ". " +
                                                "Se han evaluado " + total_sugerencias + " solicitudes. De las cuales " + total_prioridad_alta + " son de prioridad alta, " + total_prioridad_media + " son de prioridad media y " + total_prioridad_baja + " son de prioridad baja.";


            evaluacion.DetalleEvaluacionsugerencia = detalleEvaluacionLista;

            
             
            /*ACTUALIZAR ESTADO DE SUGERENCIA*/
           /* foreach (DetalleEvaluacionsugerencia sugerencia in detalleEvaluacionLista)
            {
                tb_sugerencia sugerencias = db.tb_sugerencia.Find(sugerencia.Id);
                if (sugerencia.prioridad_sugerencia.Equals("ALTA"))
                {
                    sugerencias.prioridad = "1";
                }
                else if (sugerencia.prioridad_sugerencia.Equals("MEDIA"))
                {
                    sugerencias.prioridad = "2";
                }
                else if (sugerencia.prioridad_sugerencia.Equals("BAJA"))
                {
                    sugerencias.prioridad = "3";
                } 
                
                sugerencias.estado = 2; // Estado dos es REVISADO
                db.Entry(sugerencias).State = System.Data.EntityState.Modified;
                db.SaveChanges();
            }*/
            /*ACTUALIZAR ESTADO DE SUGERENCIA*/

            return View(evaluacion);
        }

        [HttpGet]
        public ActionResult DetalleSugerencia(String idSugerencia, EvaluacionSugerenciaHelper evaluacion)
        {
            EvaluacionSugerenciaHelper segurenciaHelper = new EvaluacionSugerenciaHelper();
            try
            {
              /*tb_sugerencia sugerencia = db.tb_sugerencia.Find(11);
              segurenciaHelper.idSugerencia = sugerencia.id;
              segurenciaHelper.detalleSugerencia = sugerencia.descripcion;
              segurenciaHelper.fechaIngreso = sugerencia.fechaIngreso.ToString();*/
                return PartialView("_DetalleSugerencia", segurenciaHelper);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }



        public DetalleEvaluacionsugerencia evaluarPrioridad(String descripcion, List<tb_sugerencia_parametro> sugerencia_parametros, DetalleEvaluacionsugerencia detalleSugerencia, EvaluacionSugerenciaHelper evaluacion)
        {
            
            foreach (tb_sugerencia_parametro solicitudd in sugerencia_parametros)
            {
                int VAR = 0;
                VAR = descripcion.ToUpper().IndexOf(solicitudd.descripcion.ToUpper());
                string A = solicitudd.descripcion;
                if (VAR != -1)
                {
                    if (solicitudd.nivel_prioridad.Equals("ALTA"))
                    {                        
                        detalleSugerencia.detalle_sugerencia = detalleSugerencia.detalle_sugerencia ;                        
                        
                        detalleSugerencia.prioridad_sugerencia = solicitudd.nivel_prioridad;
                        detalleSugerencia.prioridadSugerencia = 1;
                    }
                    else
                    {
                        
                        detalleSugerencia.detalle_sugerencia = detalleSugerencia.detalle_sugerencia + " " + A + " "; 
                        detalleSugerencia.prioridad_sugerencia = solicitudd.nivel_prioridad; }
                }
                break;
            }


            if (detalleSugerencia.detalle_sugerencia == null  )
            {
                
                detalleSugerencia.detalle_sugerencia = "No se encontró palabras clave.";
                detalleSugerencia.prioridad_sugerencia = "BAJA";
            }
            
            return detalleSugerencia;
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
            var distritos = (db.tb_distrito.OrderBy(a => a.Nombre) 
                             .Select (c => new { Id = c.Id , Nombre = c.Nombre })).ToList();

            return Json(distritos, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaLocales()
        {
            var locales = (db.tb_local.OrderBy(a => a.nombre)
                             .Select(c => new { Id = c.id, Nombre = c.nombre })).ToList();

            return Json(locales, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult DetalleCorreo(String idSugerencia )
        {
            CorreoHelper correoHelper = new CorreoHelper();
            try
            {
                /*tb_sugerencia sugerencia = db.tb_sugerencia.Find(11);
                segurenciaHelper.idSugerencia = sugerencia.id;
                segurenciaHelper.detalleSugerencia = sugerencia.descripcion;
                segurenciaHelper.fechaIngreso = sugerencia.fechaIngreso.ToString();*/
                return PartialView("_Correo", correoHelper);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }


        [HttpGet]
        public ActionResult EnviarCorreo(string id, string msj, string resp)
        {
            try
            {
                if (msj.Equals(""))
                {
                    msj = "El usuario no ingresó ningún comentario.";
                }
                int idEval = Convert.ToInt32(id);

                tb_sugerencia sugerencia = db.tb_sugerencia.Find(idEval);
                
                String prioridad = "BAJA";

                if (sugerencia.prioridad.Equals ("1"))
                {
                    prioridad = "ALTA";
                }
                else if (sugerencia.prioridad.Equals("2"))
                {
                    prioridad = "MEDIA";
                }
                else if (sugerencia.prioridad.Equals("3"))
                {
                    prioridad = "BAJA";
                } 
                // Configurar envio de correo
                string subject = string.Format("{0}-{1}: {2}", "[Pardos Chicken]", "Evaluación de Sugerencias", "");
                string mailFrom = ConfigurationManager.AppSettings.Get("MailEmisor");
                string passwordMailEmisor = ConfigurationManager.AppSettings.Get("PasswordMailEmisor");
                StringBuilder buffer = new StringBuilder();
                
                buffer.Append("Estimado <b>{0}</b> <br /><br />");
                buffer.Append(" Es grato saludarlo e informarle que la dirección central de Pardos Chicken ha realizado la evaluación de las solicitudes ingresadas en su local.<br /><br />");
                buffer.Append(" Código de Sugerencia Evaluada: "+ sugerencia.id + "<br/>");
                buffer.Append(" Prioridad de sugerencia: " + prioridad + "<br/>");
                buffer.Append(" Fecha de ingreso de sugerencia: " + sugerencia.fechaIngreso + "<br/>");
                buffer.Append(" Local: " + sugerencia.tb_local.tb_distrito.Nombre + " - " + sugerencia.tb_local .direccion+ "<br/>");
                buffer.Append(" <br/>");
                buffer.Append(" Mensaje de director de franquicia: " + msj + "<br/>");
                buffer.Append(" <br/>");
                buffer.Append(" Descripción de la sugerencia: " + sugerencia.descripcion + "<br/>");
                buffer.Append("<br/><br/>");
                buffer.Append(" Saludos cordiales. <br/><br/>");
                buffer.Append("<i> Nota: Por favor no responda este correo. <i>");

                MailHelper.SendMail(mailFrom, passwordMailEmisor, sugerencia.tb_local.Usuario.Email, subject, string.Format(buffer.ToString(), resp), true, System.Net.Mail.MailPriority.Normal);
                
                return Json(new { status = true, message = "Se notificó al responsable correctamente" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult ListaLocalesXDistrito(String distrito)
        {
            int distritoId = Int32.Parse(distrito);

            if (distritoId == 0)
            {
                var locales = (db.tb_local.OrderBy(a => a.nombre)
                             .Select(c => new { Id = c.id, Nombre = c.nombre, idDistrito = c.distritoId })).ToList();

                return Json(locales, JsonRequestBehavior.AllowGet);
            }
            else { 

            var locales = (db.tb_local.OrderBy(a => a.nombre)
                             .Select(c => new { Id = c.id, Nombre = c.nombre, idDistrito = c.distritoId })).Where(x => x.idDistrito == distritoId).ToList();

            return Json(locales, JsonRequestBehavior.AllowGet);

            }
        }
    }
}
