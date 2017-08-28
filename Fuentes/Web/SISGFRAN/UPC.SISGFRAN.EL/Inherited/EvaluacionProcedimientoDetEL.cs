using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class EvaluacionProcedimientoDetEL : BaseEL
    {

        public int Id { get; set; }
        public EvaluacionProcedimientoEL EvalProc { get; set; }
        public int CantidadReclamos { get; set; }
        public int CantidadSugerencia { get; set; }
        public decimal Calificacion { get; set; }
        public ProcedimientoEL Procedimiento { get; set; }
        public int UsuarioId { get; set; }

    }
}
