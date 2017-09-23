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
        SugerenciaBL sugerenciaBL = new SugerenciaBL();

        private PARDOSDBEntities db = new PARDOSDBEntities();

        public ActionResult Index()
        {
            return View("~/views/AuditarVenta/Index.cshtml");
        }

        public JsonResult ListaFranquicias()
        {
            var distritos = (db.tb_franquicia.OrderBy(a => a.Nombre)
                             .Select(c => new { Id = c.Id, Nombre = c.Nombre })).ToList();

            return Json(distritos, JsonRequestBehavior.AllowGet);
        }

        #region "Metodos"

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        public JsonResult ListaPeriodo()
        {
            List<ParametroEL> result = new List<ParametroEL>();
            string sAnioInicio = "2013";
            int iAnioInicio = Convert.ToInt32(sAnioInicio);
            DateTime startDate = new DateTime(iAnioInicio, 1, 1);
            DateTime endDate = new DateTime();
            endDate = DateTime.Now;
            DateTime temp = startDate;
            endDate = new DateTime(endDate.Year, endDate.Month, DateTime.DaysInMonth(endDate.Year, endDate.Month));
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
                AuditarVentaEL reporte = new AuditarVentaEL();

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
        #endregion
    }
}