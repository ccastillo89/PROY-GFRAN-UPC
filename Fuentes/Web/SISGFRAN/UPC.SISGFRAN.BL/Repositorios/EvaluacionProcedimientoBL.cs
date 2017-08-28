using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class EvaluacionProcedimientoBL
    {

        public List<EvaluacionProcedimientoEL> GetEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().GetEvaluacionProc(evalProc);
        }

        public EvaluacionProcedimientoEL RegistrarEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().RegistrarEvaluacionProc(evalProc);
        }

        public List<EvaluacionProcedimientoEL> GetEvaluacionProcGrafico(int evalProcId)
        {
            return new EvaluacionProcedimientoDA().GetEvaluacionProcGrafico(evalProcId);
        }

        public EvaluacionProcedimientoEL ActualizarEstado(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().ActualizarEstado(evalProc);
        }

        public EvaluacionProcedimientoEL ActualizarComentario(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().ActualizarComentario(evalProc);
        }

    }
}
