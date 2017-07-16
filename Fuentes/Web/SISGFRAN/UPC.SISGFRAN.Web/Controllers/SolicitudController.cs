using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UPC.SISGFRAN.Web.Helper;
using UPC.SISGFRAN.EL.Comunes;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitudController : Controller
    {
        #region "Variables globales"
        SolicitudBL solicitudBL = new SolicitudBL();
        #endregion

        //
        // GET: /Solicitud/
        public ActionResult Index(int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            SolicitudEL records = new SolicitudEL();
            ListaPaginada<SolicitudEL> listaContentSolicitud = new ListaPaginada<SolicitudEL>();
            
            List<SolicitudEL> listSolicitudesPendientes = solicitudBL.GetSolicitudesPendientes();

            listaContentSolicitud.Content = listSolicitudesPendientes
                        .OrderBy(sort + " " + sortdir)
                        .Skip((page - 1) * pageSize)
                        .Take(pageSize)
                        .ToList();

            // Count
            listaContentSolicitud.TotalRecords = listSolicitudesPendientes.Count();
            listaContentSolicitud.CurrentPage = page;
            listaContentSolicitud.PageSize = pageSize;

            records.ListaSolicitudes = listaContentSolicitud;
            return View(records);
        }

        [HttpGet]
        public ActionResult BuscarSolicitud(string desc = null, int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            try
            {
                SolicitudEL records = new SolicitudEL();
                desc = (desc == null ? "" : desc);
                ViewBag.desc = desc;

                ListaPaginada<SolicitudEL> listaContentSolicitud = new ListaPaginada<SolicitudEL>();

                List<SolicitudEL> listSolicitudesPendientes = solicitudBL.GetSolicitudesPendientes();

                listaContentSolicitud.Content = listSolicitudesPendientes
                            .OrderBy(sort + " " + sortdir)
                            .Skip((page - 1) * pageSize)
                            .Take(pageSize)
                            .ToList();

                // Count
                listaContentSolicitud.TotalRecords = listSolicitudesPendientes.Count();
                listaContentSolicitud.CurrentPage = page;
                listaContentSolicitud.PageSize = pageSize;

                records.ListaSolicitudes = listaContentSolicitud;
                return PartialView("_Solicitud", records);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        #region Metodos

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }
 
        #endregion

	}
}