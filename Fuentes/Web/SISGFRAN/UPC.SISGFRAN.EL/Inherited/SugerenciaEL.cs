using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class SugerenciaEL : BaseEL
    {
        public int Id { get; set; }
        public LocalEL Local { get; set; }
        public string Comentario { get; set; }
        public DateTime FechaIngreso { get; set; }
        public string Prioridad { get; set; }
        public ListaPaginada<SugerenciaEL> ListaSugerencias { get; set; }

    }
}
