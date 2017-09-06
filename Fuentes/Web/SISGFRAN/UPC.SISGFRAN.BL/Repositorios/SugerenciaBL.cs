using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class SugerenciaBL
    {
        public List<SugerenciaEL> GetSugerencias(String cboDistrito, String cboLocal, String dtpInicio, String dtpFin)
        {
            return new SugerenciaDA().GetSugerencia(cboDistrito, cboLocal, dtpInicio, dtpFin);
        }
    }
}
        public List<SugerenciaEL> GetSugerenciaEvaluada(int evalProcDetId)
        {
            return new SugerenciaDA().GetSugerenciaEvaluada(evalProcDetId);
        }
