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
using UPC.SISGFRAN.WS.Repositorios;
using UPC.SISGFRAN.EL.NonInherited;
using UPC.SISGFRAN.Web.Helper.PdfReportGenerator;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitudController : PdfViewController
    {
        #region "Variables globales"
        SolicitudBL solicitudBL = new SolicitudBL();
        EvaluadorWS evaluadorClient = new EvaluadorWS();
        #endregion

        //
        // GET: /Solicitud/
        public ActionResult Index(int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            SolicitudEL records = new SolicitudEL();
            ListaPaginada<SolicitudEL> listaContentSolicitud = new ListaPaginada<SolicitudEL>();

            string desc = string.Empty;
            List<SolicitudEL> listSolicitudesPendientes = solicitudBL.GetSolicitudesPendientes(desc);

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

                List<SolicitudEL> listSolicitudesPendientes = solicitudBL.GetSolicitudesPendientes(desc);

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

        public ActionResult Exportar(int id)
        {
            string titulo = string.Empty;
            int solId = id;
            SolicitudEL solicitudEval = solicitudBL.GetResultadoEvaluacion(solId);

            if (solicitudEval != null)
            {
                titulo = "Evaluación de la solicitud N° " + solicitudEval.NumSolicitud;
                FillImageUrl(solicitudEval.ReporteEvaluacion, "logo_pc.jpeg");
                return this.ViewPdf(titulo, "_ReporteEval", solicitudEval);
            }
            else
            {
                TempData["msg"] = "No existe evaluación";
                return RedirectToAction("Index");
            }
            
        }

        [HttpGet]
        public ActionResult Invitacion(int id)
        {
            return PartialView("_Invitacion");
        }

        #region Metodos

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        private void FillImageUrl(ReporteEvaluacionEL reporte, string imageName)
        {
            string url = string.Format("{0}://{1}{2}", Request.Url.Scheme, Request.Url.Authority, Url.Content("~"));
            reporte.ImageUrl = url + "Content/Images/" + imageName;
        }

        public JsonResult Evaluar(string solicitud)
        {
            try
            {
                bool bOK = false;
                int idSolicitud = Convert.ToInt32(solicitud);

                bOK = evaluadorClient.EvaluarSolicitud(idSolicitud);

                if (bOK) // true
                {
                    return Json(new { status = true, message = "La solicitud de franquicia seleccionada ha sido aprobada." }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { status = false, message = "La solicitud de franquicia seleccionada ha sido rechazada" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }

        }


        #endregion

	}
}