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
        private static EvaluacionProcedimientoBL instance = null;

        protected EvaluacionProcedimientoBL() { }

        public static EvaluacionProcedimientoBL Instance
        { 
            get
            {
                if (instance == null)
                    instance = new EvaluacionProcedimientoBL();

                return instance;
            }     
        }

        public List<EvaluacionProcedimientoEL> GetEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().GetEvaluacionProc(evalProc);
        }

        public EvaluacionProcedimientoEL RegistrarEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {
            return new EvaluacionProcedimientoDA().RegistrarEvaluacionProc(evalProc);
        }

        public EvaluacionProcedimientoEL GetEvaluacionProcById(int evalProcId)
        {
            return new EvaluacionProcedimientoDA().GetEvaluacionProcById(evalProcId);
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
