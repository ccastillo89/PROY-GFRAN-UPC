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
    
    public partial class OpcionPerfil
    {
        public int AplicacionId { get; set; }
        public int PerfilId { get; set; }
        public int OpcionId { get; set; }
        public bool Escritura { get; set; }
        public Nullable<int> AuditoriaUC { get; set; }
        public Nullable<int> AuditoriaUM { get; set; }
        public System.DateTime AuditoriaFC { get; set; }
        public Nullable<System.DateTime> AuditoriaFM { get; set; }
    }
}
