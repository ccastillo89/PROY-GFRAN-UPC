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
    
    public partial class ReporteEvaluacion
    {
        public int Id { get; set; }
        public int SolicitudId { get; set; }
        public Nullable<System.DateTime> FechaReporte { get; set; }
        public string ResultadoEjercicio { get; set; }
        public string ErroresEncontrados { get; set; }
        public int AuditoriaUC { get; set; }
        public Nullable<int> AuditoriaUM { get; set; }
        public System.DateTime AuditoriaFC { get; set; }
        public Nullable<System.DateTime> AuditoriaFM { get; set; }
    
        public virtual Solicitud Solicitud { get; set; }
    }
}
