using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class ProcedimientoController : Controller
    {
        private EvaluacionProcedimientoBL evaluacionBL;

        //
        // GET: /Procedimiento/
        public ActionResult Index(int page = 1, int pageSize = 30, string sort = "Id", string sortdir = "DESC")
        {
            var records = new EvaluacionProcedimientoEL();

            ParametroEL oEstado = new ParametroEL() { Codigo = -1};
            LocalEL oLocal = new LocalEL() { Id = -1 };
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


        #region "Metodos"

        public JsonResult ListaPeriodo()
        {
            List<ParametroEL> result = new List<ParametroEL>();
            DateTime startDate = new DateTime(2017, 1, 1);
            DateTime endDate = new DateTime();
            endDate = DateTime.Now;
            DateTime temp = startDate;
            endDate = new DateTime (endDate.Year, endDate.Month, DateTime.DaysInMonth(endDate.Year,endDate.Month));
            string strPeriodo = string.Empty;
            while (temp <= endDate)
            {
                strPeriodo = (string.Format("{0}{1}", temp.Year, temp.Month));
                temp = temp.AddMonths(1);
                ParametroEL oParam = new ParametroEL() { Nombre = strPeriodo};
                result.Add(oParam);
            }

            return Json(result.ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaFranquicia()
        {
            LocalBL oLocal = new LocalBL();
            FranquiciaEL oFranquicia = new FranquiciaEL()
            {
                Id = -1,
                Nombre = string.Empty
            };

            return Json(oLocal.GetLocalesXFranquicias(oFranquicia).ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ListaCondicion()
        {
            ParametroBL oParametroBL = new ParametroBL();
            ParametroEL oParam = new ParametroEL()
            {
                Codigo = -1,
                CodigoGrupo = 10
            };

            return Json(oParametroBL.GetParametros(oParam).ToList(), JsonRequestBehavior.AllowGet);
        }


        #endregion
    }
}