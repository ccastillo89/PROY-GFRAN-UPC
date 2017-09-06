using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Linq.Dynamic;
using System.Text;
using System.Web;
using System.Web.Mvc;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.EL.NonInherited;
using UPC.SISGFRAN.Web.Helper;
using UPC.SISGFRAN.Web.Helper.Mail;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class ProcedimientoController : Controller
    {
        private EvaluacionProcedimientoBL evaluacionBL;

        //
        // GET: /Procedimiento/
        public ActionResult Index(int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            var records = new EvaluacionProcedimientoEL();

            ParametroEL oEstado = new ParametroEL() { Codigo = -1};
            LocalEL oLocal = new LocalEL() { Id = -1 , Usuario = SesionUsuario.Usuario};
            EvaluacionProcedimientoEL oConsulta = new EvaluacionProcedimientoEL() {
                Id = -1,
                Periodo = "",
                Local = oLocal,
                Estado = oEstado
            };

            evaluacionBL = new EvaluacionProcedimientoBL();
            List<EvaluacionProcedimientoEL> listaEvaluaciones = evaluacionBL.GetEvaluacionProc(oConsulta);
            ListaPaginada<EvaluacionProcedimientoEL> listaContentEval = new ListaPaginada<EvaluacionProcedimientoEL>();

            listaContentEval.Content = listaEvaluaciones
                        .OrderBy(sort + " " + sortdir)
                        .Skip((page - 1) * pageSize)
                        .Take(pageSize)
                        .ToList();

            // Count
            listaContentEval.TotalRecords = listaEvaluaciones.Count();
            listaContentEval.CurrentPage = page;
            listaContentEval.PageSize = pageSize;

            records.Lista = listaContentEval;

            return View(records);

        }

        [HttpGet]
        public ActionResult Buscar(string periodo = null, string franquicia = null, string estado = null, int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            try
            {
                var records = new EvaluacionProcedimientoEL();
                int franquiciaId = 0, estadoId = 0;

                int.TryParse(franquicia, NumberStyles.Integer, NumberFormatInfo.CurrentInfo, out franquiciaId);
                int.TryParse(estado, NumberStyles.Integer, NumberFormatInfo.CurrentInfo, out estadoId);

                int usuarioId = 0;
                if (SesionUsuario.Usuario.Perfil.Id == 1)
                {
                    usuarioId = -1;
                }
                else
                {
                    usuarioId = SesionUsuario.Usuario.Id;
                }

                UsuarioEL oUsuario = new UsuarioEL() { Id = usuarioId };
                ParametroEL oEstado = new ParametroEL() { Codigo = estadoId };
                LocalEL oLocal = new LocalEL() { Id = franquiciaId, Usuario = oUsuario };
                EvaluacionProcedimientoEL oConsulta = new EvaluacionProcedimientoEL()
                {
                    Id = -1,
                    Periodo = periodo,
                    Local = oLocal,
                    Estado = oEstado
                };

                evaluacionBL = new EvaluacionProcedimientoBL();
                List<EvaluacionProcedimientoEL> listaEvaluaciones = evaluacionBL.GetEvaluacionProc(oConsulta);
                ListaPaginada<EvaluacionProcedimientoEL> listaContentEval = new ListaPaginada<EvaluacionProcedimientoEL>();

                listaContentEval.Content = listaEvaluaciones
                            .OrderBy(sort + " " + sortdir)
                            .Skip((page - 1) * pageSize)
                            .Take(pageSize)
                            .ToList();

                // Count
                listaContentEval.TotalRecords = listaEvaluaciones.Count();
                listaContentEval.CurrentPage = page;
                listaContentEval.PageSize = pageSize;

                records.Lista = listaContentEval;

                return PartialView("_Procedimientos", records);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult Evaluar()
        {
            EvaluacionProcedimientoEL oEvalProc = new EvaluacionProcedimientoEL();
            try
            {
                return PartialView("_Evaluar", oEvalProc);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult Evaluar(EvaluacionProcedimientoEL evaluacion, string cboPeriodoModal, string cboFranquiciaModal, string cboProcedimiento)
        {
            try
            {
                string strPeriodo = ""; 
                int iFranquicia = 0, iProcedimiento = 0;

                if (string.IsNullOrEmpty(cboPeriodoModal) || cboPeriodoModal == "0")
                {
                    return Json(new { status = false, message = "Seleccione el periodo", JsonRequestBehavior.AllowGet });
                }

                if (cboFranquiciaModal == null || cboFranquiciaModal == "0")
                {
                    return Json(new { status = false, message = "Seleccione franquicia", JsonRequestBehavior.AllowGet });
                }

                strPeriodo = cboPeriodoModal;
                int.TryParse(cboFranquiciaModal, out iFranquicia);
                int.TryParse(cboProcedimiento, out iProcedimiento);

                EvaluacionProcedimientoEL evaluacionRegistrada = null;
                EvaluacionProcedimientoBL oEvalProcBL = new EvaluacionProcedimientoBL();

                LocalEL oLocal = new LocalEL()
                {
                    Id = iFranquicia
                };

                evaluacion.Periodo = strPeriodo;
                evaluacion.Local = oLocal;
                evaluacion.ProcedimientoId = iProcedimiento;
                evaluacion.UsuarioCreacion = SesionUsuario.Usuario.Id;

                evaluacionRegistrada = oEvalProcBL.RegistrarEvaluacionProc(evaluacion);

                if (evaluacionRegistrada.Id > 0)
                {
                    TempData["msg"] = "Procesado exitosamente";
                    return Json(new { status = true, page = "/Procedimiento/Reporte/" + evaluacionRegistrada.Id.ToString(), JsonRequestBehavior.AllowGet });
                }

                return Json(new { status = false, message = evaluacionRegistrada.MessageErr, JsonRequestBehavior.AllowGet });
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString(), JsonRequestBehavior.AllowGet });
            }
        }

        [HttpGet]
        public ActionResult Reporte(string id = null)
        {
            EvaluacionProcedimientoEL oEvalProcEL = null;
            List<EvaluacionProcedimientoDetEL> listaDetalle = null;
            List<EvaluacionProcedimientoEL> listaGrafico = null;

            ReporteEvaluacionEL reporteEvaluacionEL = null;

            EvaluacionProcedimientoBL oEvalProceBL = new EvaluacionProcedimientoBL();
            EvaluacionProcedimientoDetBL oEvalProceDetBL = new EvaluacionProcedimientoDetBL();

            try
            {
                if (id == null || string.IsNullOrEmpty(id))
                {
                    return Json(new { status = false, message = "Reporte no encontrado", JsonRequestBehavior.AllowGet });
                }

                int iEvaluacion = 0;
                int.TryParse(id, out iEvaluacion);

                oEvalProcEL = oEvalProceBL.GetEvaluacionProcById(iEvaluacion);
                listaDetalle = oEvalProceDetBL.GetEvaluacionProcDet(iEvaluacion);
                listaGrafico = oEvalProceBL.GetEvaluacionProcGrafico(iEvaluacion);

                reporteEvaluacionEL = new ReporteEvaluacionEL() {
                    EvaluacionPro = oEvalProcEL,
                    EvaluacionDetalle = listaDetalle,
                    EvaluacionProGrafico = listaGrafico
                };

                return View("Reporte", reporteEvaluacionEL);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
            finally 
            {
                oEvalProceBL = null;
                oEvalProceDetBL = null;
            }
        }

        [HttpGet]
        public ActionResult EnviarCorreo(string id, string correo, string periodo, string resp, string fecha)
        {
            try
            {
                int idEval = Convert.ToInt32(id);
                evaluacionBL = new EvaluacionProcedimientoBL();
                ParametroEL oEstado = new ParametroEL(){ 
                    Codigo = 2 //Notificado
                };

                EvaluacionProcedimientoEL oActualiza = new EvaluacionProcedimientoEL()
                {
                    Id = idEval,
                    UsuarioId = SesionUsuario.Usuario.Id,
                    Estado = oEstado
                };

                EvaluacionProcedimientoEL oEvaluacionEL = evaluacionBL.ActualizarEstado(oActualiza);

                // Configurar envio de correo
                string subject = string.Format("{0}-{1}: {2}", "[Pardos Chicken]", ConfigurationManager.AppSettings.Get("AsuntoMailEvalPro"), periodo);
                string mailFrom = ConfigurationManager.AppSettings.Get("MailEmisor");
                string passwordMailEmisor = ConfigurationManager.AppSettings.Get("PasswordMailEmisor");
                StringBuilder buffer = new StringBuilder();
                buffer.Append("Estimado <b>{0}</b> <br /><br />");
                buffer.Append(" Es grato saludarlo e informarle que la dirección central de Pardos Chicken ha realizado la evaluación del desempeño de los procdimientos de su local, publicándose los resultados en la intranet. Favor de acceder al sistema para visualizar sus resultados y recomendaciones/observaciones. <br /><br />");
                buffer.Append(" Periodo:" + periodo + " <br/>");
                buffer.Append(" Fecha evaluación:" + fecha + "<br/><br/>");
                buffer.Append("<br/><br/>");
                buffer.Append(" Saludos cordiales. <br/><br/>");
                buffer.Append("<i> Nota: Por favor no responda este correo. <i>");

                MailHelper.SendMail(mailFrom, passwordMailEmisor, correo, subject, string.Format(buffer.ToString(), resp), true, System.Net.Mail.MailPriority.Normal);

                return Json(new { status = true, message = "Se notificó al responsable correctamente" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult Reclamo(string id = null, int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            ReporteEvaluacionEL reporteEL = null;
            ReclamoBL oReclamoBL = new ReclamoBL();
            ListaPaginada<ReclamoEL> listaReclamos = new ListaPaginada<ReclamoEL>();
            List<ReclamoEL> listaContent = null;

            try
            {
                int iEvaluacion = 0;
                int.TryParse(id, out iEvaluacion);

                listaContent = oReclamoBL.GetReclamosEvaluados(iEvaluacion);

                listaReclamos.Content = listaContent
                                        .OrderBy(sort + " " + sortdir)
                                        .Skip((page - 1) * pageSize)
                                        .Take(pageSize)
                                        .ToList();;

                // Count
                listaReclamos.TotalRecords = listaContent.Count();
                listaReclamos.CurrentPage = page;
                listaReclamos.PageSize = pageSize;

                //Nombre de procedimiento
                string procedimiento = listaContent.FirstOrDefault().Procedimiento.Nombre;

                reporteEL = new ReporteEvaluacionEL()
                {
                    Reclamos = listaReclamos,
                    Procedimiento = procedimiento.ToUpper()
                };

                return PartialView("_Reclamo", reporteEL);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
            finally
            {
                oReclamoBL = null;
            }
        }

        [HttpGet]
        public ActionResult Sugerencia(string id = null, int page = 1, int pageSize = 10, string sort = "Id", string sortdir = "DESC")
        {
            ReporteEvaluacionEL reporteEL = null;
            SugerenciaBL oSugerenciaBL = new SugerenciaBL();
            ListaPaginada<SugerenciaEL> listaSugerencia = new ListaPaginada<SugerenciaEL>();
            List<SugerenciaEL> listaContent = null;

            try
            {
                int iEvaluacion = 0;
                int.TryParse(id, out iEvaluacion);

                listaContent = oSugerenciaBL.GetSugerenciaEvaluada(iEvaluacion);

                listaSugerencia.Content = listaContent
                                        .OrderBy(sort + " " + sortdir)
                                        .Skip((page - 1) * pageSize)
                                        .Take(pageSize)
                                        .ToList(); ;

                // Count
                listaSugerencia.TotalRecords = listaContent.Count();
                listaSugerencia.CurrentPage = page;
                listaSugerencia.PageSize = pageSize;

                //Nombre de procedimiento
                string procedimiento = listaContent.FirstOrDefault().Procedimiento.Nombre;

                reporteEL = new ReporteEvaluacionEL()
                {
                    Sugerencias = listaSugerencia,
                    Procedimiento = procedimiento.ToUpper()
                };

                return PartialView("_Sugerencia", reporteEL);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
            finally
            {
                oSugerenciaBL = null;
            }
        }


        #region "Metodos"

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        public JsonResult Grabar(string id, string coment)
        {
            try
            {
                EvaluacionProcedimientoBL oEvalProcBL = new EvaluacionProcedimientoBL();
                EvaluacionProcedimientoEL oEvalProActualizado = null;

                EvaluacionProcedimientoEL oEvalProEL = new EvaluacionProcedimientoEL()
                {
                    Id =Convert.ToInt32(id),
                    Comentario = coment,
                    UsuarioId = SesionUsuario.Usuario.Id
                };

                oEvalProActualizado = oEvalProcBL.ActualizarComentario(oEvalProEL);

                if (oEvalProActualizado.CodeMessage != 0)
                {
                    return Json(new { status = false, message = oEvalProActualizado.MessageErr }, JsonRequestBehavior.AllowGet);
                }
                return Json(new { status = true, message = "Se actualizó el comentario correctamente" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }

        }

        public JsonResult ListaPeriodo()
        {
            List<ParametroEL> result = new List<ParametroEL>();
            string sAnioInicio = ConfigurationManager.AppSettings["AnioInicioPeriodo"];
            int iAnioInicio = Convert.ToInt32(sAnioInicio);
            DateTime startDate = new DateTime(iAnioInicio, 1, 1);
            DateTime endDate = new DateTime();
            endDate = DateTime.Now;
            DateTime temp = startDate;
            endDate = new DateTime (endDate.Year, endDate.Month, DateTime.DaysInMonth(endDate.Year,endDate.Month));
            string strPeriodo = string.Empty;
            while (temp <= endDate)
            {
                string mes = temp.Month.ToString();
                strPeriodo = (string.Format("{0}{1}", temp.Year, mes.PadLeft(2,'0')));
                temp = temp.AddMonths(1);
                ParametroEL oParam = new ParametroEL() { Nombre = strPeriodo};
                result.Add(oParam);
            }

            return Json(result.ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaFranquicia()
        {
            LocalBL oLocal = new LocalBL();
            int usuarioId = 0;

            if (SesionUsuario.Usuario.Perfil.Id != 1)
            {
                usuarioId = SesionUsuario.Usuario.Id;
            }
            else
	        {
                usuarioId = -1;
	        }

            FranquiciaEL oFranquicia = new FranquiciaEL()
            {
                Id = -1,
                Nombre = string.Empty,
                UsuarioCreacion = usuarioId
            };

            return Json(oLocal.GetLocalesXFranquicias(oFranquicia).ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaCondicion()
        {
            ParametroBL oParametroBL = new ParametroBL();
            ParametroEL oParam = new ParametroEL()
            {
                Codigo = 0,
                CodigoGrupo = 10
            };

            return Json(oParametroBL.GetParametros(oParam).ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaProcedimientos()
        {
            ProcedimientoBL oProcedimientoBL = new ProcedimientoBL();
            ProcedimientoEL oProcedimiento = new ProcedimientoEL()
            {
                Id = -1,
                Nombre = string.Empty
            };
            return Json(oProcedimientoBL.GetProcedimientos(oProcedimiento).ToList(), JsonRequestBehavior.AllowGet);
        }

        #endregion
    }
}