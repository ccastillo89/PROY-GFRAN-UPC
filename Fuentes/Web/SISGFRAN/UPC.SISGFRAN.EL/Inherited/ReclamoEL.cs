using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class ReclamoEL : BaseEL
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public DateTime Fecha { get; set; }
        public LocalEL Local { get; set; }
        public ParametroEL Estado { get; set; }
        public ProcedimientoEL Procedimiento { get; set; }
        public EvaluacionProcedimientoDetEL EvalProceDetalle { get; set; }
    }
}
