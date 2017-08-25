using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UPC.SISGFRAN.Web.Helper
{
    public class CreditoBancario
    {
        public String nombreBanco { get; set; }

        public String numeroProducto { get; set; }

        public String tipoProducto { get; set; }

        public String estado { get; set; }

        public String saldoCredito { get; set; }

        public String saldoActual { get; set; }

        public String fechaPago { get; set; }

        public String formaPago { get; set; }

        public String comportamiento { get; set; }

        public String bancario { get; set; }
    }
}