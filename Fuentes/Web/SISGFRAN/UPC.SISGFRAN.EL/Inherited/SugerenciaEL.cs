using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class SugerenciaEL : BaseEL
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public DateTime Fecha { get; set; }
        public EvaluacionProcedimientoDetEL EvalProcDet { get; set; }
        public LocalEL Local { get; set; }
        public EmpleadoEL Empleado { get; set; }
        public ProcedimientoEL Procedimiento { get; set; }
        public ParametroEL Estado { get; set; }
    }
}
