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
    public class AuditarVentaController : PdfViewController
    {

        private PARDOSDBEntities db = new PARDOSDBEntities();

        public ActionResult Index()
        {
            return View();
        }

        #region "Metodos"

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        public JsonResult ListaPeriodo()
        {
            List<ParametroEL> result = new List<ParametroEL>();
            string sAnioInicio = DateTime.Now.Year.ToString();
            int iAnioInicio = Convert.ToInt32(sAnioInicio);
            DateTime startDate = new DateTime(iAnioInicio, 1, 1);
            DateTime endDate = new DateTime();
            endDate = DateTime.Now;
            DateTime temp = startDate;
            endDate = new DateTime(endDate.AddYears(1).Year, endDate.Month, DateTime.DaysInMonth(endDate.Year, endDate.Month));
            string strPeriodo = string.Empty;
            while (temp <= endDate)
            {
                strPeriodo = (string.Format("{0}", temp.Year));
                temp = temp.AddYears(1);
                ParametroEL oParam = new ParametroEL() { Nombre = strPeriodo };
                result.Add(oParam);
            }

            return Json(result.ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult Auditar(string franquicia, string local, string periodo)
        {
            try
            {
                AuditarVentaEL reporte = DataPrueba();
                //TODO:: Aqui toda la logica del NEG.

                return Json(reporte, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult ListaLocalesXFranquicia(String franquicia)
        {
            int franquiciaId = Int32.Parse(franquicia);

            if (franquiciaId == -1)
            {
                var locales = (db.tb_local.OrderBy(a => a.nombre)
                             .Select(c => new { Id = c.id, Nombre = c.nombre, idFranquicia = c.franquiciaId })).ToList();

                return Json(locales, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var locales = (db.tb_local.OrderBy(a => a.nombre)
                                 .Select(c => new { Id = c.id, Nombre = c.nombre, idFranquicia = c.franquiciaId })).Where(x => x.idFranquicia == franquiciaId).ToList();

                return Json(locales, JsonRequestBehavior.AllowGet);

            }
        }

        public JsonResult ListaFranquicias()
        {
            var distritos = (db.tb_franquicia.OrderBy(a => a.Nombre)
                             .Select(c => new { Id = c.Id, Nombre = c.Nombre })).ToList();

            return Json(distritos, JsonRequestBehavior.AllowGet);
        }

        private AuditarVentaEL DataPrueba() { 
            AuditarVentaEL data = new AuditarVentaEL();
            List<Grafico> lista = new List<Grafico>();

            Grafico g1 = new Grafico(){ label= "Ene" , value ="100"};
            lista.Add(g1);
            Grafico g2 = new Grafico() { label = "Feb", value = "200" };
            lista.Add(g2);
            Grafico g3 = new Grafico() { label = "Mar", value = "300" };
            lista.Add(g3);
            Grafico g4 = new Grafico() { label = "Abr", value = "400" };
            lista.Add(g4);
            Grafico g5 = new Grafico() { label = "May", value = "500" };
            lista.Add(g5);
            Grafico g6 = new Grafico() { label = "Jun", value = "600" };
            lista.Add(g6);
            Grafico g7 = new Grafico() { label = "Jul", value = "700" };
            lista.Add(g7);
            Grafico g8 = new Grafico() { label = "Ago", value = "800" };
            lista.Add(g8);
            Grafico g9 = new Grafico() { label = "Sep", value = "900" };
            lista.Add(g9);
            Grafico g10 = new Grafico() { label = "Oct", value = "1000" };
            lista.Add(g10);
            Grafico g11 = new Grafico() { label = "Nov", value = "1100" };
            lista.Add(g11);
            Grafico g12 = new Grafico() { label = "Dic", value = "1200" };
            lista.Add(g12);

            data.Pronostico = "15000";
            data.Quota = "500";
            data.Mensaje = "ALCANZO LA QUOTA OBJETIVO";
            data.Mad = "150";
            data.ListaGrafico = lista;

            return data;
        }

        #endregion
    }
}