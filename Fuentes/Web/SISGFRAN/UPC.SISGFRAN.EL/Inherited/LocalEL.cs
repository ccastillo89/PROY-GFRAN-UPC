using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class LocalEL : BaseEL
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public DateTime FechaApertura { get; set; }
        public string Responsable { get; set; }
        public DistritoEL Distrito { get; set; }
        public string Direccion { get; set; }
        public string Latitud { get; set; }
        public string Longitud { get; set; }

    }
}
