using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class ReporteEvaluacionEL : BaseEL
    {
        public int Id { get; set; }
        public DateTime Fecha { get; set; }
        public string ResultadoEjercicio { get; set; }
        public string ErroresEncontrados { get; set; }

        public string ImageUrl { get; set; }
        public bool Resultado { get; set; }

        #region "Reporte de evaluacion de procedimiento"

        public EvaluacionProcedimientoEL EvaluacionPro { get; set; }
        public List<EvaluacionProcedimientoDetEL> EvaluacionDetalle { get; set; }
        public List<EvaluacionProcedimientoEL> EvaluacionProGrafico { get; set; }

        public string Procedimiento { get; set; }
        public ListaPaginada<ReclamoEL> Reclamos { get; set; }
        public ListaPaginada<SugerenciaEL> Sugerencias { get; set; }

        #endregion
    }
}
