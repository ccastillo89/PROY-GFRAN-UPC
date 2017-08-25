using UPC.SISGFRAN.EL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class DeudorEL : BaseEL
    {
        public int Id { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string Nombres { get; set; }
        public string NumeroDocumento { get; set; }
        public string CodigoSBS { get; set; }
        public string FechaNacimiento { get; set; }
        public string UbigeoNac { get; set; }
        public string FechaEmision { get; set; }
        public string PeriodoReportado { get; set; }
        public List<DeudaDetalleEL> DeudaDetalle { get; set; }
    }
}
