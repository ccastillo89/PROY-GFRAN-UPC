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
using UPC.SISGFRAN.Web.Models;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitanteController : PdfViewController
    {
        #region "Variables globales"
        SolicitanteBL solicitanteBL = new SolicitanteBL();
        #endregion

        private PARDOSDBEntities db = new PARDOSDBEntities();

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



        public ActionResult EvaluacionSolicitante(String hddCodSolicitud, String hddDNI, SolicitudEL solicitudEL)
        {
            DeudorBL deudorBL = new DeudorBL();

            /*Cambiar Aqui*/

            DeudorEL deudor = deudorBL.ConsultaSBS(solicitudEL.NumeroDocumento);
            
            /*Validacion*/
            if ( deudor.NumeroDocumento == null)
            {
                if (deudor.CodeMessage.Equals(-1)){
                ModelState.AddModelError("validacion", "No existe información para el número de documento de consulta. Se procede a rechazar al solicitante.");
                var solicitante = from c in db.Solicitante where c.NumeroDocumento == solicitudEL.NumeroDocumento.Trim() select c;

                Solicitante solicxxx = new Solicitante();

                foreach (Solicitante solicitudd in solicitante)
                {
                    solicxxx = solicitudd;
                    break;
                }

                solicxxx.FueAprobado = false;
                db.Entry(solicxxx).State = System.Data.EntityState.Modified;
                db.SaveChanges();
                }
                else if (deudor.CodeMessage.Equals(-99))
                    ModelState.AddModelError("validacion", deudor.MessageErr);
                else if (!deudor.CodeMessage.Equals(-1))
                    ModelState.AddModelError("validacion", "Se produjo un error en el servicio de consulta créditos. Por favor, intentar nuevamente. Si el error persiste, contacte al equipo de Soporte.");

            int page = 1; int pageSize = 10; string sort = "FechaSolicitud"; string sortdir = "asc";
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

           

            return View("~/views/Solicitante/Index.cshtml", records);
            }   
            CreditoBancario creditoBancario = new CreditoBancario();

            metodoSetear(creditoBancario, deudor);

            return View(creditoBancario);


        }

        public void metodoSetear(CreditoBancario creditoBancario, DeudorEL deudor)
        {
            creditoBancario.NombreCompleto = deudor.ApellidoPaterno + " " + deudor.ApellidoMaterno + ", " + deudor.Nombres;
            creditoBancario.NumeroDocumento = deudor.NumeroDocumento;
            creditoBancario.FechaNacimiento = deudor.FechaNacimiento;
            creditoBancario.CodigoSBS = deudor.CodigoSBS;
           // Solicitante solicitante = db.Solicitante.Find(deudor.NumeroDocumento.Trim());

            var solicitante = from c in db.Solicitante where c.NumeroDocumento == deudor.NumeroDocumento.Trim() select c;
            foreach (Solicitante solicitant in solicitante)
            {
                string estadoCivil = string.Empty;
                int estadoId = (int)solicitant.EstadoCivilId;

                switch (estadoId)
                {
                    case 1: estadoCivil = "SOLTERO"; break;
                    case 2: estadoCivil = "CASADO"; break;
                    case 3: estadoCivil = "DIVORCIADO"; break;
                    case 4: estadoCivil = "VIUDO"; break;
                    default:
                        break;
                }

                creditoBancario.estadoCivil = estadoCivil.ToString();
                creditoBancario.provincia = solicitant.UbigeoDireccion;
                creditoBancario.distrito = solicitant.UbigeoDireccion + " " + solicitant.Direccion;
                creditoBancario.direccion = solicitant.Direccion;
                creditoBancario.FechaNacimiento = solicitant.FechaNacimiento.ToString();
                creditoBancario.gastos = solicitant.MontoGastosMes.ToString();
                creditoBancario.ingresos = solicitant.MontoIngresosMes.ToString();
                creditoBancario.departamento = "Lima";
                if (solicitant.SexoId.Value == 1)
                {
                    creditoBancario.sexo = "Masculino";
                }
                else { creditoBancario.sexo = "Femenino"; }
                break;
            }
            
            List <CreditoBancarioDetalle> detalleCredito = new List<CreditoBancarioDetalle>();
            int contadorEntidadesBancarias = 0;
            Double sumaDeuda = 0.00;
            foreach (DeudaDetalleEL s in deudor.DeudaDetalle){
                CreditoBancarioDetalle creditoDetalle = new CreditoBancarioDetalle();
                contadorEntidadesBancarias++;
                sumaDeuda = sumaDeuda + Double.Parse(s.DeudaTotal);
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
                creditoDetalle.calificacionCliente = asignarComportamiento(creditoDetalle.Calificacion);
                detalleCredito.Add(creditoDetalle);

            }
            creditoBancario.numeroEntidades = contadorEntidadesBancarias;
            /*INICIO MONTO CAPITAL*/
            creditoBancario.sumaDeuda = sumaDeuda.ToString();
            creditoBancario.montoCapital = "20000.00";
            /*FIN MONTO CAPITAL*/
            creditoBancario.CreditoBancarioDetalle = detalleCredito;
        }

        public int asignarComportamiento (String cadena){
            if (cadena.Trim().Equals("PERDIDA"))
                return 1;
            else if (cadena.Trim().Equals("PROBLEMAS POTENCIALES"))
                return 2;
            else if (cadena.Trim().Equals("NORMAL"))
                return 3;
            return 1;
        }

        public ActionResult ResultadoSolicitante(String capitalMensual, String numeroEntidades, String sumaDeuda, String dni)
        {
            ReporteCrediticio reporte = new ReporteCrediticio();

            
            asignarClasifiacione(capitalMensual, numeroEntidades, sumaDeuda, reporte);

            var solicitante = from c in db.Solicitante where c.NumeroDocumento == dni.Trim() select c;

            Solicitante solicxxx = new Solicitante();
 
            foreach (Solicitante solicitudd in solicitante)
            {
                solicxxx = solicitudd;
                break;
            }

            if (reporte.estado.Equals("APROBADO."))
            solicxxx.FueAprobado = true;
            if (reporte.estado.Equals("RECHAZADO."))
                solicxxx.FueAprobado = false;
            db.Entry(solicxxx).State = System.Data.EntityState.Modified;
            db.SaveChanges();
             


            return View(reporte);


        }


        public ReporteCrediticio asignarClasifiacione(String capitalMensual, String numeroEntidades, String sumaDeuda, ReporteCrediticio reporte)
        {
            String categoriaAsignada = "";

            Double capitalMensualV = 0.00;
            capitalMensualV = Double.Parse(capitalMensual);
            int numeroEntidadesV = 0;
            numeroEntidadesV = int.Parse(numeroEntidades);
            Double sumaDeudaV = 0.00;
            sumaDeudaV = Double.Parse(sumaDeuda);

            if (capitalMensualV < 100000)
            {
                reporte.comentario = "La solicitud fue rechazada debido a que su capital mensual es inferior a s/. 100,000.00";
                reporte.estado = "RECHAZADO.";
                reporte.clasificacionCrediticia = "NORMAL";
                reporte.riesgos = "- Capital demasiado bajo. \n\r - Riezgo alto de perdidas.";
            }
            else if (capitalMensualV >= 100000 && numeroEntidadesV <= 1 && sumaDeudaV < capitalMensualV)
            {
                reporte.comentario = "Solicitud aprobado. La suma de sus deudas es inferior a su capital.";
                reporte.estado = "APROBADO.";
                reporte.clasificacionCrediticia = "NORMAL";
                reporte.riesgos = "- Riezgo moderado financiero.";
            }
            else if (capitalMensualV >= 150000 && numeroEntidadesV >= 1 && numeroEntidadesV <= 2 && sumaDeudaV < capitalMensualV)
            {
                reporte.comentario = "Solicitud aprobado. La suma de sus deudas es inferior a su capital.";
                reporte.estado = "APROBADO.";
                reporte.clasificacionCrediticia = "PROBLEMAS POTENCIALES";
                reporte.riesgos = "- Riezgo bajo.";
            }
            else if (capitalMensualV >= 150000 && numeroEntidadesV >= 1 && numeroEntidadesV <= 2 && sumaDeudaV > capitalMensualV)
            {
                reporte.comentario = "Solicitud fue rechazado debido a que si capital mensual es menor a su total de deuda.";
                reporte.estado = "RECHAZADO.";
                reporte.clasificacionCrediticia = "PROBLEMAS POTENCIALES";
                reporte.riesgos = "- Riezgo alto de endeudamiento.";
            }
            else if (capitalMensualV >= 200000 && numeroEntidadesV >= 1 && numeroEntidadesV <= 2 && sumaDeudaV < capitalMensualV)
            {
                reporte.comentario = "Solicitud aprobado. La suma de sus deudas es inferior a su capital.";
                reporte.estado = "APROBADO.";
                reporte.clasificacionCrediticia = "DEFICIENTE";
                reporte.riesgos = "- No se presentan riezgos asociados.";
            }
            else if (capitalMensualV >= 200000 && numeroEntidadesV >= 1 && numeroEntidadesV <= 3 && sumaDeudaV > capitalMensualV)
            {
                reporte.comentario = "Solicitud fue rechazado debido a que el solicitante tiene deuda en 3 a mas entidades bancarias.";
                reporte.estado = "RECHAZADO.";
                reporte.clasificacionCrediticia = "DUDOSO";
                reporte.riesgos = "- Solicitante potencialmente riesgoso. No se recomienda otorgar franquicia.";
            }
            else if ( numeroEntidadesV >= 3 )
            {
                reporte.comentario = "Solicitud rechazada debido a que el solicitante presenta riesgo financiero. ";
                reporte.estado = "RECHAZADO.";
                reporte.clasificacionCrediticia = "PERDIDA";
                reporte.riesgos = "- Solicitante potencialmente riesgoso. No se recomienda otorgar franquicia.";
            }

            reporte.capitalDisponibleMensual = capitalMensualV.ToString();
            
            return reporte;
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