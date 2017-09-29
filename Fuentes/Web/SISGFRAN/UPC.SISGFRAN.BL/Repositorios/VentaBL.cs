using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class VentaBL
    {
        public List<VentaEL> GetVentasxLocal(int local, int periodo)
        {
            return new VentaDA().GetVentasxLocal(local, periodo);
        }

        public List<VentaEL> GetVentasHistorico(int local, int periodo)
        {
            return new VentaDA().GetVentasHistorico(local, periodo);
        }
    }
}
