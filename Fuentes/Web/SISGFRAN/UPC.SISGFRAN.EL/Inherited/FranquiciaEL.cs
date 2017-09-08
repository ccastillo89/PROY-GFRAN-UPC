using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using System.ComponentModel.DataAnnotations;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class FranquiciaEL : BaseEL
    {
        public int Id { get; set; }
        [Display(Name = "Franquicia")]
        public string Nombre { get; set; }
        public string QuotaObjetivo { get; set; }
    }
}
