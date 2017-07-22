using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPC.SISGFRAN.WS.Repositorios
{
    public class EvaluadorWS
    {

        public bool EvaluarSolicitud(int id)
        {
            if (id >4)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}
