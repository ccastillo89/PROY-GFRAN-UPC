﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PARDOSDBEntities : DbContext
    {
        public PARDOSDBEntities()
            : base("name=PARDOSDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Aplicacion> Aplicacion { get; set; }
        public DbSet<Entrevista> Entrevista { get; set; }
        public DbSet<HistorialContrasenia> HistorialContrasenia { get; set; }
        public DbSet<Opcion> Opcion { get; set; }
        public DbSet<Parametro> Parametro { get; set; }
        public DbSet<Perfil> Perfil { get; set; }
        public DbSet<ReporteEvaluacion> ReporteEvaluacion { get; set; }
        public DbSet<Solicitante> Solicitante { get; set; }
        public DbSet<Solicitud> Solicitud { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<Ubigeo> Ubigeo { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<OpcionPerfil> OpcionPerfil { get; set; }
    }
}
