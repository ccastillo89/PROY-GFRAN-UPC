using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;
using UPC.SISGFRAN.EL.NonInherited;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class EvaluacionProcedimientoEL : BaseEL
    {
        public int Id { get; set; }
        public string Periodo { get; set; }
        public LocalEL Local { get; set; }
        public string Comentario { get; set; }
        public ParametroEL Estado { get; set; }
        public int UsuarioId { get; set; }
        public int CantSugerencia { get; set; }
        public int CantReclamos { get; set; }
        public int ProcedimientoId { get; set; }

        public List<EvaluacionProcedimientoDetEL> ListaDetalle { get; set; }

        //Lista Paginada
        public ListaPaginada<EvaluacionProcedimientoEL> Lista { get; set; }
    }
}
