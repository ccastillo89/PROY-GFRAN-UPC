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
    
    public partial class Perfil
    {
        public int Id { get; set; }
        public Nullable<int> AplicacionId { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public Nullable<int> AuditoriaUC { get; set; }
        public Nullable<int> AuditoriaUM { get; set; }
        public System.DateTime AuditoriaFC { get; set; }
        public Nullable<System.DateTime> AuditoriaFM { get; set; }
    }
}