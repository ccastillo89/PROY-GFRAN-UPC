//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UPC.SISGFRAN.Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_evaluacionProcedimiento
    {
        public tb_evaluacionProcedimiento()
        {
            this.tb_evaluacionProcedimientoDetalle = new HashSet<tb_evaluacionProcedimientoDetalle>();
        }
    
        public int Id { get; set; }
        public string Periodo { get; set; }
        public Nullable<int> LocalId { get; set; }
        public string Comentario { get; set; }
        public Nullable<int> Estado { get; set; }
        public int AuditoriaUC { get; set; }
        public Nullable<int> AuditoriaUM { get; set; }
        public System.DateTime AuditoriaFC { get; set; }
        public Nullable<System.DateTime> AuditoriaFM { get; set; }
    
        public virtual tb_local tb_local { get; set; }
        public virtual ICollection<tb_evaluacionProcedimientoDetalle> tb_evaluacionProcedimientoDetalle { get; set; }
    }
}
