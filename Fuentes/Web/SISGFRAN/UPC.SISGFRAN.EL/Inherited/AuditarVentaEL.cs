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
    }
}
