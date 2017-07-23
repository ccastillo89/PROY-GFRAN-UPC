using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.EL.NonInherited;
using UPC.SISGFRAN.Web.Helper.PdfReportGenerator;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitanteController : PdfViewController
    {
        #region "Variables globales"
        SolicitanteBL solicitanteBL = new SolicitanteBL();
        #endregion

        public ActionResult Index(int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            SolicitudEL records = new SolicitudEL();
            ListaPaginada<SolicitudEL> listaContentSolicitante = new ListaPaginada<SolicitudEL>();

            string desc = string.Empty;
            List<SolicitudEL> listSolicitantes = solicitanteBL.GetSolicitantes();

            listaContentSolicitante.Content = listSolicitantes
                        .OrderBy(sort + " " + sortdir)
                        .Skip((page - 1) * pageSize)
                        .Take(pageSize)
                        .ToList();

            // Count
            listaContentSolicitante.TotalRecords = listSolicitantes.Count();
            listaContentSolicitante.CurrentPage = page;
            listaContentSolicitante.PageSize = pageSize;

            records.ListaSolicitudes = listaContentSolicitante;
            return View(records);
        }

        
        public ActionResult EvaluacionCrediticia(int id)
        {
            //ESTE ID QUE SE ESTÁ PASANDO ES DEL SOLICITANTE... AQUÍ DEBERÍA CONECTARSE CON EL SERVICIO
            string titulo = string.Empty;
            int solId = id;
             var a = new SolicitanteBL();
            SolicitanteEL solicitanteEval = a.SetResultadoEvaluacion(id);

            if (solicitanteEval != null)
            {
                //titulo = "Evaluación de la solicitud N° " + solicitudEval.NumSolicitud;
                //FillImageUrl(solicitudEval.ReporteEvaluacion, "logo_pc.jpeg");
                //return this.ViewPdf(titulo, "_ReporteEval", solicitudEval);

                TempData["id"] = id;
                TempData["msg"] = (solicitanteEval.FueAprobado ? "Solicitante Aprobado" : "Solicitante Rechazado");
                return RedirectToAction("Index");
            }
            else
            {
                TempData["msg"] = "No existe evaluación";
                return RedirectToAction("Index");
            }


        }


        public ActionResult RechazarSolicitud(int id)
        {
            var sel = new SolicitanteBL();
            sel.SetResultadoEvaluacion(id, true);

            return RedirectToAction("Index");
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

        #endregion

    }
}