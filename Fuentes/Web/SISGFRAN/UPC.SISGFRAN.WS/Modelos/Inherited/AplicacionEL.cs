using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.WS.Modelos.Base;
using UPC.SISGFRAN.WS.Modelos.NonInherited;

namespace UPC.SISGFRAN.WS.Modelos.Inherited
{
    public class AplicacionEL : BaseEL
    {
        public int Id { get; set; }
        public ParametroEL TipoAplicacion { get; set; }
        public string Descripcion { get; set; }
        public int Estado { get; set; }
    }
}
