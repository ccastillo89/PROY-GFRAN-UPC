using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class AuditarVentaEL : BaseEL
    {
        public int Id { get; set; }
        public string Periodo { get; set; }
        public decimal Monto { get; set; }


        public string Pronostico { get; set; }
        public string Quota { get; set; }
        public string Mensaje { get; set; }
        public string Mad { get; set; }
        public string MediaMensual { get; set; }

        public List<Grafico> ListaGrafico { get; set; }
    }

    public class Grafico
    {
        public string label { get; set; }
        public string value { get; set; }
        public string color { get; set; }
    }

}
