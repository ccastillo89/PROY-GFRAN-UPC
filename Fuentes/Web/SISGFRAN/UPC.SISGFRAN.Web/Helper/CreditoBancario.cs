using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UPC.SISGFRAN.Web.Helper
{
    public class CreditoBancario
    {
        public int Id { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string Nombres { get; set; }
        public string NumeroDocumento { get; set; }
        public string CodigoSBS { get; set; }
        public string FechaNacimiento { get; set; }
        public string UbigeoNac { get; set; }
        public string FechaEmision { get; set; }
        public string PeriodoReportado { get; set; }

        public string direccion { get; set; }

        public string sexo  { get; set; }

        public string departamento { get; set; }
        public string NombreCompleto { get; set; }

        public string provincia { get; set; }
        public string distrito { get; set; }
        public List<CreditoBancarioDetalle> CreditoBancarioDetalle { get; set; }

        public string montoCapital { get; set; }

        public int numeroEntidades { get; set; }

        public string sumaDeuda { get; set; }
        public string ingresos { get; set; }
        public string gastos { get; set; }

        public string estadoCivil { get; set; }
    }
}