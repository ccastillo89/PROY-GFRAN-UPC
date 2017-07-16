using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Repositorios;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class SolicitudBL
    {
        public List<SolicitudEL> GetSolicitudesPendientes()
        {
            return new SolicitudDA().GetSolicitudesPendientes();
        }

    }
}
