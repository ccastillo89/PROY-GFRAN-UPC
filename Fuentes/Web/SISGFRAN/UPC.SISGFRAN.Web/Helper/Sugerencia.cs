using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UPC.SISGFRAN.Web.Helper
{
    public class Sugerencia
    {
        public int idSugerencia { get; set; }
        public string detalleSugerencia { get; set; }

        public string responsableLocal { get; set; }

        public string fechaIngreso { get; set; }
    }
}