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
using UPC.SISGFRAN.Web.Helper;
using UPC.SISGFRAN.Web.Helper.PdfReportGenerator;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitanteController : PdfViewController
    {
        #region "Variables globales"
        SolicitanteBL solicitanteBL = new SolicitanteBL();
        #endregion

        public ActionResult Index(int page = 1, int pageSize = 10, string sort = "FechaSolicitud", string sortdir = "asc")
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

        

        public ActionResult EvaluacionSolicitante(String hddCodSolicitud)
        {
            DeudorBL deudorBL = new DeudorBL();

            DeudorEL deudor = deudorBL.ConsultaSBS("45792116");

            CreditoBancario creditoBancario = new CreditoBancario();

            metodoSetear(creditoBancario, deudor);

            return View(creditoBancario);


        }

        public void metodoSetear(CreditoBancario creditoBancario, DeudorEL deudor)
        {
            creditoBancario.NombreCompleto = deudor.ApellidoPaterno + " " + deudor.ApellidoMaterno + ", " + deudor.Nombres;
            creditoBancario.NumeroDocumento = deudor.NumeroDocumento;
            creditoBancario.FechaNacimiento = deudor.FechaNacimiento;

            List <CreditoBancarioDetalle> detalleCredito = new List<CreditoBancarioDetalle>();
            
            foreach (DeudaDetalleEL s in deudor.DeudaDetalle){
                CreditoBancarioDetalle creditoDetalle = new CreditoBancarioDetalle();
                creditoDetalle.Calificacion = s.Calificacion;
                creditoDetalle.Capital = s.Capital;
                creditoDetalle.CodCalificacion = s.CodCalificacion;
                creditoDetalle.CodEstadoProducto = s.CodEstadoProducto;
                creditoDetalle.CodFrecuenciaPago=s.CodFrecuenciaPago;
                creditoDetalle.CodTipoProducto = s.CodTipoProducto;
                creditoDetalle.DeudaTotal = s.DeudaTotal;
                creditoDetalle.EntidadFinanciera = s.EntidadFinanciera;
                creditoDetalle.EstadoProducto = s.EstadoProducto;
                creditoDetalle.Id = s.Id;
                creditoDetalle.Intereses = s.Intereses;
                creditoDetalle.NumeroProducto = s.NumeroProducto;
                creditoDetalle.FrecuenciaPago = s.FrecuenciaPago;
                creditoDetalle.TipoProducto = s.TipoProducto;
                detalleCredito.Add(creditoDetalle);
            }
            creditoBancario.CreditoBancarioDetalle = detalleCredito;
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

        public JsonResult EvaluacionCredito(string solicitante)
        {
            try
            {
                int idSolicitud = Convert.ToInt32(solicitante);
                SolicitudEL oSolicitante;

                //Obtener datos de la solicitud a Evaluar
                oSolicitante = solicitanteBL.GetSolicitante(idSolicitud);
                string strRiesgo;
                strRiesgo = CalcularRiesgoEco(oSolicitante.NumeroDocumento);

                return Json(new { status = true, message = "", nombre = oSolicitante.Solicitante.NombreCompleto, capital = oSolicitante.MontoCapital, riesgo = strRiesgo }, JsonRequestBehavior.AllowGet);
 
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        private string CalcularRiesgoEco(string dni)
        {
            string resultado = "";
            switch (dni)
            {
                case "45792117": resultado = "Bajo riesgo, No reporta información de deudas"; break;
                case "40404548": resultado = "Mediano Riesgo, Deudas con poco atraso"; break;
                case "10444478981": resultado = "Alto Riesgo, Deudas con atraso significativo"; break;
                case "10445278981": resultado = "Mínimo Riesgo, Sin deudas vencidas"; break;
                case "65523322": resultado = "Bajo riesgo, No reporta información de deudas"; break;
                default:
                    break;
            }
            return resultado;
        }

        #endregion

    }
}