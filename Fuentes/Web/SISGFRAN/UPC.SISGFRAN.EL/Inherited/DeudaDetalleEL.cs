using UPC.SISGFRAN.EL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class DeudaDetalleEL : BaseEL
    {
        public int Id { get; set; }
        public string EntidadFinanciera { get; set; }
        public string NumeroProducto { get; set; }
        public int CodTipoProducto { get; set; }
        public string TipoProducto { get; set; }
        public int CodEstadoProducto { get; set; }
        public string EstadoProducto { get; set; }
        public int CodCalificacion { get; set; }
        public string Calificacion { get; set; }
        public string Capital { get; set; }
        public string Intereses { get; set; }
        public string DeudaTotal { get; set; }
        public int CodFrecuenciaPago { get; set; }
        public string FrecuenciaPago { get; set; }
    }
}
