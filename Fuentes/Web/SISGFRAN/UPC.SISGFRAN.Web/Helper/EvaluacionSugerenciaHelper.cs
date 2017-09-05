using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UPC.SISGFRAN.Web.Helper
{
    public class EvaluacionSugerenciaHelper
    {
        public string nombre_distrito { get; set; }
        public string nombre_local { get; set; }
        public string fecha_inicio { get; set; }
        public string fecha_fin { get; set; }
        public string descripcion_evaluacion { get; set; }

        public List<DetalleEvaluacionsugerencia> DetalleEvaluacionsugerencia { get; set; }

    }
}