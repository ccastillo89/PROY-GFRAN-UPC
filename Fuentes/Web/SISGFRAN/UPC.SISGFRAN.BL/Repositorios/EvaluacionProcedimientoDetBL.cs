using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class EvaluacionProcedimientoDetBL
    {

        private static EvaluacionProcedimientoDetBL instance = null;

        protected EvaluacionProcedimientoDetBL() { }

        public static EvaluacionProcedimientoDetBL Instance
        { 
            get
            {
                if (instance == null)
                    instance = new EvaluacionProcedimientoDetBL();

                return instance;
            }     
        }

        public List<EvaluacionProcedimientoDetEL> GetEvaluacionProcDet(int evalProcId)
        {
            return new EvaluacionProcedimientoDetDA().GetEvaluacionProcDet(evalProcId);
        }

    }
}
