using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class ProcedimientoEL : BaseEL
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Version { get; set; }
        public decimal Peso { get; set; }
        public ParametroEL Estado { get; set; }
    }
}
