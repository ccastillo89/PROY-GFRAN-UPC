using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPC.SISGFRAN.WS.Comun
{
    public class Constantes
    {
        public static string servidorSeg = ConfigurationManager.AppSettings["ServidorSeguridadWS"];
        public static string puertoSeg = ConfigurationManager.AppSettings["PuertoSeguridadWS"];

        public static string CodigoAplicacion = ConfigurationManager.AppSettings["CodAplicacion"];
    }
}
