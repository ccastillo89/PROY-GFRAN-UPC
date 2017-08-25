using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPC.SISGFRAN.EL.Comunes
{
    public class Constantes
    {
        public static string servidorSBS = ConfigurationManager.AppSettings["ServidorSBSWS"];
        public static string puertoSBS = ConfigurationManager.AppSettings["PuertoSBSWS"];
        public static string CodigoAplicacion = ConfigurationManager.AppSettings["CodAplicacion"];


        public enum Filtros
        {
            Todos = -1,
            Ninguno = 0
        }

        public enum Estado
        {
            Todos = -1,
            Inactivo = 0,
            Activo = 1
        }

        public enum EstadoSolicitud
        {
            Todos = -1,
            Pendiente = 1,
            Aprobada = 2,
            Rechazada = 3
        }


    }
}
