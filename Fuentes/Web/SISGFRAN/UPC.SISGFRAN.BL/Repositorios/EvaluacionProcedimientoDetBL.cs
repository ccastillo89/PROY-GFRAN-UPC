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

        public List<EvaluacionProcedimientoDetEL> GetEvaluacionProcDet(int evalProcId)
        {
            return new EvaluacionProcedimientoDetDA().GetEvaluacionProcDet(evalProcId);
        }

    }
}
