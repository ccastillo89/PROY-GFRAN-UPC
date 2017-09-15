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

        public ActionResult AuditarVenta(String cboFranquicia, String dtpAño)
        {
            return View("~/views/AuditarVenta/Index.cshtml");
        }

        public ActionResult Cancelar()
        {
            return View("~/views/AuditarVenta/Index.cshtml");
        }
    }
}