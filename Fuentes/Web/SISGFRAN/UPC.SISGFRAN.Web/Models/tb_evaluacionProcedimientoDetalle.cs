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
    
    public partial class tb_evaluacionProcedimientoDetalle
    {
        public int Id { get; set; }
        public Nullable<int> EvaluacionProcedimientoId { get; set; }
        public Nullable<int> CantidadReclamo { get; set; }
        public Nullable<int> CantidadSugerencia { get; set; }
        public Nullable<decimal> Calificacion { get; set; }
        public int ProcedimientoId { get; set; }
        public int AuditoriaUC { get; set; }
        public Nullable<int> AuditoriaUM { get; set; }
        public System.DateTime AuditoriaFC { get; set; }
        public Nullable<System.DateTime> AuditoriaFM { get; set; }
    
        public virtual tb_evaluacionProcedimiento tb_evaluacionProcedimiento { get; set; }
        public virtual tb_procedimiento tb_procedimiento { get; set; }
    }
}
