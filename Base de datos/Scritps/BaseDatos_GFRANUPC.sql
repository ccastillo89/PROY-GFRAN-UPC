USE [PARDOSDB]
GO
/****** Object:  StoredProcedure [dbo].[USPU_Solicitud]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPU_Solicitud]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPU_Solicitud]
GO
/****** Object:  StoredProcedure [dbo].[USPS_Usuario]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Usuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[USPS_SolicitudXSolicitante]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_SolicitudXSolicitante]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_SolicitudXSolicitante]
GO
/****** Object:  StoredProcedure [dbo].[USPS_SolicitanteXEvaluar]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_SolicitanteXEvaluar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]
GO
/****** Object:  StoredProcedure [dbo].[USPS_ResultadoEvaluacion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_ResultadoEvaluacion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_ResultadoEvaluacion]
GO
/****** Object:  StoredProcedure [dbo].[USPS_Perfil]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Perfil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_Perfil]
GO
/****** Object:  StoredProcedure [dbo].[USPS_Parametro]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Parametro]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_Parametro]
GO
/****** Object:  StoredProcedure [dbo].[USPS_OpcionXPerfil]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_OpcionXPerfil]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_OpcionXPerfil]
GO
/****** Object:  StoredProcedure [dbo].[USPS_Opcion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Opcion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_Opcion]
GO
/****** Object:  StoredProcedure [dbo].[USPS_Login]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPS_Login]
GO
/****** Object:  StoredProcedure [dbo].[USPI_ResultadoEvaluacion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPI_ResultadoEvaluacion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPI_ResultadoEvaluacion]
GO
/****** Object:  StoredProcedure [dbo].[USPI_EvaluacionSolicitante]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPI_EvaluacionSolicitante]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USPI_EvaluacionSolicitante]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solicitante_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solicitante]'))
ALTER TABLE [dbo].[Solicitante] DROP CONSTRAINT [FK_Solicitante_Solicitud]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReporteEvaluacion_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReporteEvaluacion]'))
ALTER TABLE [dbo].[ReporteEvaluacion] DROP CONSTRAINT [FK_ReporteEvaluacion_Solicitud]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Entrevista_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entrevista]'))
ALTER TABLE [dbo].[Entrevista] DROP CONSTRAINT [FK_Entrevista_Solicitud]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ubigeo]') AND type in (N'U'))
DROP TABLE [dbo].[Ubigeo]
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solicitud]') AND type in (N'U'))
DROP TABLE [dbo].[Solicitud]
GO
/****** Object:  Table [dbo].[Solicitante]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solicitante]') AND type in (N'U'))
DROP TABLE [dbo].[Solicitante]
GO
/****** Object:  Table [dbo].[ReporteEvaluacion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEvaluacion]') AND type in (N'U'))
DROP TABLE [dbo].[ReporteEvaluacion]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfil]') AND type in (N'U'))
DROP TABLE [dbo].[Perfil]
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parametro]') AND type in (N'U'))
DROP TABLE [dbo].[Parametro]
GO
/****** Object:  Table [dbo].[OpcionPerfil]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpcionPerfil]') AND type in (N'U'))
DROP TABLE [dbo].[OpcionPerfil]
GO
/****** Object:  Table [dbo].[Opcion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Opcion]') AND type in (N'U'))
DROP TABLE [dbo].[Opcion]
GO
/****** Object:  Table [dbo].[HistorialContrasenia]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistorialContrasenia]') AND type in (N'U'))
DROP TABLE [dbo].[HistorialContrasenia]
GO
/****** Object:  Table [dbo].[Entrevista]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entrevista]') AND type in (N'U'))
DROP TABLE [dbo].[Entrevista]
GO
/****** Object:  Table [dbo].[Aplicacion]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Aplicacion]') AND type in (N'U'))
DROP TABLE [dbo].[Aplicacion]
GO
/****** Object:  UserDefinedFunction [dbo].[UFN_PASS_ENCRIPT]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UFN_PASS_ENCRIPT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[UFN_PASS_ENCRIPT]
GO
/****** Object:  UserDefinedFunction [dbo].[UFN_PASS_DECRIPT]    Script Date: 23/07/2017 09:17:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UFN_PASS_DECRIPT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[UFN_PASS_DECRIPT]
GO
/****** Object:  UserDefinedFunction [dbo].[UFN_PASS_DECRIPT]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UFN_PASS_DECRIPT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
/**************************************/
/************ Funciones  **************/
/**************************************/

-- DROP FUNCTION UFN_PASS_DECRIPT
CREATE FUNCTION [dbo].[UFN_PASS_DECRIPT](@PASS VARBINARY(8000)) RETURNS VARCHAR(50) 
--
BEGIN
	
	DECLARE @D_PASS AS VARCHAR(50)

	SET @D_PASS = DECRYPTBYPASSPHRASE(''Encript0110'', @PASS)

	RETURN @D_PASS

END

' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[UFN_PASS_ENCRIPT]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UFN_PASS_ENCRIPT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
-- DROP FUNCTION UFN_PASS_ENCRIPT
CREATE FUNCTION [dbo].[UFN_PASS_ENCRIPT](@PASS VARCHAR(50)) RETURNS VARBINARY(8000) 
--
BEGIN
	
	DECLARE @D_PASS AS  VARBINARY(8000)

	SET @D_PASS = ENCRYPTBYPASSPHRASE(''Encript0110'', @PASS)

	RETURN @D_PASS

END

' 
END

GO
/****** Object:  Table [dbo].[Aplicacion]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Aplicacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Aplicacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoAplicacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Aplicacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Entrevista]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entrevista]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Entrevista](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SolicitudId] [int] NOT NULL,
	[FechaEntrevisa] [varchar](10) NULL,
	[HoraEntrevisa] [varchar](5) NULL,
	[EntrevistadorId] [int] NOT NULL,
	[LugarId] [int] NOT NULL,
	[Observacion] [varchar](250) NULL,
	[Estado] [int] NOT NULL,
	[AuditoriaUC] [int] NOT NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Entrevista] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HistorialContrasenia]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistorialContrasenia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HistorialContrasenia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[ContraseniaAnt] [varchar](100) NOT NULL,
	[ContraseniaAct] [varchar](100) NOT NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_HistorialContrasenia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Opcion]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Opcion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Opcion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AplicacionId] [int] NOT NULL,
	[PadreId] [int] NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Nivel] [int] NULL,
	[NivelPadre] [int] NULL,
	[Imagen] [varchar](50) NULL,
	[Controler] [varchar](50) NULL,
	[Accion] [varchar](50) NULL,
	[Orden] [int] NULL,
	[Observacion] [varchar](50) NULL,
	[Estado] [tinyint] NOT NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OpcionPerfil]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpcionPerfil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OpcionPerfil](
	[AplicacionId] [int] NOT NULL,
	[PerfilId] [int] NOT NULL,
	[OpcionId] [int] NOT NULL,
	[Escritura] [bit] NOT NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parametro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Parametro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoGrupo] [int] NOT NULL,
	[Grupo] [varchar](50) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Valor] [varchar](100) NULL,
	[Descripcion] [varchar](255) NULL,
	[ValueText1] [varchar](255) NULL,
	[ValueText2] [varchar](255) NULL,
	[ValueText3] [varchar](255) NULL,
	[AuditoriaUC] [int] NOT NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Parametro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AplicacionId] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReporteEvaluacion]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReporteEvaluacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SolicitudId] [int] NOT NULL,
	[FechaReporte] [datetime] NULL,
	[ResultadoEjercicio] [varchar](250) NULL,
	[ErroresEncontrados] [varchar](400) NULL,
	[AuditoriaUC] [int] NOT NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_ReporteEvaluacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Solicitante]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solicitante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Solicitante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoSolicitanteId] [int] NOT NULL,
	[SolicitudId] [int] NOT NULL,
	[Nombres] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[RazonSocial] [varchar](250) NULL,
	[TipoDocumentoId] [int] NULL,
	[NumeroDocumento] [varchar](15) NULL,
	[SexoId] [int] NULL,
	[EstadoCivilId] [int] NULL,
	[FechaIniCargoAct] [datetime] NULL,
	[FechaFinCargoAct] [datetime] NULL,
	[NombreJefeDirecto] [varchar](250) NULL,
	[TelefonoJefeDirecto] [varchar](15) NULL,
	[FechaConstitucion] [datetime] NULL,
	[ActividadEconomica] [varchar](250) NULL,
	[NumeroEmpleados] [int] NULL,
	[MontoIngresosAnuales] [decimal](18, 2) NULL,
	[UbigeoDireccion] [varchar](6) NULL,
	[Direccion] [varchar](250) NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [varchar](15) NULL,
	[InstitucionEducativa] [varchar](100) NULL,
	[TituloObtenido] [varchar](50) NULL,
	[DuracionEstudios] [int] NULL,
	[Idiomas] [varchar](50) NULL,
	[Empresa] [varchar](100) NULL,
	[Cargo] [varchar](100) NULL,
	[MontoIngresosMes] [decimal](18, 2) NULL,
	[MontoGastosMes] [decimal](18, 2) NULL,
	[Observacion] [varchar](250) NULL,
	[AuditoriaUC] [int] NOT NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
	[FechaNacimiento] [smalldatetime] NULL,
	[FueAprobado] [bit] NULL,
 CONSTRAINT [PK_Solicitante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solicitud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Solicitud](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumSolicitud] [varchar](15) NULL,
	[FechaSolicitud] [datetime] NULL,
	[CiudadInteres] [varchar](50) NULL,
	[UbigeoCiudadInteres] [varchar](6) NULL,
	[MontoCapital] [decimal](18, 2) NULL,
	[FuenteFinanciamiento] [varchar](50) NULL,
	[FechaInicioOperacion] [datetime] NULL,
	[LocalDisponible] [int] NULL,
	[CondicionLocalId] [int] NULL,
	[UbigeoLocal] [varchar](6) NULL,
	[DireccionLocal] [varchar](250) NULL,
	[TipoUbicacionLocalId] [int] NULL,
	[ReferenciaComercial] [varchar](500) NULL,
	[ReferenciaBancaria] [varchar](500) NULL,
	[Estado] [int] NULL,
	[AuditoriaUC] [int] NOT NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ubigeo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ubigeo](
	[Id] [char](6) NOT NULL,
	[DepartamentoId] [char](2) NULL,
	[ProvinciaId] [char](2) NULL,
	[DistritoId] [char](2) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [tinyint] NOT NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/07/2017 09:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PerfilId] [int] NOT NULL,
	[CtaUsuario] [varchar](25) NOT NULL,
	[Contrasenia] [varbinary](8000) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Cargo] [varchar](48) NULL,
	[Email] [varchar](255) NOT NULL,
	[Telefono] [varchar](50) NULL,
	[Estado] [tinyint] NOT NULL,
	[CambiarContrasenia] [bit] NULL,
	[FechaVencimientoCta] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[AuditoriaUC] [int] NULL,
	[AuditoriaUM] [int] NULL,
	[AuditoriaFC] [datetime] NOT NULL,
	[AuditoriaFM] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Aplicacion] ON 

INSERT [dbo].[Aplicacion] ([Id], [CodTipoAplicacion], [Descripcion], [Estado]) VALUES (1, 1, N'Sistema de Gestion de Franquicias', 1)
SET IDENTITY_INSERT [dbo].[Aplicacion] OFF
SET IDENTITY_INSERT [dbo].[Opcion] ON 

INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, NULL, N'Franquicia', 1, 0, N'fa-arrows-v', NULL, NULL, 1, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (2, 1, 1, N'Registro de solicitud', 2, 1, N'fa-file-archive-o', N'Home', N'Index', 1, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (3, 1, 1, N'Explorador de solicitudes de franquicia pendientes', 2, 1, N'fa-clock-o', N'Solicitud', N'Index', 2, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (4, 1, NULL, N'Configuración', 1, 0, N'fa-arrows-v', NULL, NULL, 2, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (5, 1, 4, N'Formato actividad', 2, 1, N'fa-file-archive-o', N'ComponenteActividad', N'Index', 1, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (6, 1, 4, N'Asignar ruta usuario', 2, 1, N'fa-file-archive-o', N'Ruta', N'Index', 3, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (7, 1, 4, N'Punto de venta', 2, 1, N'fa-file-archive-o', N'Home', N'Index', 4, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (8, 1, NULL, N'Reportes', 1, 0, N'fa-arrows-v', NULL, NULL, 3, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (9, 1, 8, N'Tracking', 2, 1, N'fa-file-archive-o', N'Tracking', N'Index', 1, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (10, 1, 8, N'Fotografico', 2, 1, N'fa-file-archive-o', N'Galeria', N'Index', 2, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (11, 1, 8, N'MapInfo', 2, 1, N'fa-file-archive-o', N'Home', N'Index', 3, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Opcion] ([Id], [AplicacionId], [PadreId], [Nombre], [Nivel], [NivelPadre], [Imagen], [Controler], [Accion], [Orden], [Observacion], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (13, 1, 1, N'Explorador de Solicitantes de Franquicia', 2, 1, N'fa-clock-o', N'Solicitante', N'Index', 3, NULL, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Opcion] OFF
INSERT [dbo].[OpcionPerfil] ([AplicacionId], [PerfilId], [OpcionId], [Escritura], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, 1, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[OpcionPerfil] ([AplicacionId], [PerfilId], [OpcionId], [Escritura], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, 2, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[OpcionPerfil] ([AplicacionId], [PerfilId], [OpcionId], [Escritura], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, 3, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[OpcionPerfil] ([AplicacionId], [PerfilId], [OpcionId], [Escritura], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, 13, 1, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Parametro] ON 

INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, N'CONDICION_LOCAL', 1, N'PROPIO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (2, 1, N'CONDICION_LOCAL', 2, N'ALQUILADO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (3, 2, N'UBICACION_LOCAL', 1, N'CALLE CÉNTRICA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (4, 2, N'UBICACION_LOCAL', 2, N'ZONA PEATONAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2017-07-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (5, 2, N'UBICACION_LOCAL', 3, N'CENTRO COMERCIAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (6, 3, N'ESTADO_SOLICITUD', 1, N'PENDIENTE', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (7, 3, N'ESTADO_SOLICITUD', 2, N'APROBADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (8, 3, N'ESTADO_SOLICITUD', 3, N'RECHAZADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (9, 4, N'TIPO_SOLICITANTE', 1, N'PERSONA NATURAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (10, 4, N'TIPO_SOLICITANTE', 2, N'PERSONA JURIDICA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (11, 5, N'TIPO_DOCUMENTO', 1, N'DNI', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (12, 5, N'TIPO_DOCUMENTO', 2, N'RUC', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (13, 5, N'TIPO_DOCUMENTO', 3, N'CARNET EXT', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (14, 5, N'TIPO_DOCUMENTO', 4, N'PASAPORTE', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (15, 6, N'SEXO', 1, N'MASCULINO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (16, 6, N'SEXO', 2, N'FEMENINO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (17, 7, N'ESTADO_CIVIL', 1, N'SOLTERO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (18, 7, N'ESTADO_CIVIL', 2, N'CASADO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (19, 7, N'ESTADO_CIVIL', 3, N'DIVORCIADO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (20, 7, N'ESTADO_CIVIL', 4, N'VIUDO', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (21, 8, N'SALAS', 1, N'SALA 1 PRINCIPAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (22, 8, N'SALAS', 2, N'SALA 2 GRANDE', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (23, 8, N'SALAS', 3, N'SALA 3', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (24, 8, N'SALAS', 4, N'SALA 4', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (25, 8, N'SALAS', 5, N'SALA 5 ADM', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (26, 9, N'ESTADO_ENTREVISTA', 1, N'ENVIADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (27, 9, N'ESTADO_ENTREVISTA', 2, N'CONFIRMADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (28, 9, N'ESTADO_ENTREVISTA', 3, N'RECHAZADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (29, 9, N'ESTADO_ENTREVISTA', 4, N'REPROGRAMADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parametro] ([Id], [CodigoGrupo], [Grupo], [Codigo], [Nombre], [Valor], [Descripcion], [ValueText1], [ValueText2], [ValueText3], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (30, 9, N'ESTADO_ENTREVISTA', 5, N'CANCELADA', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Parametro] OFF
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([Id], [AplicacionId], [Nombre], [Descripcion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, N'ADMIN', N'USUARIO ADMINISTRADOR A TODO EL SISTEMA', 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Perfil] ([Id], [AplicacionId], [Nombre], [Descripcion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (2, 1, N'ANALISTA MKT', N'USUARIO ENCARGADO DE LA CONFIGURACION Y CONSULTA DE DATOS ASIGNADOS A SU PERFIL', 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Perfil] ([Id], [AplicacionId], [Nombre], [Descripcion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (3, 2, N'MOVIL', N'USUARIO CON ACCESO SOLO AL EQUIPO MOVIL PARA RECOPILAR DATOS', 1, NULL, CAST(N'2016-11-18T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Perfil] OFF
SET IDENTITY_INSERT [dbo].[Solicitante] ON 

INSERT [dbo].[Solicitante] ([Id], [TipoSolicitanteId], [SolicitudId], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [RazonSocial], [TipoDocumentoId], [NumeroDocumento], [SexoId], [EstadoCivilId], [FechaIniCargoAct], [FechaFinCargoAct], [NombreJefeDirecto], [TelefonoJefeDirecto], [FechaConstitucion], [ActividadEconomica], [NumeroEmpleados], [MontoIngresosAnuales], [UbigeoDireccion], [Direccion], [Email], [Telefono], [InstitucionEducativa], [TituloObtenido], [DuracionEstudios], [Idiomas], [Empresa], [Cargo], [MontoIngresosMes], [MontoGastosMes], [Observacion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM], [FechaNacimiento], [FueAprobado]) VALUES (1, 1, 1, N'CARLOS', N'CASTILLO', N'CALDERON', NULL, 1, N'45792117', 1, 1, CAST(N'2014-07-01T00:00:00.000' AS DateTime), CAST(N'2016-07-01T00:00:00.000' AS DateTime), N'JUAN PEREZ', N'989898222', NULL, NULL, NULL, NULL, N'010114', N'AV. LOS CONSTRUCTORES 741 URB. LOS INGENIEROS', N'CARLOSDEVELOP@GMAIL.COM', N'991857496', N'UPC', N'INGENIERO', NULL, N'INGLES', N'UPC', N'GERENTE COMERCIAL', CAST(12000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), NULL, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL, CAST(N'1990-07-23T00:00:00' AS SmallDateTime), NULL)
INSERT [dbo].[Solicitante] ([Id], [TipoSolicitanteId], [SolicitudId], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [RazonSocial], [TipoDocumentoId], [NumeroDocumento], [SexoId], [EstadoCivilId], [FechaIniCargoAct], [FechaFinCargoAct], [NombreJefeDirecto], [TelefonoJefeDirecto], [FechaConstitucion], [ActividadEconomica], [NumeroEmpleados], [MontoIngresosAnuales], [UbigeoDireccion], [Direccion], [Email], [Telefono], [InstitucionEducativa], [TituloObtenido], [DuracionEstudios], [Idiomas], [Empresa], [Cargo], [MontoIngresosMes], [MontoGastosMes], [Observacion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM], [FechaNacimiento], [FueAprobado]) VALUES (2, 2, 2, N'YUSSEL', N'ULLOA', N'ULLOA', N'', 1, N'40404548', 1, 1, CAST(N'2014-07-01T00:00:00.000' AS DateTime), CAST(N'2016-07-01T00:00:00.000' AS DateTime), N'JUAN PEREZ', N'989898222', NULL, N'', NULL, NULL, N'010118', N'AV. LOS CONSTRUCTORES 741 URB. LOS INGENIEROS', N'YUSSELULLOA@GMAIL.COM', N'991857496', N'UPC', N'INGENIERO', NULL, N'INGLES', N'UPC', N'GERENTE COMERCIAL', CAST(8000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), N'', 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL, CAST(N'1990-07-23T00:00:00' AS SmallDateTime), NULL)
INSERT [dbo].[Solicitante] ([Id], [TipoSolicitanteId], [SolicitudId], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [RazonSocial], [TipoDocumentoId], [NumeroDocumento], [SexoId], [EstadoCivilId], [FechaIniCargoAct], [FechaFinCargoAct], [NombreJefeDirecto], [TelefonoJefeDirecto], [FechaConstitucion], [ActividadEconomica], [NumeroEmpleados], [MontoIngresosAnuales], [UbigeoDireccion], [Direccion], [Email], [Telefono], [InstitucionEducativa], [TituloObtenido], [DuracionEstudios], [Idiomas], [Empresa], [Cargo], [MontoIngresosMes], [MontoGastosMes], [Observacion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM], [FechaNacimiento], [FueAprobado]) VALUES (3, 3, 3, N'RAFAEL', N'GONZALES', N'GONZALES', N'', 2, N'10444478981', 1, NULL, NULL, NULL, N'', N'', CAST(N'2010-07-01T00:00:00.000' AS DateTime), N'COMERCIAL', 15, CAST(445000.00 AS Decimal(18, 2)), N'010102', N'AV. LOS CONSTRUCTORES 741 URB. LOS INGENIEROS', N'RAFAEL.GONZALES@GMAIL.COM', N'991857496', N'UPC', N'INGENIERO', NULL, N'INGLES', N'UPC', N'GERENTE COMERCIAL', CAST(65000.00 AS Decimal(18, 2)), CAST(25000.00 AS Decimal(18, 2)), N'', 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL, CAST(N'1990-07-23T00:00:00' AS SmallDateTime), NULL)
INSERT [dbo].[Solicitante] ([Id], [TipoSolicitanteId], [SolicitudId], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [RazonSocial], [TipoDocumentoId], [NumeroDocumento], [SexoId], [EstadoCivilId], [FechaIniCargoAct], [FechaFinCargoAct], [NombreJefeDirecto], [TelefonoJefeDirecto], [FechaConstitucion], [ActividadEconomica], [NumeroEmpleados], [MontoIngresosAnuales], [UbigeoDireccion], [Direccion], [Email], [Telefono], [InstitucionEducativa], [TituloObtenido], [DuracionEstudios], [Idiomas], [Empresa], [Cargo], [MontoIngresosMes], [MontoGastosMes], [Observacion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM], [FechaNacimiento], [FueAprobado]) VALUES (4, 4, 4, N'LEONARDO', N'SILVERA', N'SILVERA', N'', 2, N'10445278981', 1, NULL, NULL, NULL, N'', N'', CAST(N'2013-07-01T00:00:00.000' AS DateTime), N'COMERCIAL', 10, CAST(60000.00 AS Decimal(18, 2)), N'010103', N'AV. LOS CONSTRUCTORES 741 URB. LOS INGENIEROS', N'LEO.SILVERA@GMAIL.COM', N'991857496', N'UPC', N'INGENIERO', NULL, N'INGLES', N'UPC', N'GERENTE COMERCIAL', CAST(55000.00 AS Decimal(18, 2)), CAST(38000.00 AS Decimal(18, 2)), N'', 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL, CAST(N'1990-07-23T00:00:00' AS SmallDateTime), NULL)
INSERT [dbo].[Solicitante] ([Id], [TipoSolicitanteId], [SolicitudId], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [RazonSocial], [TipoDocumentoId], [NumeroDocumento], [SexoId], [EstadoCivilId], [FechaIniCargoAct], [FechaFinCargoAct], [NombreJefeDirecto], [TelefonoJefeDirecto], [FechaConstitucion], [ActividadEconomica], [NumeroEmpleados], [MontoIngresosAnuales], [UbigeoDireccion], [Direccion], [Email], [Telefono], [InstitucionEducativa], [TituloObtenido], [DuracionEstudios], [Idiomas], [Empresa], [Cargo], [MontoIngresosMes], [MontoGastosMes], [Observacion], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM], [FechaNacimiento], [FueAprobado]) VALUES (5, 5, 5, N'ALDO', N'SANTACRUZ', N'SANTACRUZ', N'', 1, N'65523322', 1, 1, CAST(N'2014-07-01T00:00:00.000' AS DateTime), CAST(N'2016-07-01T00:00:00.000' AS DateTime), N'JUAN PEREZ', N'989898222', NULL, N'', NULL, NULL, N'010104', N'AV. LOS CONSTRUCTORES 741 URB. LOS INGENIEROS', N'ALDO.STACRUZ@GMAIL.COM', N'991857496', N'UPC', N'INGENIERO', NULL, N'INGLES', N'UPC', N'GERENTE COMERCIAL', CAST(8000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'', 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL, CAST(N'1990-07-23T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Solicitante] OFF
SET IDENTITY_INSERT [dbo].[Solicitud] ON 

INSERT [dbo].[Solicitud] ([Id], [NumSolicitud], [FechaSolicitud], [CiudadInteres], [UbigeoCiudadInteres], [MontoCapital], [FuenteFinanciamiento], [FechaInicioOperacion], [LocalDisponible], [CondicionLocalId], [UbigeoLocal], [DireccionLocal], [TipoUbicacionLocalId], [ReferenciaComercial], [ReferenciaBancaria], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, N'SOLF-000001', CAST(N'2017-07-01T00:00:00.000' AS DateTime), N'SURQUILLO', N'010114', CAST(15000.00 AS Decimal(18, 2)), N'PRIVADA', CAST(N'2017-11-01T00:00:00.000' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Solicitud] ([Id], [NumSolicitud], [FechaSolicitud], [CiudadInteres], [UbigeoCiudadInteres], [MontoCapital], [FuenteFinanciamiento], [FechaInicioOperacion], [LocalDisponible], [CondicionLocalId], [UbigeoLocal], [DireccionLocal], [TipoUbicacionLocalId], [ReferenciaComercial], [ReferenciaBancaria], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (2, N'SOLF-000002', CAST(N'2017-07-02T00:00:00.000' AS DateTime), N'SANTA ANITA', N'010118', CAST(20000.00 AS Decimal(18, 2)), N'PRIVADA', CAST(N'2018-01-15T00:00:00.000' AS DateTime), 1, 1, N'010118', N'', 2, N'', N'', 1, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Solicitud] ([Id], [NumSolicitud], [FechaSolicitud], [CiudadInteres], [UbigeoCiudadInteres], [MontoCapital], [FuenteFinanciamiento], [FechaInicioOperacion], [LocalDisponible], [CondicionLocalId], [UbigeoLocal], [DireccionLocal], [TipoUbicacionLocalId], [ReferenciaComercial], [ReferenciaBancaria], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (3, N'SOLF-000003', CAST(N'2017-07-03T00:00:00.000' AS DateTime), N'LURIN', N'010107', CAST(10500.00 AS Decimal(18, 2)), N'PRIVADA', CAST(N'2018-02-15T00:00:00.000' AS DateTime), 0, NULL, N'', N'', NULL, N'', N'', 1, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Solicitud] ([Id], [NumSolicitud], [FechaSolicitud], [CiudadInteres], [UbigeoCiudadInteres], [MontoCapital], [FuenteFinanciamiento], [FechaInicioOperacion], [LocalDisponible], [CondicionLocalId], [UbigeoLocal], [DireccionLocal], [TipoUbicacionLocalId], [ReferenciaComercial], [ReferenciaBancaria], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (4, N'SOLF-000004', CAST(N'2017-07-04T00:00:00.000' AS DateTime), N'SAN ISIDRO', N'010111', CAST(40000.00 AS Decimal(18, 2)), N'NEGOCIO PROPIO', CAST(N'2018-03-15T00:00:00.000' AS DateTime), 0, NULL, N'', N'', NULL, N'', N'', 1, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Solicitud] ([Id], [NumSolicitud], [FechaSolicitud], [CiudadInteres], [UbigeoCiudadInteres], [MontoCapital], [FuenteFinanciamiento], [FechaInicioOperacion], [LocalDisponible], [CondicionLocalId], [UbigeoLocal], [DireccionLocal], [TipoUbicacionLocalId], [ReferenciaComercial], [ReferenciaBancaria], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (5, N'SOLF-000005', CAST(N'2017-07-05T00:00:00.000' AS DateTime), N'MONTERRICO', N'010117', CAST(25000.00 AS Decimal(18, 2)), N'PRIVADA', CAST(N'2018-04-15T00:00:00.000' AS DateTime), 0, NULL, N'', N'', NULL, N'', N'', 1, 1, NULL, CAST(N'2017-07-01T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Solicitud] OFF
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010000', N'01', N'00', N'00', N'AMAZONAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010100', N'01', N'01', N'00', N'CHACHAPOYAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010101', N'01', N'01', N'01', N'CHACHAPOYAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010102', N'01', N'01', N'02', N'ASUNCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010103', N'01', N'01', N'03', N'BALSAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010104', N'01', N'01', N'04', N'CHETO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010105', N'01', N'01', N'05', N'CHILIQUIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010106', N'01', N'01', N'06', N'CHUQUIBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010107', N'01', N'01', N'07', N'GRANADA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010108', N'01', N'01', N'08', N'HUANCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010109', N'01', N'01', N'09', N'LA JALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010110', N'01', N'01', N'10', N'LEIMEBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010111', N'01', N'01', N'11', N'LEVANTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010112', N'01', N'01', N'12', N'MAGDALENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010113', N'01', N'01', N'13', N'MARISCAL CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010114', N'01', N'01', N'14', N'MOLINOPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010115', N'01', N'01', N'15', N'MONTEVIDEO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010116', N'01', N'01', N'16', N'OLLEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010117', N'01', N'01', N'17', N'QUINJALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010118', N'01', N'01', N'18', N'SAN FRANCISCO DE DAGUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010119', N'01', N'01', N'19', N'SAN ISIDRO DE MAINO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010120', N'01', N'01', N'20', N'SOLOCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010121', N'01', N'01', N'21', N'SONCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010200', N'01', N'02', N'00', N'BAGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010201', N'01', N'02', N'01', N'BAGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010202', N'01', N'02', N'02', N'ARAMANGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010203', N'01', N'02', N'03', N'COPALLIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010204', N'01', N'02', N'04', N'EL PARCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010205', N'01', N'02', N'05', N'IMAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010206', N'01', N'02', N'06', N'LA PECA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010300', N'01', N'03', N'00', N'BONGARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010301', N'01', N'03', N'01', N'JUMBILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010302', N'01', N'03', N'02', N'CHISQUILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010303', N'01', N'03', N'03', N'CHURUJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010304', N'01', N'03', N'04', N'COROSHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010305', N'01', N'03', N'05', N'CUISPES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010306', N'01', N'03', N'06', N'FLORIDA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010307', N'01', N'03', N'07', N'JAZAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010308', N'01', N'03', N'08', N'RECTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010309', N'01', N'03', N'09', N'SAN CARLOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010310', N'01', N'03', N'10', N'SHIPASBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010311', N'01', N'03', N'11', N'VALERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010312', N'01', N'03', N'12', N'YAMBRASBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010400', N'01', N'04', N'00', N'CONDORCANQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010401', N'01', N'04', N'01', N'NIEVA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010402', N'01', N'04', N'02', N'EL CENEPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010403', N'01', N'04', N'03', N'RIO SANTIAGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010500', N'01', N'05', N'00', N'LUYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010501', N'01', N'05', N'01', N'LAMUD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010502', N'01', N'05', N'02', N'CAMPORREDONDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010503', N'01', N'05', N'03', N'COCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010504', N'01', N'05', N'04', N'COLCAMAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010505', N'01', N'05', N'05', N'CONILA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010506', N'01', N'05', N'06', N'INGUILPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010507', N'01', N'05', N'07', N'LONGUITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010508', N'01', N'05', N'08', N'LONYA CHICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010509', N'01', N'05', N'09', N'LUYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010510', N'01', N'05', N'10', N'LUYA VIEJO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010511', N'01', N'05', N'11', N'MARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010512', N'01', N'05', N'12', N'OCALLI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010513', N'01', N'05', N'13', N'OCUMAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010514', N'01', N'05', N'14', N'PISUQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010515', N'01', N'05', N'15', N'PROVIDENCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010516', N'01', N'05', N'16', N'SAN CRISTOBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010517', N'01', N'05', N'17', N'SAN FRANCISCO DEL YESO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010518', N'01', N'05', N'18', N'SAN JERONIMO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010519', N'01', N'05', N'19', N'SAN JUAN DE LOPECANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010520', N'01', N'05', N'20', N'SANTA CATALINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010521', N'01', N'05', N'21', N'SANTO TOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010522', N'01', N'05', N'22', N'TINGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010523', N'01', N'05', N'23', N'TRITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010600', N'01', N'06', N'00', N'RODRIGUEZ DE MENDOZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010601', N'01', N'06', N'01', N'SAN NICOLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010602', N'01', N'06', N'02', N'CHIRIMOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010603', N'01', N'06', N'03', N'COCHAMAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010604', N'01', N'06', N'04', N'HUAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010605', N'01', N'06', N'05', N'LIMABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010606', N'01', N'06', N'06', N'LONGAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010607', N'01', N'06', N'07', N'MARISCAL BENAVIDES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010608', N'01', N'06', N'08', N'MILPUC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010609', N'01', N'06', N'09', N'OMIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010610', N'01', N'06', N'10', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010611', N'01', N'06', N'11', N'TOTORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010612', N'01', N'06', N'12', N'VISTA ALEGRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010700', N'01', N'07', N'00', N'UTCUBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010701', N'01', N'07', N'01', N'BAGUA GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010702', N'01', N'07', N'02', N'CAJARURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010703', N'01', N'07', N'03', N'CUMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010704', N'01', N'07', N'04', N'EL MILAGRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010705', N'01', N'07', N'05', N'JAMALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010706', N'01', N'07', N'06', N'LONYA GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'010707', N'01', N'07', N'07', N'YAMON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020000', N'02', N'00', N'00', N'ANCASH', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020100', N'02', N'01', N'00', N'HUARAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020101', N'02', N'01', N'01', N'HUARAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020102', N'02', N'01', N'02', N'COCHABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020103', N'02', N'01', N'03', N'COLCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020104', N'02', N'01', N'04', N'HUANCHAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020105', N'02', N'01', N'05', N'INDEPENDENCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020106', N'02', N'01', N'06', N'JANGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020107', N'02', N'01', N'07', N'LA LIBERTAD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020108', N'02', N'01', N'08', N'OLLEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020109', N'02', N'01', N'09', N'PAMPAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020110', N'02', N'01', N'10', N'PARIACOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020111', N'02', N'01', N'11', N'PIRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020112', N'02', N'01', N'12', N'TARICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020200', N'02', N'02', N'00', N'AIJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020201', N'02', N'02', N'01', N'AIJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020202', N'02', N'02', N'02', N'CORIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020203', N'02', N'02', N'03', N'HUACLLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020204', N'02', N'02', N'04', N'LA MERCED', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020205', N'02', N'02', N'05', N'SUCCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020300', N'02', N'03', N'00', N'ANTONIO RAYMONDI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020301', N'02', N'03', N'01', N'LLAMELLIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020302', N'02', N'03', N'02', N'ACZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020303', N'02', N'03', N'03', N'CHACCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020304', N'02', N'03', N'04', N'CHINGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020305', N'02', N'03', N'05', N'MIRGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020306', N'02', N'03', N'06', N'SAN JUAN DE RONTOY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020400', N'02', N'04', N'00', N'ASUNCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020401', N'02', N'04', N'01', N'CHACAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020402', N'02', N'04', N'02', N'ACOCHACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020500', N'02', N'05', N'00', N'BOLOGNESI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020501', N'02', N'05', N'01', N'CHIQUIAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020502', N'02', N'05', N'02', N'ABELARDO PARDO LEZAMETA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020503', N'02', N'05', N'03', N'ANTONIO RAYMONDI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020504', N'02', N'05', N'04', N'AQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020505', N'02', N'05', N'05', N'CAJACAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020506', N'02', N'05', N'06', N'CANIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020507', N'02', N'05', N'07', N'COLQUIOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020508', N'02', N'05', N'08', N'HUALLANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020509', N'02', N'05', N'09', N'HUASTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020510', N'02', N'05', N'10', N'HUAYLLACAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020511', N'02', N'05', N'11', N'LA PRIMAVERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020512', N'02', N'05', N'12', N'MANGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020513', N'02', N'05', N'13', N'PACLLON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020514', N'02', N'05', N'14', N'SAN MIGUEL DE CORPANQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020515', N'02', N'05', N'15', N'TICLLOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020600', N'02', N'06', N'00', N'CARHUAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020601', N'02', N'06', N'01', N'CARHUAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020602', N'02', N'06', N'02', N'ACOPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020603', N'02', N'06', N'03', N'AMASHCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020604', N'02', N'06', N'04', N'ANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020605', N'02', N'06', N'05', N'ATAQUERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020606', N'02', N'06', N'06', N'MARCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020607', N'02', N'06', N'07', N'PARIAHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020608', N'02', N'06', N'08', N'SAN MIGUEL DE ACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020609', N'02', N'06', N'09', N'SHILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020610', N'02', N'06', N'10', N'TINCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020611', N'02', N'06', N'11', N'YUNGAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020700', N'02', N'07', N'00', N'CARLOS FERMIN FITZCARRALD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020701', N'02', N'07', N'01', N'SAN LUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020702', N'02', N'07', N'02', N'SAN NICOLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020703', N'02', N'07', N'03', N'YAUYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020800', N'02', N'08', N'00', N'CASMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020801', N'02', N'08', N'01', N'CASMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020802', N'02', N'08', N'02', N'BUENA VISTA ALTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020803', N'02', N'08', N'03', N'COMANDANTE NOEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020804', N'02', N'08', N'04', N'YAUTAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020900', N'02', N'09', N'00', N'CORONGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020901', N'02', N'09', N'01', N'CORONGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020902', N'02', N'09', N'02', N'ACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020903', N'02', N'09', N'03', N'BAMBAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020904', N'02', N'09', N'04', N'CUSCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020905', N'02', N'09', N'05', N'LA PAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020906', N'02', N'09', N'06', N'YANAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'020907', N'02', N'09', N'07', N'YUPAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021000', N'02', N'10', N'00', N'HUARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021001', N'02', N'10', N'01', N'HUARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021002', N'02', N'10', N'02', N'ANRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021003', N'02', N'10', N'03', N'CAJAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021004', N'02', N'10', N'04', N'CHAVIN DE HUANTAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021005', N'02', N'10', N'05', N'HUACACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021006', N'02', N'10', N'06', N'HUACCHIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021007', N'02', N'10', N'07', N'HUACHIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021008', N'02', N'10', N'08', N'HUANTAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021009', N'02', N'10', N'09', N'MASIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021010', N'02', N'10', N'10', N'PAUCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021011', N'02', N'10', N'11', N'PONTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021012', N'02', N'10', N'12', N'RAHUAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021013', N'02', N'10', N'13', N'RAPAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021014', N'02', N'10', N'14', N'SAN MARCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021015', N'02', N'10', N'15', N'SAN PEDRO DE CHANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021016', N'02', N'10', N'16', N'UCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021100', N'02', N'11', N'00', N'HUARMEY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021101', N'02', N'11', N'01', N'HUARMEY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021102', N'02', N'11', N'02', N'COCHAPETI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021103', N'02', N'11', N'03', N'CULEBRAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021104', N'02', N'11', N'04', N'HUAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021105', N'02', N'11', N'05', N'MALVAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021200', N'02', N'12', N'00', N'HUAYLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021201', N'02', N'12', N'01', N'CARAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021202', N'02', N'12', N'02', N'HUALLANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021203', N'02', N'12', N'03', N'HUATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021204', N'02', N'12', N'04', N'HUAYLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021205', N'02', N'12', N'05', N'MATO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021206', N'02', N'12', N'06', N'PAMPAROMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021207', N'02', N'12', N'07', N'PUEBLO LIBRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021208', N'02', N'12', N'08', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021209', N'02', N'12', N'09', N'SANTO TORIBIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021210', N'02', N'12', N'10', N'YURACMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021300', N'02', N'13', N'00', N'MARISCAL LUZURIAGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021301', N'02', N'13', N'01', N'PISCOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021302', N'02', N'13', N'02', N'CASCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021303', N'02', N'13', N'03', N'ELEAZAR GUZMAN BARRON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021304', N'02', N'13', N'04', N'FIDEL OLIVAS ESCUDERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021305', N'02', N'13', N'05', N'LLAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021306', N'02', N'13', N'06', N'LLUMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021307', N'02', N'13', N'07', N'LUCMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021308', N'02', N'13', N'08', N'MUSGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021400', N'02', N'14', N'00', N'OCROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021401', N'02', N'14', N'01', N'OCROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021402', N'02', N'14', N'02', N'ACAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021403', N'02', N'14', N'03', N'CAJAMARQUILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021404', N'02', N'14', N'04', N'CARHUAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021405', N'02', N'14', N'05', N'COCHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021406', N'02', N'14', N'06', N'CONGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021407', N'02', N'14', N'07', N'LLIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021408', N'02', N'14', N'08', N'SAN CRISTOBAL DE RAJAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021409', N'02', N'14', N'09', N'SAN PEDRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021410', N'02', N'14', N'10', N'SANTIAGO DE CHILCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021500', N'02', N'15', N'00', N'PALLASCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021501', N'02', N'15', N'01', N'CABANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021502', N'02', N'15', N'02', N'BOLOGNESI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021503', N'02', N'15', N'03', N'CONCHUCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021504', N'02', N'15', N'04', N'HUACASCHUQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021505', N'02', N'15', N'05', N'HUANDOVAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021506', N'02', N'15', N'06', N'LACABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021507', N'02', N'15', N'07', N'LLAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021508', N'02', N'15', N'08', N'PALLASCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021509', N'02', N'15', N'09', N'PAMPAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021510', N'02', N'15', N'10', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021511', N'02', N'15', N'11', N'TAUCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021600', N'02', N'16', N'00', N'POMABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021601', N'02', N'16', N'01', N'POMABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021602', N'02', N'16', N'02', N'HUAYLLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021603', N'02', N'16', N'03', N'PAROBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021604', N'02', N'16', N'04', N'QUINUABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021700', N'02', N'17', N'00', N'RECUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021701', N'02', N'17', N'01', N'RECUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021702', N'02', N'17', N'02', N'CATAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021703', N'02', N'17', N'03', N'COTAPARACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021704', N'02', N'17', N'04', N'HUAYLLAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021705', N'02', N'17', N'05', N'LLACLLIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021706', N'02', N'17', N'06', N'MARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021707', N'02', N'17', N'07', N'PAMPAS CHICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021708', N'02', N'17', N'08', N'PARARIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021709', N'02', N'17', N'09', N'TAPACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021710', N'02', N'17', N'10', N'TICAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021800', N'02', N'18', N'00', N'SANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021801', N'02', N'18', N'01', N'CHIMBOTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021802', N'02', N'18', N'02', N'CACERES DEL PERU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021803', N'02', N'18', N'03', N'COISHCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021804', N'02', N'18', N'04', N'MACATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021805', N'02', N'18', N'05', N'MORO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021806', N'02', N'18', N'06', N'NEPEÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021807', N'02', N'18', N'07', N'SAMANCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021808', N'02', N'18', N'08', N'SANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021809', N'02', N'18', N'09', N'NUEVO CHIMBOTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021900', N'02', N'19', N'00', N'SIHUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021901', N'02', N'19', N'01', N'SIHUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021902', N'02', N'19', N'02', N'ACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021903', N'02', N'19', N'03', N'ALFONSO UGARTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021904', N'02', N'19', N'04', N'CASHAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021905', N'02', N'19', N'05', N'CHINGALPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021906', N'02', N'19', N'06', N'HUAYLLABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021907', N'02', N'19', N'07', N'QUICHES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021908', N'02', N'19', N'08', N'RAGASH', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021909', N'02', N'19', N'09', N'SAN JUAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'021910', N'02', N'19', N'10', N'SICSIBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022000', N'02', N'20', N'00', N'YUNGAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022001', N'02', N'20', N'01', N'YUNGAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022002', N'02', N'20', N'02', N'CASCAPARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022003', N'02', N'20', N'03', N'MANCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022004', N'02', N'20', N'04', N'MATACOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022005', N'02', N'20', N'05', N'QUILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022006', N'02', N'20', N'06', N'RANRAHIRCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022007', N'02', N'20', N'07', N'SHUPLUY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'022008', N'02', N'20', N'08', N'YANAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030000', N'03', N'00', N'00', N'APURIMAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030100', N'03', N'01', N'00', N'ABANCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030101', N'03', N'01', N'01', N'ABANCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030102', N'03', N'01', N'02', N'CHACOCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030103', N'03', N'01', N'03', N'CIRCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030104', N'03', N'01', N'04', N'CURAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030105', N'03', N'01', N'05', N'HUANIPACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030106', N'03', N'01', N'06', N'LAMBRAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030107', N'03', N'01', N'07', N'PICHIRHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030108', N'03', N'01', N'08', N'SAN PEDRO DE CACHORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030109', N'03', N'01', N'09', N'TAMBURCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030200', N'03', N'02', N'00', N'ANDAHUAYLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030201', N'03', N'02', N'01', N'ANDAHUAYLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030202', N'03', N'02', N'02', N'ANDARAPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030203', N'03', N'02', N'03', N'CHIARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030204', N'03', N'02', N'04', N'HUANCARAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030205', N'03', N'02', N'05', N'HUANCARAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030206', N'03', N'02', N'06', N'HUAYANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030207', N'03', N'02', N'07', N'KISHUARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030208', N'03', N'02', N'08', N'PACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030209', N'03', N'02', N'09', N'PACUCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030210', N'03', N'02', N'10', N'PAMPACHIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030211', N'03', N'02', N'11', N'POMACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030212', N'03', N'02', N'12', N'SAN ANTONIO DE CACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030213', N'03', N'02', N'13', N'SAN JERONIMO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030214', N'03', N'02', N'14', N'SAN MIGUEL DE CHACCRAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030215', N'03', N'02', N'15', N'SANTA MARIA DE CHICMO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030216', N'03', N'02', N'16', N'TALAVERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030217', N'03', N'02', N'17', N'TUMAY HUARACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030218', N'03', N'02', N'18', N'TURPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030219', N'03', N'02', N'19', N'KAQUIABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030300', N'03', N'03', N'00', N'ANTABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030301', N'03', N'03', N'01', N'ANTABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030302', N'03', N'03', N'02', N'EL ORO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030303', N'03', N'03', N'03', N'HUAQUIRCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030304', N'03', N'03', N'04', N'JUAN ESPINOZA MEDRANO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030305', N'03', N'03', N'05', N'OROPESA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030306', N'03', N'03', N'06', N'PACHACONAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030307', N'03', N'03', N'07', N'SABAINO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030400', N'03', N'04', N'00', N'AYMARAES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030401', N'03', N'04', N'01', N'CHALHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030402', N'03', N'04', N'02', N'CAPAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030403', N'03', N'04', N'03', N'CARAYBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030404', N'03', N'04', N'04', N'CHAPIMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030405', N'03', N'04', N'05', N'COLCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030406', N'03', N'04', N'06', N'COTARUSE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030407', N'03', N'04', N'07', N'HUAYLLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030408', N'03', N'04', N'08', N'JUSTO APU SAHUARAURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030409', N'03', N'04', N'09', N'LUCRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030410', N'03', N'04', N'10', N'POCOHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030411', N'03', N'04', N'11', N'SAN JUAN DE CHACÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030412', N'03', N'04', N'12', N'SAÑAYCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030413', N'03', N'04', N'13', N'SORAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030414', N'03', N'04', N'14', N'TAPAIRIHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030415', N'03', N'04', N'15', N'TINTAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030416', N'03', N'04', N'16', N'TORAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030417', N'03', N'04', N'17', N'YANACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030500', N'03', N'05', N'00', N'COTABAMBAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030501', N'03', N'05', N'01', N'TAMBOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030502', N'03', N'05', N'02', N'COTABAMBAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030503', N'03', N'05', N'03', N'COYLLURQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030504', N'03', N'05', N'04', N'HAQUIRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030505', N'03', N'05', N'05', N'MARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030506', N'03', N'05', N'06', N'CHALLHUAHUACHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030600', N'03', N'06', N'00', N'CHINCHEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030601', N'03', N'06', N'01', N'CHINCHEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030602', N'03', N'06', N'02', N'ANCO_HUALLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030603', N'03', N'06', N'03', N'COCHARCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030604', N'03', N'06', N'04', N'HUACCANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030605', N'03', N'06', N'05', N'OCOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030606', N'03', N'06', N'06', N'ONGOY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030607', N'03', N'06', N'07', N'URANMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030608', N'03', N'06', N'08', N'RANRACANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030700', N'03', N'07', N'00', N'GRAU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030701', N'03', N'07', N'01', N'CHUQUIBAMBILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030702', N'03', N'07', N'02', N'CURPAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030703', N'03', N'07', N'03', N'GAMARRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030704', N'03', N'07', N'04', N'HUAYLLATI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030705', N'03', N'07', N'05', N'MAMARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030706', N'03', N'07', N'06', N'MICAELA BASTIDAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030707', N'03', N'07', N'07', N'PATAYPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030708', N'03', N'07', N'08', N'PROGRESO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030709', N'03', N'07', N'09', N'SAN ANTONIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030710', N'03', N'07', N'10', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030711', N'03', N'07', N'11', N'TURPAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030712', N'03', N'07', N'12', N'VILCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030713', N'03', N'07', N'13', N'VIRUNDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'030714', N'03', N'07', N'14', N'CURASCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040000', N'04', N'00', N'00', N'AREQUIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040100', N'04', N'01', N'00', N'AREQUIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040101', N'04', N'01', N'01', N'AREQUIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040102', N'04', N'01', N'02', N'ALTO SELVA ALEGRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040103', N'04', N'01', N'03', N'CAYMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040104', N'04', N'01', N'04', N'CERRO COLORADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040105', N'04', N'01', N'05', N'CHARACATO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040106', N'04', N'01', N'06', N'CHIGUATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040107', N'04', N'01', N'07', N'JACOBO HUNTER', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040108', N'04', N'01', N'08', N'LA JOYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040109', N'04', N'01', N'09', N'MARIANO MELGAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040110', N'04', N'01', N'10', N'MIRAFLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040111', N'04', N'01', N'11', N'MOLLEBAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040112', N'04', N'01', N'12', N'PAUCARPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040113', N'04', N'01', N'13', N'POCSI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040114', N'04', N'01', N'14', N'POLOBAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040115', N'04', N'01', N'15', N'QUEQUEÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040116', N'04', N'01', N'16', N'SABANDIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040117', N'04', N'01', N'17', N'SACHACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040118', N'04', N'01', N'18', N'SAN JUAN DE SIGUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040119', N'04', N'01', N'19', N'SAN JUAN DE TARUCANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040120', N'04', N'01', N'20', N'SANTA ISABEL DE SIGUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040121', N'04', N'01', N'21', N'SANTA RITA DE SIGUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040122', N'04', N'01', N'22', N'SOCABAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040123', N'04', N'01', N'23', N'TIABAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040124', N'04', N'01', N'24', N'UCHUMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040125', N'04', N'01', N'25', N'VITOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040126', N'04', N'01', N'26', N'YANAHUARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040127', N'04', N'01', N'27', N'YARABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040128', N'04', N'01', N'28', N'YURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040129', N'04', N'01', N'29', N'JOSE LUIS BUSTAMANTE Y RIVERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040200', N'04', N'02', N'00', N'CAMANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040201', N'04', N'02', N'01', N'CAMANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040202', N'04', N'02', N'02', N'JOSE MARIA QUIMPER', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040203', N'04', N'02', N'03', N'MARIANO NICOLAS VALCARCEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040204', N'04', N'02', N'04', N'MARISCAL CACERES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040205', N'04', N'02', N'05', N'NICOLAS DE PIEROLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040206', N'04', N'02', N'06', N'OCOÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040207', N'04', N'02', N'07', N'QUILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040208', N'04', N'02', N'08', N'SAMUEL PASTOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040300', N'04', N'03', N'00', N'CARAVELI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040301', N'04', N'03', N'01', N'CARAVELI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040302', N'04', N'03', N'02', N'ACARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040303', N'04', N'03', N'03', N'ATICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040304', N'04', N'03', N'04', N'ATIQUIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040305', N'04', N'03', N'05', N'BELLA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040306', N'04', N'03', N'06', N'CAHUACHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040307', N'04', N'03', N'07', N'CHALA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040308', N'04', N'03', N'08', N'CHAPARRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040309', N'04', N'03', N'09', N'HUANUHUANU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040310', N'04', N'03', N'10', N'JAQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040311', N'04', N'03', N'11', N'LOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040312', N'04', N'03', N'12', N'QUICACHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040313', N'04', N'03', N'13', N'YAUCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040400', N'04', N'04', N'00', N'CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040401', N'04', N'04', N'01', N'APLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040402', N'04', N'04', N'02', N'ANDAGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040403', N'04', N'04', N'03', N'AYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040404', N'04', N'04', N'04', N'CHACHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040405', N'04', N'04', N'05', N'CHILCAYMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040406', N'04', N'04', N'06', N'CHOCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040407', N'04', N'04', N'07', N'HUANCARQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040408', N'04', N'04', N'08', N'MACHAGUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040409', N'04', N'04', N'09', N'ORCOPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040410', N'04', N'04', N'10', N'PAMPACOLCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040411', N'04', N'04', N'11', N'TIPAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040412', N'04', N'04', N'12', N'UÑON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040413', N'04', N'04', N'13', N'URACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040414', N'04', N'04', N'14', N'VIRACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040500', N'04', N'05', N'00', N'CAYLLOMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040501', N'04', N'05', N'01', N'CHIVAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040502', N'04', N'05', N'02', N'ACHOMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040503', N'04', N'05', N'03', N'CABANACONDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040504', N'04', N'05', N'04', N'CALLALLI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040505', N'04', N'05', N'05', N'CAYLLOMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040506', N'04', N'05', N'06', N'COPORAQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040507', N'04', N'05', N'07', N'HUAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040508', N'04', N'05', N'08', N'HUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040509', N'04', N'05', N'09', N'ICHUPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040510', N'04', N'05', N'10', N'LARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040511', N'04', N'05', N'11', N'LLUTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040512', N'04', N'05', N'12', N'MACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040513', N'04', N'05', N'13', N'MADRIGAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040514', N'04', N'05', N'14', N'SAN ANTONIO DE CHUCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040515', N'04', N'05', N'15', N'SIBAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040516', N'04', N'05', N'16', N'TAPAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040517', N'04', N'05', N'17', N'TISCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040518', N'04', N'05', N'18', N'TUTI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040519', N'04', N'05', N'19', N'YANQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040520', N'04', N'05', N'20', N'MAJES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040600', N'04', N'06', N'00', N'CONDESUYOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040601', N'04', N'06', N'01', N'CHUQUIBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040602', N'04', N'06', N'02', N'ANDARAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040603', N'04', N'06', N'03', N'CAYARANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040604', N'04', N'06', N'04', N'CHICHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040605', N'04', N'06', N'05', N'IRAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040606', N'04', N'06', N'06', N'RIO GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040607', N'04', N'06', N'07', N'SALAMANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040608', N'04', N'06', N'08', N'YANAQUIHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040700', N'04', N'07', N'00', N'ISLAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040701', N'04', N'07', N'01', N'MOLLENDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040702', N'04', N'07', N'02', N'COCACHACRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040703', N'04', N'07', N'03', N'DEAN VALDIVIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040704', N'04', N'07', N'04', N'ISLAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040705', N'04', N'07', N'05', N'MEJIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040706', N'04', N'07', N'06', N'PUNTA DE BOMBON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040800', N'04', N'08', N'00', N'LA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040801', N'04', N'08', N'01', N'COTAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040802', N'04', N'08', N'02', N'ALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040803', N'04', N'08', N'03', N'CHARCANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040804', N'04', N'08', N'04', N'HUAYNACOTAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040805', N'04', N'08', N'05', N'PAMPAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040806', N'04', N'08', N'06', N'PUYCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040807', N'04', N'08', N'07', N'QUECHUALLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040808', N'04', N'08', N'08', N'SAYLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040809', N'04', N'08', N'09', N'TAURIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040810', N'04', N'08', N'10', N'TOMEPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'040811', N'04', N'08', N'11', N'TORO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050000', N'05', N'00', N'00', N'AYACUCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050100', N'05', N'01', N'00', N'HUAMANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050101', N'05', N'01', N'01', N'AYACUCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050102', N'05', N'01', N'02', N'ACOCRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050103', N'05', N'01', N'03', N'ACOS VINCHOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050104', N'05', N'01', N'04', N'CARMEN ALTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050105', N'05', N'01', N'05', N'CHIARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050106', N'05', N'01', N'06', N'OCROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050107', N'05', N'01', N'07', N'PACAYCASA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050108', N'05', N'01', N'08', N'QUINUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050109', N'05', N'01', N'09', N'SAN JOSE DE TICLLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050110', N'05', N'01', N'10', N'SAN JUAN BAUTISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050111', N'05', N'01', N'11', N'SANTIAGO DE PISCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050112', N'05', N'01', N'12', N'SOCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050113', N'05', N'01', N'13', N'TAMBILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050114', N'05', N'01', N'14', N'VINCHOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050115', N'05', N'01', N'15', N'JESUS NAZARENO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050200', N'05', N'02', N'00', N'CANGALLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050201', N'05', N'02', N'01', N'CANGALLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050202', N'05', N'02', N'02', N'CHUSCHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050203', N'05', N'02', N'03', N'LOS MOROCHUCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050204', N'05', N'02', N'04', N'MARIA PARADO DE BELLIDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050205', N'05', N'02', N'05', N'PARAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050206', N'05', N'02', N'06', N'TOTOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050300', N'05', N'03', N'00', N'HUANCA SANCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050301', N'05', N'03', N'01', N'SANCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050302', N'05', N'03', N'02', N'CARAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050303', N'05', N'03', N'03', N'SACSAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050304', N'05', N'03', N'04', N'SANTIAGO DE LUCANAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050400', N'05', N'04', N'00', N'HUANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050401', N'05', N'04', N'01', N'HUANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050402', N'05', N'04', N'02', N'AYAHUANCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050403', N'05', N'04', N'03', N'HUAMANGUILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050404', N'05', N'04', N'04', N'IGUAIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050405', N'05', N'04', N'05', N'LURICOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050406', N'05', N'04', N'06', N'SANTILLANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050407', N'05', N'04', N'07', N'SIVIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050408', N'05', N'04', N'08', N'LLOCHEGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050500', N'05', N'05', N'00', N'LA MAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050501', N'05', N'05', N'01', N'SAN MIGUEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050502', N'05', N'05', N'02', N'ANCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050503', N'05', N'05', N'03', N'AYNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050504', N'05', N'05', N'04', N'CHILCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050505', N'05', N'05', N'05', N'CHUNGUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050506', N'05', N'05', N'06', N'LUIS CARRANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050507', N'05', N'05', N'07', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050508', N'05', N'05', N'08', N'TAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050600', N'05', N'06', N'00', N'LUCANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050601', N'05', N'06', N'01', N'PUQUIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050602', N'05', N'06', N'02', N'AUCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050603', N'05', N'06', N'03', N'CABANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050604', N'05', N'06', N'04', N'CARMEN SALCEDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050605', N'05', N'06', N'05', N'CHAVIÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050606', N'05', N'06', N'06', N'CHIPAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050607', N'05', N'06', N'07', N'HUAC-HUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050608', N'05', N'06', N'08', N'LARAMATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050609', N'05', N'06', N'09', N'LEONCIO PRADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050610', N'05', N'06', N'10', N'LLAUTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050611', N'05', N'06', N'11', N'LUCANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050612', N'05', N'06', N'12', N'OCAÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050613', N'05', N'06', N'13', N'OTOCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050614', N'05', N'06', N'14', N'SAISA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050615', N'05', N'06', N'15', N'SAN CRISTOBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050616', N'05', N'06', N'16', N'SAN JUAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050617', N'05', N'06', N'17', N'SAN PEDRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050618', N'05', N'06', N'18', N'SAN PEDRO DE PALCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050619', N'05', N'06', N'19', N'SANCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050620', N'05', N'06', N'20', N'SANTA ANA DE HUAYCAHUACHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050621', N'05', N'06', N'21', N'SANTA LUCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050700', N'05', N'07', N'00', N'PARINACOCHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050701', N'05', N'07', N'01', N'CORACORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050702', N'05', N'07', N'02', N'CHUMPI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050703', N'05', N'07', N'03', N'CORONEL CASTAÑEDA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050704', N'05', N'07', N'04', N'PACAPAUSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050705', N'05', N'07', N'05', N'PULLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050706', N'05', N'07', N'06', N'PUYUSCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050707', N'05', N'07', N'07', N'SAN FRANCISCO DE RAVACAYCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050708', N'05', N'07', N'08', N'UPAHUACHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050800', N'05', N'08', N'00', N'PAUCAR DEL SARA SARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050801', N'05', N'08', N'01', N'PAUSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050802', N'05', N'08', N'02', N'COLTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050803', N'05', N'08', N'03', N'CORCULLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050804', N'05', N'08', N'04', N'LAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050805', N'05', N'08', N'05', N'MARCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050806', N'05', N'08', N'06', N'OYOLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050807', N'05', N'08', N'07', N'PARARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050808', N'05', N'08', N'08', N'SAN JAVIER DE ALPABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050809', N'05', N'08', N'09', N'SAN JOSE DE USHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050810', N'05', N'08', N'10', N'SARA SARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050900', N'05', N'09', N'00', N'SUCRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050901', N'05', N'09', N'01', N'QUEROBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050902', N'05', N'09', N'02', N'BELEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050903', N'05', N'09', N'03', N'CHALCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050904', N'05', N'09', N'04', N'CHILCAYOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050905', N'05', N'09', N'05', N'HUACAÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050906', N'05', N'09', N'06', N'MORCOLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050907', N'05', N'09', N'07', N'PAICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050908', N'05', N'09', N'08', N'SAN PEDRO DE LARCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050909', N'05', N'09', N'09', N'SAN SALVADOR DE QUIJE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050910', N'05', N'09', N'10', N'SANTIAGO DE PAUCARAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'050911', N'05', N'09', N'11', N'SORAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051000', N'05', N'10', N'00', N'VICTOR FAJARDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051001', N'05', N'10', N'01', N'HUANCAPI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051002', N'05', N'10', N'02', N'ALCAMENCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051003', N'05', N'10', N'03', N'APONGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051004', N'05', N'10', N'04', N'ASQUIPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051005', N'05', N'10', N'05', N'CANARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051006', N'05', N'10', N'06', N'CAYARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051007', N'05', N'10', N'07', N'COLCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051008', N'05', N'10', N'08', N'HUAMANQUIQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051009', N'05', N'10', N'09', N'HUANCARAYLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051010', N'05', N'10', N'10', N'HUAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051011', N'05', N'10', N'11', N'SARHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051012', N'05', N'10', N'12', N'VILCANCHOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051100', N'05', N'11', N'00', N'VILCAS HUAMAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051101', N'05', N'11', N'01', N'VILCAS HUAMAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051102', N'05', N'11', N'02', N'ACCOMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051103', N'05', N'11', N'03', N'CARHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051104', N'05', N'11', N'04', N'CONCEPCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051105', N'05', N'11', N'05', N'HUAMBALPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051106', N'05', N'11', N'06', N'INDEPENDENCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051107', N'05', N'11', N'07', N'SAURAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'051108', N'05', N'11', N'08', N'VISCHONGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060000', N'06', N'00', N'00', N'CAJAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060100', N'06', N'01', N'00', N'CAJAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060101', N'06', N'01', N'01', N'CAJAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060102', N'06', N'01', N'02', N'ASUNCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060103', N'06', N'01', N'03', N'CHETILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060104', N'06', N'01', N'04', N'COSPAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060105', N'06', N'01', N'05', N'ENCAÑADA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060106', N'06', N'01', N'06', N'JESUS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060107', N'06', N'01', N'07', N'LLACANORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060108', N'06', N'01', N'08', N'LOS BAÑOS DEL INCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060109', N'06', N'01', N'09', N'MAGDALENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060110', N'06', N'01', N'10', N'MATARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060111', N'06', N'01', N'11', N'NAMORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060112', N'06', N'01', N'12', N'SAN JUAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060200', N'06', N'02', N'00', N'CAJABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060201', N'06', N'02', N'01', N'CAJABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060202', N'06', N'02', N'02', N'CACHACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060203', N'06', N'02', N'03', N'CONDEBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060204', N'06', N'02', N'04', N'SITACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060300', N'06', N'03', N'00', N'CELENDIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060301', N'06', N'03', N'01', N'CELENDIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060302', N'06', N'03', N'02', N'CHUMUCH', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060303', N'06', N'03', N'03', N'CORTEGANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060304', N'06', N'03', N'04', N'HUASMIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060305', N'06', N'03', N'05', N'JORGE CHAVEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060306', N'06', N'03', N'06', N'JOSE GALVEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060307', N'06', N'03', N'07', N'MIGUEL IGLESIAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060308', N'06', N'03', N'08', N'OXAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060309', N'06', N'03', N'09', N'SOROCHUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060310', N'06', N'03', N'10', N'SUCRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060311', N'06', N'03', N'11', N'UTCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060312', N'06', N'03', N'12', N'LA LIBERTAD DE PALLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060400', N'06', N'04', N'00', N'CHOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060401', N'06', N'04', N'01', N'CHOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060402', N'06', N'04', N'02', N'ANGUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060403', N'06', N'04', N'03', N'CHADIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060404', N'06', N'04', N'04', N'CHIGUIRIP', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060405', N'06', N'04', N'05', N'CHIMBAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060406', N'06', N'04', N'06', N'CHOROPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060407', N'06', N'04', N'07', N'COCHABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060408', N'06', N'04', N'08', N'CONCHAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060409', N'06', N'04', N'09', N'HUAMBOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060410', N'06', N'04', N'10', N'LAJAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060411', N'06', N'04', N'11', N'LLAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060412', N'06', N'04', N'12', N'MIRACOSTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060413', N'06', N'04', N'13', N'PACCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060414', N'06', N'04', N'14', N'PION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060415', N'06', N'04', N'15', N'QUEROCOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060416', N'06', N'04', N'16', N'SAN JUAN DE LICUPIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060417', N'06', N'04', N'17', N'TACABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060418', N'06', N'04', N'18', N'TOCMOCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060419', N'06', N'04', N'19', N'CHALAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060500', N'06', N'05', N'00', N'CONTUMAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060501', N'06', N'05', N'01', N'CONTUMAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060502', N'06', N'05', N'02', N'CHILETE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060503', N'06', N'05', N'03', N'CUPISNIQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060504', N'06', N'05', N'04', N'GUZMANGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060505', N'06', N'05', N'05', N'SAN BENITO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060506', N'06', N'05', N'06', N'SANTA CRUZ DE TOLED', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060507', N'06', N'05', N'07', N'TANTARICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060508', N'06', N'05', N'08', N'YONAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060600', N'06', N'06', N'00', N'CUTERVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060601', N'06', N'06', N'01', N'CUTERVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060602', N'06', N'06', N'02', N'CALLAYUC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060603', N'06', N'06', N'03', N'CHOROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060604', N'06', N'06', N'04', N'CUJILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060605', N'06', N'06', N'05', N'LA RAMADA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060606', N'06', N'06', N'06', N'PIMPINGOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060607', N'06', N'06', N'07', N'QUEROCOTILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060608', N'06', N'06', N'08', N'SAN ANDRES DE CUTERVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060609', N'06', N'06', N'09', N'SAN JUAN DE CUTERVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060610', N'06', N'06', N'10', N'SAN LUIS DE LUCMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060611', N'06', N'06', N'11', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060612', N'06', N'06', N'12', N'SANTO DOMINGO DE LA CAPILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060613', N'06', N'06', N'13', N'SANTO TOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060614', N'06', N'06', N'14', N'SOCOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060615', N'06', N'06', N'15', N'TORIBIO CASANOVA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060700', N'06', N'07', N'00', N'HUALGAYOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060701', N'06', N'07', N'01', N'BAMBAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060702', N'06', N'07', N'02', N'CHUGUR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060703', N'06', N'07', N'03', N'HUALGAYOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060800', N'06', N'08', N'00', N'JAEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060801', N'06', N'08', N'01', N'JAEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060802', N'06', N'08', N'02', N'BELLAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060803', N'06', N'08', N'03', N'CHONTALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060804', N'06', N'08', N'04', N'COLASAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060805', N'06', N'08', N'05', N'HUABAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060806', N'06', N'08', N'06', N'LAS PIRIAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060807', N'06', N'08', N'07', N'POMAHUACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060808', N'06', N'08', N'08', N'PUCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060809', N'06', N'08', N'09', N'SALLIQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060810', N'06', N'08', N'10', N'SAN FELIPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060811', N'06', N'08', N'11', N'SAN JOSE DEL ALTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060812', N'06', N'08', N'12', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060900', N'06', N'09', N'00', N'SAN IGNACIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060901', N'06', N'09', N'01', N'SAN IGNACIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060902', N'06', N'09', N'02', N'CHIRINOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060903', N'06', N'09', N'03', N'HUARANGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060904', N'06', N'09', N'04', N'LA COIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060905', N'06', N'09', N'05', N'NAMBALLE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060906', N'06', N'09', N'06', N'SAN JOSE DE LOURDES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'060907', N'06', N'09', N'07', N'TABACONAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061000', N'06', N'10', N'00', N'SAN MARCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061001', N'06', N'10', N'01', N'PEDRO GALVEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061002', N'06', N'10', N'02', N'CHANCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061003', N'06', N'10', N'03', N'EDUARDO VILLANUEVA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061004', N'06', N'10', N'04', N'GREGORIO PITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061005', N'06', N'10', N'05', N'ICHOCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061006', N'06', N'10', N'06', N'JOSE MANUEL QUIROZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061007', N'06', N'10', N'07', N'JOSE SABOGAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061100', N'06', N'11', N'00', N'SAN MIGUEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061101', N'06', N'11', N'01', N'SAN MIGUEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061102', N'06', N'11', N'02', N'BOLIVAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061103', N'06', N'11', N'03', N'CALQUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061104', N'06', N'11', N'04', N'CATILLUC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061105', N'06', N'11', N'05', N'EL PRADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061106', N'06', N'11', N'06', N'LA FLORIDA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061107', N'06', N'11', N'07', N'LLAPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061108', N'06', N'11', N'08', N'NANCHOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061109', N'06', N'11', N'09', N'NIEPOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061110', N'06', N'11', N'10', N'SAN GREGORIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061111', N'06', N'11', N'11', N'SAN SILVESTRE DE COCHAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061112', N'06', N'11', N'12', N'TONGOD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061113', N'06', N'11', N'13', N'UNION AGUA BLANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061200', N'06', N'12', N'00', N'SAN PABLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061201', N'06', N'12', N'01', N'SAN PABLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061202', N'06', N'12', N'02', N'SAN BERNARDINO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061203', N'06', N'12', N'03', N'SAN LUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061204', N'06', N'12', N'04', N'TUMBADEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061300', N'06', N'13', N'00', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061301', N'06', N'13', N'01', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061302', N'06', N'13', N'02', N'ANDABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061303', N'06', N'13', N'03', N'CATACHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061304', N'06', N'13', N'04', N'CHANCAYBAÑOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061305', N'06', N'13', N'05', N'LA ESPERANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061306', N'06', N'13', N'06', N'NINABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061307', N'06', N'13', N'07', N'PULAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061308', N'06', N'13', N'08', N'SAUCEPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061309', N'06', N'13', N'09', N'SEXI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061310', N'06', N'13', N'10', N'UTICYACU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'061311', N'06', N'13', N'11', N'YAUYUCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070000', N'07', N'00', N'00', N'CALLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070100', N'07', N'01', N'00', N'CALLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070101', N'07', N'01', N'01', N'CALLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070102', N'07', N'01', N'02', N'BELLAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070103', N'07', N'01', N'03', N'CARMEN DE LA LEGUA REYNOSO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070104', N'07', N'01', N'04', N'LA PERLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070105', N'07', N'01', N'05', N'LA PUNTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'070106', N'07', N'01', N'06', N'VENTANILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080000', N'08', N'00', N'00', N'CUSCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080100', N'08', N'01', N'00', N'CUSCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080101', N'08', N'01', N'01', N'CUSCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080102', N'08', N'01', N'02', N'CCORCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080103', N'08', N'01', N'03', N'POROY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080104', N'08', N'01', N'04', N'SAN JERONIMO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080105', N'08', N'01', N'05', N'SAN SEBASTIAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080106', N'08', N'01', N'06', N'SANTIAGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080107', N'08', N'01', N'07', N'SAYLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080108', N'08', N'01', N'08', N'WANCHAQ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080200', N'08', N'02', N'00', N'ACOMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080201', N'08', N'02', N'01', N'ACOMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080202', N'08', N'02', N'02', N'ACOPIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080203', N'08', N'02', N'03', N'ACOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080204', N'08', N'02', N'04', N'MOSOC LLACTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080205', N'08', N'02', N'05', N'POMACANCHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080206', N'08', N'02', N'06', N'RONDOCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080207', N'08', N'02', N'07', N'SANGARARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080300', N'08', N'03', N'00', N'ANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080301', N'08', N'03', N'01', N'ANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080302', N'08', N'03', N'02', N'ANCAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080303', N'08', N'03', N'03', N'CACHIMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080304', N'08', N'03', N'04', N'CHINCHAYPUJIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080305', N'08', N'03', N'05', N'HUAROCONDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080306', N'08', N'03', N'06', N'LIMATAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080307', N'08', N'03', N'07', N'MOLLEPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080308', N'08', N'03', N'08', N'PUCYURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080309', N'08', N'03', N'09', N'ZURITE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080400', N'08', N'04', N'00', N'CALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080401', N'08', N'04', N'01', N'CALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080402', N'08', N'04', N'02', N'COYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080403', N'08', N'04', N'03', N'LAMAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080404', N'08', N'04', N'04', N'LARES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080405', N'08', N'04', N'05', N'PISAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080406', N'08', N'04', N'06', N'SAN SALVADOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080407', N'08', N'04', N'07', N'TARAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080408', N'08', N'04', N'08', N'YANATILE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080500', N'08', N'05', N'00', N'CANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080501', N'08', N'05', N'01', N'YANAOCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080502', N'08', N'05', N'02', N'CHECCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080503', N'08', N'05', N'03', N'KUNTURKANKI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080504', N'08', N'05', N'04', N'LANGUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080505', N'08', N'05', N'05', N'LAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080506', N'08', N'05', N'06', N'PAMPAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080507', N'08', N'05', N'07', N'QUEHUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080508', N'08', N'05', N'08', N'TUPAC AMARU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080600', N'08', N'06', N'00', N'CANCHIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080601', N'08', N'06', N'01', N'SICUANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080602', N'08', N'06', N'02', N'CHECACUPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080603', N'08', N'06', N'03', N'COMBAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080604', N'08', N'06', N'04', N'MARANGANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080605', N'08', N'06', N'05', N'PITUMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080606', N'08', N'06', N'06', N'SAN PABLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080607', N'08', N'06', N'07', N'SAN PEDRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080608', N'08', N'06', N'08', N'TINTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080700', N'08', N'07', N'00', N'CHUMBIVILCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080701', N'08', N'07', N'01', N'SANTO TOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080702', N'08', N'07', N'02', N'CAPACMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080703', N'08', N'07', N'03', N'CHAMACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080704', N'08', N'07', N'04', N'COLQUEMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080705', N'08', N'07', N'05', N'LIVITACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080706', N'08', N'07', N'06', N'LLUSCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080707', N'08', N'07', N'07', N'QUIÑOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080708', N'08', N'07', N'08', N'VELILLE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080800', N'08', N'08', N'00', N'ESPINAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080801', N'08', N'08', N'01', N'ESPINAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080802', N'08', N'08', N'02', N'CONDOROMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080803', N'08', N'08', N'03', N'COPORAQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080804', N'08', N'08', N'04', N'OCORURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080805', N'08', N'08', N'05', N'PALLPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080806', N'08', N'08', N'06', N'PICHIGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080807', N'08', N'08', N'07', N'SUYCKUTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080808', N'08', N'08', N'08', N'ALTO PICHIGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080900', N'08', N'09', N'00', N'LA CONVENCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080901', N'08', N'09', N'01', N'SANTA ANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080902', N'08', N'09', N'02', N'ECHARATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080903', N'08', N'09', N'03', N'HUAYOPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080904', N'08', N'09', N'04', N'MARANURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080905', N'08', N'09', N'05', N'OCOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080906', N'08', N'09', N'06', N'QUELLOUNO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080907', N'08', N'09', N'07', N'KIMBIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080908', N'08', N'09', N'08', N'SANTA TERESA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080909', N'08', N'09', N'09', N'VILCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'080910', N'08', N'09', N'10', N'PICHARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081000', N'08', N'10', N'00', N'PARURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081001', N'08', N'10', N'01', N'PARURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081002', N'08', N'10', N'02', N'ACCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081003', N'08', N'10', N'03', N'CCAPI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081004', N'08', N'10', N'04', N'COLCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081005', N'08', N'10', N'05', N'HUANOQUITE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081006', N'08', N'10', N'06', N'OMACHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081007', N'08', N'10', N'07', N'PACCARITAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081008', N'08', N'10', N'08', N'PILLPINTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081009', N'08', N'10', N'09', N'YAURISQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081100', N'08', N'11', N'00', N'PAUCARTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081101', N'08', N'11', N'01', N'PAUCARTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081102', N'08', N'11', N'02', N'CAICAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081103', N'08', N'11', N'03', N'CHALLABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081104', N'08', N'11', N'04', N'COLQUEPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081105', N'08', N'11', N'05', N'HUANCARANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081106', N'08', N'11', N'06', N'KOSÑIPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081200', N'08', N'12', N'00', N'QUISPICANCHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081201', N'08', N'12', N'01', N'URCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081202', N'08', N'12', N'02', N'ANDAHUAYLILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081203', N'08', N'12', N'03', N'CAMANTI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081204', N'08', N'12', N'04', N'CCARHUAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081205', N'08', N'12', N'05', N'CCATCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081206', N'08', N'12', N'06', N'CUSIPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081207', N'08', N'12', N'07', N'HUARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081208', N'08', N'12', N'08', N'LUCRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081209', N'08', N'12', N'09', N'MARCAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081210', N'08', N'12', N'10', N'OCONGATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081211', N'08', N'12', N'11', N'OROPESA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081212', N'08', N'12', N'12', N'QUIQUIJANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081300', N'08', N'13', N'00', N'URUBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081301', N'08', N'13', N'01', N'URUBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081302', N'08', N'13', N'02', N'CHINCHERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081303', N'08', N'13', N'03', N'HUAYLLABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081304', N'08', N'13', N'04', N'MACHUPICCHU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081305', N'08', N'13', N'05', N'MARAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081306', N'08', N'13', N'06', N'OLLANTAYTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'081307', N'08', N'13', N'07', N'YUCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090000', N'09', N'00', N'00', N'HUANCAVELICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090100', N'09', N'01', N'00', N'HUANCAVELICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090101', N'09', N'01', N'01', N'HUANCAVELICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090102', N'09', N'01', N'02', N'ACOBAMBILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090103', N'09', N'01', N'03', N'ACORIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090104', N'09', N'01', N'04', N'CONAYCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090105', N'09', N'01', N'05', N'CUENCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090106', N'09', N'01', N'06', N'HUACHOCOLPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090107', N'09', N'01', N'07', N'HUAYLLAHUARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090108', N'09', N'01', N'08', N'IZCUCHACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090109', N'09', N'01', N'09', N'LARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090110', N'09', N'01', N'10', N'MANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090111', N'09', N'01', N'11', N'MARISCAL CACERES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090112', N'09', N'01', N'12', N'MOYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090113', N'09', N'01', N'13', N'NUEVO OCCORO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090114', N'09', N'01', N'14', N'PALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090115', N'09', N'01', N'15', N'PILCHACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090116', N'09', N'01', N'16', N'VILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090117', N'09', N'01', N'17', N'YAULI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090118', N'09', N'01', N'18', N'ASCENSION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090119', N'09', N'01', N'19', N'HUANDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090200', N'09', N'02', N'00', N'ACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090201', N'09', N'02', N'01', N'ACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090202', N'09', N'02', N'02', N'ANDABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090203', N'09', N'02', N'03', N'ANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090204', N'09', N'02', N'04', N'CAJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090205', N'09', N'02', N'05', N'MARCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090206', N'09', N'02', N'06', N'PAUCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090207', N'09', N'02', N'07', N'POMACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090208', N'09', N'02', N'08', N'ROSARIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090300', N'09', N'03', N'00', N'ANGARAES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090301', N'09', N'03', N'01', N'LIRCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090302', N'09', N'03', N'02', N'ANCHONGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090303', N'09', N'03', N'03', N'CALLANMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090304', N'09', N'03', N'04', N'CCOCHACCASA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090305', N'09', N'03', N'05', N'CHINCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090306', N'09', N'03', N'06', N'CONGALLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090307', N'09', N'03', N'07', N'HUANCA-HUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090308', N'09', N'03', N'08', N'HUAYLLAY GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090309', N'09', N'03', N'09', N'JULCAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090310', N'09', N'03', N'10', N'SAN ANTONIO DE ANTAPARCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090311', N'09', N'03', N'11', N'SANTO TOMAS DE PATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090312', N'09', N'03', N'12', N'SECCLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090400', N'09', N'04', N'00', N'CASTROVIRREYNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090401', N'09', N'04', N'01', N'CASTROVIRREYNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090402', N'09', N'04', N'02', N'ARMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090403', N'09', N'04', N'03', N'AURAHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090404', N'09', N'04', N'04', N'CAPILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090405', N'09', N'04', N'05', N'CHUPAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090406', N'09', N'04', N'06', N'COCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090407', N'09', N'04', N'07', N'HUACHOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090408', N'09', N'04', N'08', N'HUAMATAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090409', N'09', N'04', N'09', N'MOLLEPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090410', N'09', N'04', N'10', N'SAN JUAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090411', N'09', N'04', N'11', N'SANTA ANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090412', N'09', N'04', N'12', N'TANTARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090413', N'09', N'04', N'13', N'TICRAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090500', N'09', N'05', N'00', N'CHURCAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090501', N'09', N'05', N'01', N'CHURCAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090502', N'09', N'05', N'02', N'ANCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090503', N'09', N'05', N'03', N'CHINCHIHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090504', N'09', N'05', N'04', N'EL CARMEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090505', N'09', N'05', N'05', N'LA MERCED', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090506', N'09', N'05', N'06', N'LOCROJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090507', N'09', N'05', N'07', N'PAUCARBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090508', N'09', N'05', N'08', N'SAN MIGUEL DE MAYOCC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090509', N'09', N'05', N'09', N'SAN PEDRO DE CORIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090510', N'09', N'05', N'10', N'PACHAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090600', N'09', N'06', N'00', N'HUAYTARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090601', N'09', N'06', N'01', N'HUAYTARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090602', N'09', N'06', N'02', N'AYAVI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090603', N'09', N'06', N'03', N'CORDOVA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090604', N'09', N'06', N'04', N'HUAYACUNDO ARMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090605', N'09', N'06', N'05', N'LARAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090606', N'09', N'06', N'06', N'OCOYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090607', N'09', N'06', N'07', N'PILPICHACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090608', N'09', N'06', N'08', N'QUERCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090609', N'09', N'06', N'09', N'QUITO-ARMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090610', N'09', N'06', N'10', N'SAN ANTONIO DE CUSICANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090611', N'09', N'06', N'11', N'SAN FRANCISCO DE SANGAYAICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090612', N'09', N'06', N'12', N'SAN ISIDRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090613', N'09', N'06', N'13', N'SANTIAGO DE CHOCORVOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090614', N'09', N'06', N'14', N'SANTIAGO DE QUIRAHUARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090615', N'09', N'06', N'15', N'SANTO DOMINGO DE CAPILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090616', N'09', N'06', N'16', N'TAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090700', N'09', N'07', N'00', N'TAYACAJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090701', N'09', N'07', N'01', N'PAMPAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090702', N'09', N'07', N'02', N'ACOSTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090703', N'09', N'07', N'03', N'ACRAQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090704', N'09', N'07', N'04', N'AHUAYCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090705', N'09', N'07', N'05', N'COLCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090706', N'09', N'07', N'06', N'DANIEL HERNANDEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090707', N'09', N'07', N'07', N'HUACHOCOLPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090709', N'09', N'07', N'09', N'HUARIBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090710', N'09', N'07', N'10', N'ÑAHUIMPUQUIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090711', N'09', N'07', N'11', N'PAZOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090713', N'09', N'07', N'13', N'QUISHUAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090714', N'09', N'07', N'14', N'SALCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090715', N'09', N'07', N'15', N'SALCAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090716', N'09', N'07', N'16', N'SAN MARCOS DE ROCCHAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090717', N'09', N'07', N'17', N'SURCUBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'090718', N'09', N'07', N'18', N'TINTAY PUNCU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100000', N'10', N'00', N'00', N'HUANUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100100', N'10', N'01', N'00', N'HUANUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100101', N'10', N'01', N'01', N'HUANUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100102', N'10', N'01', N'02', N'AMARILIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100103', N'10', N'01', N'03', N'CHINCHAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100104', N'10', N'01', N'04', N'CHURUBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100105', N'10', N'01', N'05', N'MARGOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100106', N'10', N'01', N'06', N'QUISQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100107', N'10', N'01', N'07', N'SAN FRANCISCO DE CAYRAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100108', N'10', N'01', N'08', N'SAN PEDRO DE CHAULAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100109', N'10', N'01', N'09', N'SANTA MARIA DEL VALLE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100110', N'10', N'01', N'10', N'YARUMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100111', N'10', N'01', N'11', N'PILLCO MARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100200', N'10', N'02', N'00', N'AMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100201', N'10', N'02', N'01', N'AMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100202', N'10', N'02', N'02', N'CAYNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100203', N'10', N'02', N'03', N'COLPAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100204', N'10', N'02', N'04', N'CONCHAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100205', N'10', N'02', N'05', N'HUACAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100206', N'10', N'02', N'06', N'SAN FRANCISCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100207', N'10', N'02', N'07', N'SAN RAFAEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100208', N'10', N'02', N'08', N'TOMAY KICHWA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100300', N'10', N'03', N'00', N'DOS DE MAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100301', N'10', N'03', N'01', N'LA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100307', N'10', N'03', N'07', N'CHUQUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100311', N'10', N'03', N'11', N'MARIAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100313', N'10', N'03', N'13', N'PACHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100316', N'10', N'03', N'16', N'QUIVILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100317', N'10', N'03', N'17', N'RIPAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100321', N'10', N'03', N'21', N'SHUNQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100322', N'10', N'03', N'22', N'SILLAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100323', N'10', N'03', N'23', N'YANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100400', N'10', N'04', N'00', N'HUACAYBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100401', N'10', N'04', N'01', N'HUACAYBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100402', N'10', N'04', N'02', N'CANCHABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100403', N'10', N'04', N'03', N'COCHABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100404', N'10', N'04', N'04', N'PINRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100500', N'10', N'05', N'00', N'HUAMALIES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100501', N'10', N'05', N'01', N'LLATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100502', N'10', N'05', N'02', N'ARANCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100503', N'10', N'05', N'03', N'CHAVIN DE PARIARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100504', N'10', N'05', N'04', N'JACAS GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100505', N'10', N'05', N'05', N'JIRCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100506', N'10', N'05', N'06', N'MIRAFLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100507', N'10', N'05', N'07', N'MONZON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100508', N'10', N'05', N'08', N'PUNCHAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100509', N'10', N'05', N'09', N'PUÑOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100510', N'10', N'05', N'10', N'SINGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100511', N'10', N'05', N'11', N'TANTAMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100600', N'10', N'06', N'00', N'LEONCIO PRADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100601', N'10', N'06', N'01', N'RUPA-RUPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100602', N'10', N'06', N'02', N'DANIEL ALOMIAS ROBLES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100603', N'10', N'06', N'03', N'HERMILIO VALDIZAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100604', N'10', N'06', N'04', N'JOSE CRESPO Y CASTILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100605', N'10', N'06', N'05', N'LUYANDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100606', N'10', N'06', N'06', N'MARIANO DAMASO BERAUN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100700', N'10', N'07', N'00', N'MARAÑON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100701', N'10', N'07', N'01', N'HUACRACHUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100702', N'10', N'07', N'02', N'CHOLON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100703', N'10', N'07', N'03', N'SAN BUENAVENTURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100800', N'10', N'08', N'00', N'PACHITEA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100801', N'10', N'08', N'01', N'PANAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100802', N'10', N'08', N'02', N'CHAGLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100803', N'10', N'08', N'03', N'MOLINO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100804', N'10', N'08', N'04', N'UMARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100900', N'10', N'09', N'00', N'PUERTO INCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100901', N'10', N'09', N'01', N'PUERTO INCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100902', N'10', N'09', N'02', N'CODO DEL POZUZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100903', N'10', N'09', N'03', N'HONORIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100904', N'10', N'09', N'04', N'TOURNAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'100905', N'10', N'09', N'05', N'YUYAPICHIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101000', N'10', N'10', N'00', N'LAURICOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101001', N'10', N'10', N'01', N'JESUS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101002', N'10', N'10', N'02', N'BAÑOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101003', N'10', N'10', N'03', N'JIVIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101004', N'10', N'10', N'04', N'QUEROPALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101005', N'10', N'10', N'05', N'RONDOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101006', N'10', N'10', N'06', N'SAN FRANCISCO DE ASIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101007', N'10', N'10', N'07', N'SAN MIGUEL DE CAURI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101100', N'10', N'11', N'00', N'YAROWILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101101', N'10', N'11', N'01', N'CHAVINILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101102', N'10', N'11', N'02', N'CAHUAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101103', N'10', N'11', N'03', N'CHACABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101104', N'10', N'11', N'04', N'APARICIO POMARES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101105', N'10', N'11', N'05', N'JACAS CHICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101106', N'10', N'11', N'06', N'OBAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101107', N'10', N'11', N'07', N'PAMPAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'101108', N'10', N'11', N'08', N'CHORAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110000', N'11', N'00', N'00', N'ICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110100', N'11', N'01', N'00', N'ICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110101', N'11', N'01', N'01', N'ICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110102', N'11', N'01', N'02', N'LA TINGUIÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110103', N'11', N'01', N'03', N'LOS AQUIJES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110104', N'11', N'01', N'04', N'OCUCAJE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110105', N'11', N'01', N'05', N'PACHACUTEC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110106', N'11', N'01', N'06', N'PARCONA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110107', N'11', N'01', N'07', N'PUEBLO NUEVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110108', N'11', N'01', N'08', N'SALAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110109', N'11', N'01', N'09', N'SAN JOSE DE LOS MOLINOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110110', N'11', N'01', N'10', N'SAN JUAN BAUTISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110111', N'11', N'01', N'11', N'SANTIAGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110112', N'11', N'01', N'12', N'SUBTANJALLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110113', N'11', N'01', N'13', N'TATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110114', N'11', N'01', N'14', N'YAUCA DEL ROSARIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110200', N'11', N'02', N'00', N'CHINCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110201', N'11', N'02', N'01', N'CHINCHA ALTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110202', N'11', N'02', N'02', N'ALTO LARAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110203', N'11', N'02', N'03', N'CHAVIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110204', N'11', N'02', N'04', N'CHINCHA BAJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110205', N'11', N'02', N'05', N'EL CARMEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110206', N'11', N'02', N'06', N'GROCIO PRADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110207', N'11', N'02', N'07', N'PUEBLO NUEVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110208', N'11', N'02', N'08', N'SAN JUAN DE YANAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110209', N'11', N'02', N'09', N'SAN PEDRO DE HUACARPANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110210', N'11', N'02', N'10', N'SUNAMPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110211', N'11', N'02', N'11', N'TAMBO DE MORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110300', N'11', N'03', N'00', N'NAZCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110301', N'11', N'03', N'01', N'NAZCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110302', N'11', N'03', N'02', N'CHANGUILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110303', N'11', N'03', N'03', N'EL INGENIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110304', N'11', N'03', N'04', N'MARCONA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110305', N'11', N'03', N'05', N'VISTA ALEGRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110400', N'11', N'04', N'00', N'PALPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110401', N'11', N'04', N'01', N'PALPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110402', N'11', N'04', N'02', N'LLIPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110403', N'11', N'04', N'03', N'RIO GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110404', N'11', N'04', N'04', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110405', N'11', N'04', N'05', N'TIBILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110500', N'11', N'05', N'00', N'PISCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110501', N'11', N'05', N'01', N'PISCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110502', N'11', N'05', N'02', N'HUANCANO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110503', N'11', N'05', N'03', N'HUMAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110504', N'11', N'05', N'04', N'INDEPENDENCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110505', N'11', N'05', N'05', N'PARACAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110506', N'11', N'05', N'06', N'SAN ANDRES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110507', N'11', N'05', N'07', N'SAN CLEMENTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'110508', N'11', N'05', N'08', N'TUPAC AMARU INCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120000', N'12', N'00', N'00', N'JUNIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120100', N'12', N'01', N'00', N'HUANCAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120101', N'12', N'01', N'01', N'HUANCAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120104', N'12', N'01', N'04', N'CARHUACALLANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120105', N'12', N'01', N'05', N'CHACAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120106', N'12', N'01', N'06', N'CHICCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120107', N'12', N'01', N'07', N'CHILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120108', N'12', N'01', N'08', N'CHONGOS ALTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120111', N'12', N'01', N'11', N'CHUPURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120112', N'12', N'01', N'12', N'COLCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120113', N'12', N'01', N'13', N'CULLHUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120114', N'12', N'01', N'14', N'EL TAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120116', N'12', N'01', N'16', N'HUACRAPUQUIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120117', N'12', N'01', N'17', N'HUALHUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120119', N'12', N'01', N'19', N'HUANCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120120', N'12', N'01', N'20', N'HUASICANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120121', N'12', N'01', N'21', N'HUAYUCACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120122', N'12', N'01', N'22', N'INGENIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120124', N'12', N'01', N'24', N'PARIAHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120125', N'12', N'01', N'25', N'PILCOMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120126', N'12', N'01', N'26', N'PUCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120127', N'12', N'01', N'27', N'QUICHUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120128', N'12', N'01', N'28', N'QUILCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120129', N'12', N'01', N'29', N'SAN AGUSTIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120130', N'12', N'01', N'30', N'SAN JERONIMO DE TUNAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120132', N'12', N'01', N'32', N'SAÑO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120133', N'12', N'01', N'33', N'SAPALLANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120134', N'12', N'01', N'34', N'SICAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120135', N'12', N'01', N'35', N'SANTO DOMINGO DE ACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120136', N'12', N'01', N'36', N'VIQUES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120200', N'12', N'02', N'00', N'CONCEPCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120201', N'12', N'02', N'01', N'CONCEPCION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120202', N'12', N'02', N'02', N'ACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120203', N'12', N'02', N'03', N'ANDAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120204', N'12', N'02', N'04', N'CHAMBARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120205', N'12', N'02', N'05', N'COCHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120206', N'12', N'02', N'06', N'COMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120207', N'12', N'02', N'07', N'HEROINAS TOLEDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120208', N'12', N'02', N'08', N'MANZANARES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120209', N'12', N'02', N'09', N'MARISCAL CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120210', N'12', N'02', N'10', N'MATAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120211', N'12', N'02', N'11', N'MITO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120212', N'12', N'02', N'12', N'NUEVE DE JULIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120213', N'12', N'02', N'13', N'ORCOTUNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120214', N'12', N'02', N'14', N'SAN JOSE DE QUERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120215', N'12', N'02', N'15', N'SANTA ROSA DE OCOPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120300', N'12', N'03', N'00', N'CHANCHAMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120301', N'12', N'03', N'01', N'CHANCHAMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120302', N'12', N'03', N'02', N'PERENE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120303', N'12', N'03', N'03', N'PICHANAQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120304', N'12', N'03', N'04', N'SAN LUIS DE SHUARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120305', N'12', N'03', N'05', N'SAN RAMON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120306', N'12', N'03', N'06', N'VITOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120400', N'12', N'04', N'00', N'JAUJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120401', N'12', N'04', N'01', N'JAUJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120402', N'12', N'04', N'02', N'ACOLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120403', N'12', N'04', N'03', N'APATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120404', N'12', N'04', N'04', N'ATAURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120405', N'12', N'04', N'05', N'CANCHAYLLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120406', N'12', N'04', N'06', N'CURICACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120407', N'12', N'04', N'07', N'EL MANTARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120408', N'12', N'04', N'08', N'HUAMALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120409', N'12', N'04', N'09', N'HUARIPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120410', N'12', N'04', N'10', N'HUERTAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120411', N'12', N'04', N'11', N'JANJAILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120412', N'12', N'04', N'12', N'JULCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120413', N'12', N'04', N'13', N'LEONOR ORDOÑEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120414', N'12', N'04', N'14', N'LLOCLLAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120415', N'12', N'04', N'15', N'MARCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120416', N'12', N'04', N'16', N'MASMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120417', N'12', N'04', N'17', N'MASMA CHICCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120418', N'12', N'04', N'18', N'MOLINOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120419', N'12', N'04', N'19', N'MONOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120420', N'12', N'04', N'20', N'MUQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120421', N'12', N'04', N'21', N'MUQUIYAUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120422', N'12', N'04', N'22', N'PACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120423', N'12', N'04', N'23', N'PACCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120424', N'12', N'04', N'24', N'PANCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120425', N'12', N'04', N'25', N'PARCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120426', N'12', N'04', N'26', N'POMACANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120427', N'12', N'04', N'27', N'RICRAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120428', N'12', N'04', N'28', N'SAN LORENZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120429', N'12', N'04', N'29', N'SAN PEDRO DE CHUNAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120430', N'12', N'04', N'30', N'SAUSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120431', N'12', N'04', N'31', N'SINCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120432', N'12', N'04', N'32', N'TUNAN MARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120433', N'12', N'04', N'33', N'YAULI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120434', N'12', N'04', N'34', N'YAUYOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120500', N'12', N'05', N'00', N'JUNIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120501', N'12', N'05', N'01', N'JUNIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120502', N'12', N'05', N'02', N'CARHUAMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120503', N'12', N'05', N'03', N'ONDORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120504', N'12', N'05', N'04', N'ULCUMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120600', N'12', N'06', N'00', N'SATIPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120601', N'12', N'06', N'01', N'SATIPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120602', N'12', N'06', N'02', N'COVIRIALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120603', N'12', N'06', N'03', N'LLAYLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120604', N'12', N'06', N'04', N'MAZAMARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120605', N'12', N'06', N'05', N'PAMPA HERMOSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120606', N'12', N'06', N'06', N'PANGOA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120607', N'12', N'06', N'07', N'RIO NEGRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120608', N'12', N'06', N'08', N'RIO TAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120700', N'12', N'07', N'00', N'TARMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120701', N'12', N'07', N'01', N'TARMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120702', N'12', N'07', N'02', N'ACOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120703', N'12', N'07', N'03', N'HUARICOLCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120704', N'12', N'07', N'04', N'HUASAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120705', N'12', N'07', N'05', N'LA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120706', N'12', N'07', N'06', N'PALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120707', N'12', N'07', N'07', N'PALCAMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120708', N'12', N'07', N'08', N'SAN PEDRO DE CAJAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120709', N'12', N'07', N'09', N'TAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120800', N'12', N'08', N'00', N'YAULI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120801', N'12', N'08', N'01', N'LA OROYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120802', N'12', N'08', N'02', N'CHACAPALPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120803', N'12', N'08', N'03', N'HUAY-HUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120804', N'12', N'08', N'04', N'MARCAPOMACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120805', N'12', N'08', N'05', N'MOROCOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120806', N'12', N'08', N'06', N'PACCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120807', N'12', N'08', N'07', N'SANTA BARBARA DE CARHUACAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120808', N'12', N'08', N'08', N'SANTA ROSA DE SACCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120809', N'12', N'08', N'09', N'SUITUCANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120810', N'12', N'08', N'10', N'YAULI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120900', N'12', N'09', N'00', N'CHUPACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120901', N'12', N'09', N'01', N'CHUPACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120902', N'12', N'09', N'02', N'AHUAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120903', N'12', N'09', N'03', N'CHONGOS BAJO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120904', N'12', N'09', N'04', N'HUACHAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120905', N'12', N'09', N'05', N'HUAMANCACA CHICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120906', N'12', N'09', N'06', N'SAN JUAN DE YSCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120907', N'12', N'09', N'07', N'SAN JUAN DE JARPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120908', N'12', N'09', N'08', N'TRES DE DICIEMBRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'120909', N'12', N'09', N'09', N'YANACANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130000', N'13', N'00', N'00', N'LA LIBERTAD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130100', N'13', N'01', N'00', N'TRUJILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130101', N'13', N'01', N'01', N'TRUJILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130102', N'13', N'01', N'02', N'EL PORVENIR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130103', N'13', N'01', N'03', N'FLORENCIA DE MORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130104', N'13', N'01', N'04', N'HUANCHACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130105', N'13', N'01', N'05', N'LA ESPERANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130106', N'13', N'01', N'06', N'LAREDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130107', N'13', N'01', N'07', N'MOCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130108', N'13', N'01', N'08', N'POROTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130109', N'13', N'01', N'09', N'SALAVERRY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130110', N'13', N'01', N'10', N'SIMBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130111', N'13', N'01', N'11', N'VICTOR LARCO HERRERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130200', N'13', N'02', N'00', N'ASCOPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130201', N'13', N'02', N'01', N'ASCOPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130202', N'13', N'02', N'02', N'CHICAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130203', N'13', N'02', N'03', N'CHOCOPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130204', N'13', N'02', N'04', N'MAGDALENA DE CAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130205', N'13', N'02', N'05', N'PAIJAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130206', N'13', N'02', N'06', N'RAZURI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130207', N'13', N'02', N'07', N'SANTIAGO DE CAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130208', N'13', N'02', N'08', N'CASA GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130300', N'13', N'03', N'00', N'BOLIVAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130301', N'13', N'03', N'01', N'BOLIVAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130302', N'13', N'03', N'02', N'BAMBAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130303', N'13', N'03', N'03', N'CONDORMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130304', N'13', N'03', N'04', N'LONGOTEA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130305', N'13', N'03', N'05', N'UCHUMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130306', N'13', N'03', N'06', N'UCUNCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130400', N'13', N'04', N'00', N'CHEPEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130401', N'13', N'04', N'01', N'CHEPEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130402', N'13', N'04', N'02', N'PACANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130403', N'13', N'04', N'03', N'PUEBLO NUEVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130500', N'13', N'05', N'00', N'JULCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130501', N'13', N'05', N'01', N'JULCAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130502', N'13', N'05', N'02', N'CALAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130503', N'13', N'05', N'03', N'CARABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130504', N'13', N'05', N'04', N'HUASO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130600', N'13', N'06', N'00', N'OTUZCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130601', N'13', N'06', N'01', N'OTUZCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130602', N'13', N'06', N'02', N'AGALLPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130604', N'13', N'06', N'04', N'CHARAT', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130605', N'13', N'06', N'05', N'HUARANCHAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130606', N'13', N'06', N'06', N'LA CUESTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130608', N'13', N'06', N'08', N'MACHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130610', N'13', N'06', N'10', N'PARANDAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130611', N'13', N'06', N'11', N'SALPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130613', N'13', N'06', N'13', N'SINSICAP', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130614', N'13', N'06', N'14', N'USQUIL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130700', N'13', N'07', N'00', N'PACASMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130701', N'13', N'07', N'01', N'SAN PEDRO DE LLOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130702', N'13', N'07', N'02', N'GUADALUPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130703', N'13', N'07', N'03', N'JEQUETEPEQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130704', N'13', N'07', N'04', N'PACASMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130705', N'13', N'07', N'05', N'SAN JOSE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130800', N'13', N'08', N'00', N'PATAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130801', N'13', N'08', N'01', N'TAYABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130802', N'13', N'08', N'02', N'BULDIBUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130803', N'13', N'08', N'03', N'CHILLIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130804', N'13', N'08', N'04', N'HUANCASPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130805', N'13', N'08', N'05', N'HUAYLILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130806', N'13', N'08', N'06', N'HUAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130807', N'13', N'08', N'07', N'ONGON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130808', N'13', N'08', N'08', N'PARCOY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130809', N'13', N'08', N'09', N'PATAZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130810', N'13', N'08', N'10', N'PIAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130811', N'13', N'08', N'11', N'SANTIAGO DE CHALLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130812', N'13', N'08', N'12', N'TAURIJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130813', N'13', N'08', N'13', N'URPAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130900', N'13', N'09', N'00', N'SANCHEZ CARRION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130901', N'13', N'09', N'01', N'HUAMACHUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130902', N'13', N'09', N'02', N'CHUGAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130903', N'13', N'09', N'03', N'COCHORCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130904', N'13', N'09', N'04', N'CURGOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130905', N'13', N'09', N'05', N'MARCABAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130906', N'13', N'09', N'06', N'SANAGORAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130907', N'13', N'09', N'07', N'SARIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'130908', N'13', N'09', N'08', N'SARTIMBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131000', N'13', N'10', N'00', N'SANTIAGO DE CHUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131001', N'13', N'10', N'01', N'SANTIAGO DE CHUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131002', N'13', N'10', N'02', N'ANGASMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131003', N'13', N'10', N'03', N'CACHICADAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131004', N'13', N'10', N'04', N'MOLLEBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131005', N'13', N'10', N'05', N'MOLLEPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131006', N'13', N'10', N'06', N'QUIRUVILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131007', N'13', N'10', N'07', N'SANTA CRUZ DE CHUCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131008', N'13', N'10', N'08', N'SITABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131100', N'13', N'11', N'00', N'GRAN CHIMU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131101', N'13', N'11', N'01', N'CASCAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131102', N'13', N'11', N'02', N'LUCMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131103', N'13', N'11', N'03', N'COMPIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131104', N'13', N'11', N'04', N'SAYAPULLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131200', N'13', N'12', N'00', N'VIRU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131201', N'13', N'12', N'01', N'VIRU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131202', N'13', N'12', N'02', N'CHAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'131203', N'13', N'12', N'03', N'GUADALUPITO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140000', N'14', N'00', N'00', N'LAMBAYEQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140100', N'14', N'01', N'00', N'CHICLAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140101', N'14', N'01', N'01', N'CHICLAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140102', N'14', N'01', N'02', N'CHONGOYAPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140103', N'14', N'01', N'03', N'ETEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140104', N'14', N'01', N'04', N'ETEN PUERTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140105', N'14', N'01', N'05', N'JOSE LEONARDO ORTIZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140106', N'14', N'01', N'06', N'LA VICTORIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140107', N'14', N'01', N'07', N'LAGUNAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140108', N'14', N'01', N'08', N'MONSEFU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140109', N'14', N'01', N'09', N'NUEVA ARICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140110', N'14', N'01', N'10', N'OYOTUN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140111', N'14', N'01', N'11', N'PICSI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140112', N'14', N'01', N'12', N'PIMENTEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140113', N'14', N'01', N'13', N'REQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140114', N'14', N'01', N'14', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140115', N'14', N'01', N'15', N'SAÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140116', N'14', N'01', N'16', N'CAYALTI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140117', N'14', N'01', N'17', N'PATAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140118', N'14', N'01', N'18', N'POMALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140119', N'14', N'01', N'19', N'PUCALA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140120', N'14', N'01', N'20', N'TUMAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140200', N'14', N'02', N'00', N'FERREÑAFE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140201', N'14', N'02', N'01', N'FERREÑAFE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140202', N'14', N'02', N'02', N'CAÑARIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140203', N'14', N'02', N'03', N'INCAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140204', N'14', N'02', N'04', N'MANUEL ANTONIO MESONES MURO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140205', N'14', N'02', N'05', N'PITIPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140206', N'14', N'02', N'06', N'PUEBLO NUEVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140300', N'14', N'03', N'00', N'LAMBAYEQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140301', N'14', N'03', N'01', N'LAMBAYEQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140302', N'14', N'03', N'02', N'CHOCHOPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140303', N'14', N'03', N'03', N'ILLIMO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140304', N'14', N'03', N'04', N'JAYANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140305', N'14', N'03', N'05', N'MOCHUMI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140306', N'14', N'03', N'06', N'MORROPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140307', N'14', N'03', N'07', N'MOTUPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140308', N'14', N'03', N'08', N'OLMOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140309', N'14', N'03', N'09', N'PACORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140310', N'14', N'03', N'10', N'SALAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140311', N'14', N'03', N'11', N'SAN JOSE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'140312', N'14', N'03', N'12', N'TUCUME', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150000', N'15', N'00', N'00', N'LIMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150100', N'15', N'01', N'00', N'LIMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150101', N'15', N'01', N'01', N'LIMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150102', N'15', N'01', N'02', N'ANCON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150103', N'15', N'01', N'03', N'ATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150104', N'15', N'01', N'04', N'BARRANCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150105', N'15', N'01', N'05', N'BREÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150106', N'15', N'01', N'06', N'CARABAYLLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150107', N'15', N'01', N'07', N'CHACLACAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150108', N'15', N'01', N'08', N'CHORRILLOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150109', N'15', N'01', N'09', N'CIENEGUILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150110', N'15', N'01', N'10', N'COMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150111', N'15', N'01', N'11', N'EL AGUSTINO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150112', N'15', N'01', N'12', N'INDEPENDENCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150113', N'15', N'01', N'13', N'JESUS MARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150114', N'15', N'01', N'14', N'LA MOLINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150115', N'15', N'01', N'15', N'LA VICTORIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150116', N'15', N'01', N'16', N'LINCE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150117', N'15', N'01', N'17', N'LOS OLIVOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150118', N'15', N'01', N'18', N'LURIGANCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150119', N'15', N'01', N'19', N'LURIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150120', N'15', N'01', N'20', N'MAGDALENA DEL MAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150121', N'15', N'01', N'21', N'MAGDALENA VIEJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150122', N'15', N'01', N'22', N'MIRAFLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150123', N'15', N'01', N'23', N'PACHACAMAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150124', N'15', N'01', N'24', N'PUCUSANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150125', N'15', N'01', N'25', N'PUENTE PIEDRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150126', N'15', N'01', N'26', N'PUNTA HERMOSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150127', N'15', N'01', N'27', N'PUNTA NEGRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150128', N'15', N'01', N'28', N'RIMAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150129', N'15', N'01', N'29', N'SAN BARTOLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150130', N'15', N'01', N'30', N'SAN BORJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150131', N'15', N'01', N'31', N'SAN ISIDRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150132', N'15', N'01', N'32', N'SAN JUAN DE LURIGANCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150133', N'15', N'01', N'33', N'SAN JUAN DE MIRAFLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150134', N'15', N'01', N'34', N'SAN LUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150135', N'15', N'01', N'35', N'SAN MARTIN DE PORRES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150136', N'15', N'01', N'36', N'SAN MIGUEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150137', N'15', N'01', N'37', N'SANTA ANITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150138', N'15', N'01', N'38', N'SANTA MARIA DEL MAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150139', N'15', N'01', N'39', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150140', N'15', N'01', N'40', N'SANTIAGO DE SURCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150141', N'15', N'01', N'41', N'SURQUILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150142', N'15', N'01', N'42', N'VILLA EL SALVADOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150143', N'15', N'01', N'43', N'VILLA MARIA DEL TRIUNFO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150200', N'15', N'02', N'00', N'BARRANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150201', N'15', N'02', N'01', N'BARRANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150202', N'15', N'02', N'02', N'PARAMONGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150203', N'15', N'02', N'03', N'PATIVILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150204', N'15', N'02', N'04', N'SUPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150205', N'15', N'02', N'05', N'SUPE PUERTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150300', N'15', N'03', N'00', N'CAJATAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150301', N'15', N'03', N'01', N'CAJATAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150302', N'15', N'03', N'02', N'COPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150303', N'15', N'03', N'03', N'GORGOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150304', N'15', N'03', N'04', N'HUANCAPON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150305', N'15', N'03', N'05', N'MANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150400', N'15', N'04', N'00', N'CANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150401', N'15', N'04', N'01', N'CANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150402', N'15', N'04', N'02', N'ARAHUAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150403', N'15', N'04', N'03', N'HUAMANTANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150404', N'15', N'04', N'04', N'HUAROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150405', N'15', N'04', N'05', N'LACHAQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150406', N'15', N'04', N'06', N'SAN BUENAVENTURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150407', N'15', N'04', N'07', N'SANTA ROSA DE QUIVES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150500', N'15', N'05', N'00', N'CAÑETE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150501', N'15', N'05', N'01', N'SAN VICENTE DE CAÑETE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150502', N'15', N'05', N'02', N'ASIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150503', N'15', N'05', N'03', N'CALANGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150504', N'15', N'05', N'04', N'CERRO AZUL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150505', N'15', N'05', N'05', N'CHILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150506', N'15', N'05', N'06', N'COAYLLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150507', N'15', N'05', N'07', N'IMPERIAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150508', N'15', N'05', N'08', N'LUNAHUANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150509', N'15', N'05', N'09', N'MALA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150510', N'15', N'05', N'10', N'NUEVO IMPERIAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150511', N'15', N'05', N'11', N'PACARAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150512', N'15', N'05', N'12', N'QUILMANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150513', N'15', N'05', N'13', N'SAN ANTONIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150514', N'15', N'05', N'14', N'SAN LUIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150515', N'15', N'05', N'15', N'SANTA CRUZ DE FLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150516', N'15', N'05', N'16', N'ZUÑIGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150600', N'15', N'06', N'00', N'HUARAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150601', N'15', N'06', N'01', N'HUARAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150602', N'15', N'06', N'02', N'ATAVILLOS ALTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150603', N'15', N'06', N'03', N'ATAVILLOS BAJO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150604', N'15', N'06', N'04', N'AUCALLAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150605', N'15', N'06', N'05', N'CHANCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150606', N'15', N'06', N'06', N'IHUARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150607', N'15', N'06', N'07', N'LAMPIAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150608', N'15', N'06', N'08', N'PACARAOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150609', N'15', N'06', N'09', N'SAN MIGUEL DE ACOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150610', N'15', N'06', N'10', N'SANTA CRUZ DE ANDAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150611', N'15', N'06', N'11', N'SUMBILCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150612', N'15', N'06', N'12', N'VEINTISIETE DE NOVIEMBRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150700', N'15', N'07', N'00', N'HUAROCHIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150701', N'15', N'07', N'01', N'MATUCANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150702', N'15', N'07', N'02', N'ANTIOQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150703', N'15', N'07', N'03', N'CALLAHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150704', N'15', N'07', N'04', N'CARAMPOMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150705', N'15', N'07', N'05', N'CHICLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150706', N'15', N'07', N'06', N'CUENCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150707', N'15', N'07', N'07', N'HUACHUPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150708', N'15', N'07', N'08', N'HUANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150709', N'15', N'07', N'09', N'HUAROCHIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150710', N'15', N'07', N'10', N'LAHUAYTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150711', N'15', N'07', N'11', N'LANGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150712', N'15', N'07', N'12', N'LARAOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150713', N'15', N'07', N'13', N'MARIATANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150714', N'15', N'07', N'14', N'RICARDO PALMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150715', N'15', N'07', N'15', N'SAN ANDRES DE TUPICOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150716', N'15', N'07', N'16', N'SAN ANTONIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150717', N'15', N'07', N'17', N'SAN BARTOLOME', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150718', N'15', N'07', N'18', N'SAN DAMIAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150719', N'15', N'07', N'19', N'SAN JUAN DE IRIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150720', N'15', N'07', N'20', N'SAN JUAN DE TANTARANCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150721', N'15', N'07', N'21', N'SAN LORENZO DE QUINTI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150722', N'15', N'07', N'22', N'SAN MATEO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150723', N'15', N'07', N'23', N'SAN MATEO DE OTAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150724', N'15', N'07', N'24', N'SAN PEDRO DE CASTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150725', N'15', N'07', N'25', N'SAN PEDRO DE HUANCAYRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150726', N'15', N'07', N'26', N'SANGALLAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150727', N'15', N'07', N'27', N'SANTA CRUZ DE COCACHACRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150728', N'15', N'07', N'28', N'SANTA EULALIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150729', N'15', N'07', N'29', N'SANTIAGO DE ANCHUCAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150730', N'15', N'07', N'30', N'SANTIAGO DE TUNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150731', N'15', N'07', N'31', N'SANTO DOMINGO DE LOS OLLEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150732', N'15', N'07', N'32', N'SURCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150800', N'15', N'08', N'00', N'HUAURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150801', N'15', N'08', N'01', N'HUACHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150802', N'15', N'08', N'02', N'AMBAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150803', N'15', N'08', N'03', N'CALETA DE CARQUIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150804', N'15', N'08', N'04', N'CHECRAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150805', N'15', N'08', N'05', N'HUALMAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150806', N'15', N'08', N'06', N'HUAURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150807', N'15', N'08', N'07', N'LEONCIO PRADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150808', N'15', N'08', N'08', N'PACCHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150809', N'15', N'08', N'09', N'SANTA LEONOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150810', N'15', N'08', N'10', N'SANTA MARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150811', N'15', N'08', N'11', N'SAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150812', N'15', N'08', N'12', N'VEGUETA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150900', N'15', N'09', N'00', N'OYON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150901', N'15', N'09', N'01', N'OYON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150902', N'15', N'09', N'02', N'ANDAJES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150903', N'15', N'09', N'03', N'CAUJUL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150904', N'15', N'09', N'04', N'COCHAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150905', N'15', N'09', N'05', N'NAVAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'150906', N'15', N'09', N'06', N'PACHANGARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151000', N'15', N'10', N'00', N'YAUYOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151001', N'15', N'10', N'01', N'YAUYOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151002', N'15', N'10', N'02', N'ALIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151003', N'15', N'10', N'03', N'AYAUCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151004', N'15', N'10', N'04', N'AYAVIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151005', N'15', N'10', N'05', N'AZANGARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151006', N'15', N'10', N'06', N'CACRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151007', N'15', N'10', N'07', N'CARANIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151008', N'15', N'10', N'08', N'CATAHUASI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151009', N'15', N'10', N'09', N'CHOCOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151010', N'15', N'10', N'10', N'COCHAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151011', N'15', N'10', N'11', N'COLONIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151012', N'15', N'10', N'12', N'HONGOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151013', N'15', N'10', N'13', N'HUAMPARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151014', N'15', N'10', N'14', N'HUANCAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151015', N'15', N'10', N'15', N'HUANGASCAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151016', N'15', N'10', N'16', N'HUANTAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151017', N'15', N'10', N'17', N'HUAÑEC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151018', N'15', N'10', N'18', N'LARAOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151019', N'15', N'10', N'19', N'LINCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151020', N'15', N'10', N'20', N'MADEAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151021', N'15', N'10', N'21', N'MIRAFLORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151022', N'15', N'10', N'22', N'OMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151023', N'15', N'10', N'23', N'PUTINZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151024', N'15', N'10', N'24', N'QUINCHES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151025', N'15', N'10', N'25', N'QUINOCAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151026', N'15', N'10', N'26', N'SAN JOAQUIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151027', N'15', N'10', N'27', N'SAN PEDRO DE PILAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151028', N'15', N'10', N'28', N'TANTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151029', N'15', N'10', N'29', N'TAURIPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151030', N'15', N'10', N'30', N'TOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151031', N'15', N'10', N'31', N'TUPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151032', N'15', N'10', N'32', N'VIÑAC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'151033', N'15', N'10', N'33', N'VITIS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160000', N'16', N'00', N'00', N'LORETO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160100', N'16', N'01', N'00', N'MAYNAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160101', N'16', N'01', N'01', N'IQUITOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160102', N'16', N'01', N'02', N'ALTO NANAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160103', N'16', N'01', N'03', N'FERNANDO LORES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160104', N'16', N'01', N'04', N'INDIANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160105', N'16', N'01', N'05', N'LAS AMAZONAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160106', N'16', N'01', N'06', N'MAZAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160107', N'16', N'01', N'07', N'NAPO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160108', N'16', N'01', N'08', N'PUNCHANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160109', N'16', N'01', N'09', N'PUTUMAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160110', N'16', N'01', N'10', N'TORRES CAUSANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160112', N'16', N'01', N'12', N'BELEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160113', N'16', N'01', N'13', N'SAN JUAN BAUTISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160114', N'16', N'01', N'14', N'TENIENTE MANUEL CLAVERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160200', N'16', N'02', N'00', N'ALTO AMAZONAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160201', N'16', N'02', N'01', N'YURIMAGUAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160202', N'16', N'02', N'02', N'BALSAPUERTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160205', N'16', N'02', N'05', N'JEBEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160206', N'16', N'02', N'06', N'LAGUNAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160210', N'16', N'02', N'10', N'SANTA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160211', N'16', N'02', N'11', N'TENIENTE CESAR LOPEZ ROJAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160300', N'16', N'03', N'00', N'LORETO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160301', N'16', N'03', N'01', N'NAUTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160302', N'16', N'03', N'02', N'PARINARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160303', N'16', N'03', N'03', N'TIGRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160304', N'16', N'03', N'04', N'TROMPETEROS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160305', N'16', N'03', N'05', N'URARINAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160400', N'16', N'04', N'00', N'MARISCAL RAMON CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160401', N'16', N'04', N'01', N'RAMON CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160402', N'16', N'04', N'02', N'PEBAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160403', N'16', N'04', N'03', N'YAVARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160404', N'16', N'04', N'04', N'SAN PABLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160500', N'16', N'05', N'00', N'REQUENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160501', N'16', N'05', N'01', N'REQUENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160502', N'16', N'05', N'02', N'ALTO TAPICHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160503', N'16', N'05', N'03', N'CAPELO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160504', N'16', N'05', N'04', N'EMILIO SAN MARTIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160505', N'16', N'05', N'05', N'MAQUIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160506', N'16', N'05', N'06', N'PUINAHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160507', N'16', N'05', N'07', N'SAQUENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160508', N'16', N'05', N'08', N'SOPLIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160509', N'16', N'05', N'09', N'TAPICHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160510', N'16', N'05', N'10', N'JENARO HERRERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160511', N'16', N'05', N'11', N'YAQUERANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160600', N'16', N'06', N'00', N'UCAYALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160601', N'16', N'06', N'01', N'CONTAMANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160602', N'16', N'06', N'02', N'INAHUAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160603', N'16', N'06', N'03', N'PADRE MARQUEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160604', N'16', N'06', N'04', N'PAMPA HERMOSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160605', N'16', N'06', N'05', N'SARAYACU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160606', N'16', N'06', N'06', N'VARGAS GUERRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160700', N'16', N'07', N'00', N'DATEM DEL MARAÑON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160701', N'16', N'07', N'01', N'BARRANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160702', N'16', N'07', N'02', N'CAHUAPANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160703', N'16', N'07', N'03', N'MANSERICHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160704', N'16', N'07', N'04', N'MORONA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160705', N'16', N'07', N'05', N'PASTAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'160706', N'16', N'07', N'06', N'ANDOAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170000', N'17', N'00', N'00', N'MADRE DE DIOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170100', N'17', N'01', N'00', N'TAMBOPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170101', N'17', N'01', N'01', N'TAMBOPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170102', N'17', N'01', N'02', N'INAMBARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170103', N'17', N'01', N'03', N'LAS PIEDRAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170104', N'17', N'01', N'04', N'LABERINTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170200', N'17', N'02', N'00', N'MANU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170201', N'17', N'02', N'01', N'MANU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170202', N'17', N'02', N'02', N'FITZCARRALD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170203', N'17', N'02', N'03', N'MADRE DE DIOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170204', N'17', N'02', N'04', N'HUEPETUHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170300', N'17', N'03', N'00', N'TAHUAMANU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170301', N'17', N'03', N'01', N'IÑAPARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170302', N'17', N'03', N'02', N'IBERIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'170303', N'17', N'03', N'03', N'TAHUAMANU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180000', N'18', N'00', N'00', N'MOQUEGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180100', N'18', N'01', N'00', N'MARISCAL NIETO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180101', N'18', N'01', N'01', N'MOQUEGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180102', N'18', N'01', N'02', N'CARUMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180103', N'18', N'01', N'03', N'CUCHUMBAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180104', N'18', N'01', N'04', N'SAMEGUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180105', N'18', N'01', N'05', N'SAN CRISTOBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180106', N'18', N'01', N'06', N'TORATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180200', N'18', N'02', N'00', N'GENERAL SANCHEZ CERRO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180201', N'18', N'02', N'01', N'OMATE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180202', N'18', N'02', N'02', N'CHOJATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180203', N'18', N'02', N'03', N'COALAQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180204', N'18', N'02', N'04', N'ICHUÑA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180205', N'18', N'02', N'05', N'LA CAPILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180206', N'18', N'02', N'06', N'LLOQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180207', N'18', N'02', N'07', N'MATALAQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180208', N'18', N'02', N'08', N'PUQUINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180209', N'18', N'02', N'09', N'QUINISTAQUILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180210', N'18', N'02', N'10', N'UBINAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180211', N'18', N'02', N'11', N'YUNGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180300', N'18', N'03', N'00', N'ILO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180301', N'18', N'03', N'01', N'ILO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180302', N'18', N'03', N'02', N'EL ALGARROBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'180303', N'18', N'03', N'03', N'PACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190000', N'19', N'00', N'00', N'PASCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190100', N'19', N'01', N'00', N'PASCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190101', N'19', N'01', N'01', N'CHAUPIMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190102', N'19', N'01', N'02', N'HUACHON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190103', N'19', N'01', N'03', N'HUARIACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190104', N'19', N'01', N'04', N'HUAYLLAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190105', N'19', N'01', N'05', N'NINACACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190106', N'19', N'01', N'06', N'PALLANCHACRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190107', N'19', N'01', N'07', N'PAUCARTAMBO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190108', N'19', N'01', N'08', N'SAN FRANCISCO DE ASIS DE YARUSYACAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190109', N'19', N'01', N'09', N'SIMON BOLIVAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190110', N'19', N'01', N'10', N'TICLACAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190111', N'19', N'01', N'11', N'TINYAHUARCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190112', N'19', N'01', N'12', N'VICCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190113', N'19', N'01', N'13', N'YANACANCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190200', N'19', N'02', N'00', N'DANIEL ALCIDES CARRION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190201', N'19', N'02', N'01', N'YANAHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190202', N'19', N'02', N'02', N'CHACAYAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190203', N'19', N'02', N'03', N'GOYLLARISQUIZGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190204', N'19', N'02', N'04', N'PAUCAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190205', N'19', N'02', N'05', N'SAN PEDRO DE PILLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190206', N'19', N'02', N'06', N'SANTA ANA DE TUSI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190207', N'19', N'02', N'07', N'TAPUC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190208', N'19', N'02', N'08', N'VILCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190300', N'19', N'03', N'00', N'OXAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190301', N'19', N'03', N'01', N'OXAPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190302', N'19', N'03', N'02', N'CHONTABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190303', N'19', N'03', N'03', N'HUANCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190304', N'19', N'03', N'04', N'PALCAZU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190305', N'19', N'03', N'05', N'POZUZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190306', N'19', N'03', N'06', N'PUERTO BERMUDEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'190307', N'19', N'03', N'07', N'VILLA RICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200000', N'20', N'00', N'00', N'PIURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200100', N'20', N'01', N'00', N'PIURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200101', N'20', N'01', N'01', N'PIURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200104', N'20', N'01', N'04', N'CASTILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200105', N'20', N'01', N'05', N'CATACAOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200107', N'20', N'01', N'07', N'CURA MORI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200108', N'20', N'01', N'08', N'EL TALLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200109', N'20', N'01', N'09', N'LA ARENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200110', N'20', N'01', N'10', N'LA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200111', N'20', N'01', N'11', N'LAS LOMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200114', N'20', N'01', N'14', N'TAMBO GRANDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200200', N'20', N'02', N'00', N'AYABACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200201', N'20', N'02', N'01', N'AYABACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200202', N'20', N'02', N'02', N'FRIAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200203', N'20', N'02', N'03', N'JILILI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200204', N'20', N'02', N'04', N'LAGUNAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200205', N'20', N'02', N'05', N'MONTERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200206', N'20', N'02', N'06', N'PACAIPAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200207', N'20', N'02', N'07', N'PAIMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200208', N'20', N'02', N'08', N'SAPILLICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200209', N'20', N'02', N'09', N'SICCHEZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200210', N'20', N'02', N'10', N'SUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200300', N'20', N'03', N'00', N'HUANCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200301', N'20', N'03', N'01', N'HUANCABAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200302', N'20', N'03', N'02', N'CANCHAQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200303', N'20', N'03', N'03', N'EL CARMEN DE LA FRONTERA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200304', N'20', N'03', N'04', N'HUARMACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200305', N'20', N'03', N'05', N'LALAQUIZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200306', N'20', N'03', N'06', N'SAN MIGUEL DE EL FAIQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200307', N'20', N'03', N'07', N'SONDOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200308', N'20', N'03', N'08', N'SONDORILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200400', N'20', N'04', N'00', N'MORROPON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200401', N'20', N'04', N'01', N'CHULUCANAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200402', N'20', N'04', N'02', N'BUENOS AIRES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200403', N'20', N'04', N'03', N'CHALACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200404', N'20', N'04', N'04', N'LA MATANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200405', N'20', N'04', N'05', N'MORROPON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200406', N'20', N'04', N'06', N'SALITRAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200407', N'20', N'04', N'07', N'SAN JUAN DE BIGOTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200408', N'20', N'04', N'08', N'SANTA CATALINA DE MOSSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200409', N'20', N'04', N'09', N'SANTO DOMINGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200410', N'20', N'04', N'10', N'YAMANGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200500', N'20', N'05', N'00', N'PAITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200501', N'20', N'05', N'01', N'PAITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200502', N'20', N'05', N'02', N'AMOTAPE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200503', N'20', N'05', N'03', N'ARENAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200504', N'20', N'05', N'04', N'COLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200505', N'20', N'05', N'05', N'LA HUACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200506', N'20', N'05', N'06', N'TAMARINDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200507', N'20', N'05', N'07', N'VICHAYAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200600', N'20', N'06', N'00', N'SULLANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200601', N'20', N'06', N'01', N'SULLANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200602', N'20', N'06', N'02', N'BELLAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200603', N'20', N'06', N'03', N'IGNACIO ESCUDERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200604', N'20', N'06', N'04', N'LANCONES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200605', N'20', N'06', N'05', N'MARCAVELICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200606', N'20', N'06', N'06', N'MIGUEL CHECA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200607', N'20', N'06', N'07', N'QUERECOTILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200608', N'20', N'06', N'08', N'SALITRAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200700', N'20', N'07', N'00', N'TALARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200701', N'20', N'07', N'01', N'PARIÑAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200702', N'20', N'07', N'02', N'EL ALTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200703', N'20', N'07', N'03', N'LA BREA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200704', N'20', N'07', N'04', N'LOBITOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200705', N'20', N'07', N'05', N'LOS ORGANOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200706', N'20', N'07', N'06', N'MANCORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200800', N'20', N'08', N'00', N'SECHURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200801', N'20', N'08', N'01', N'SECHURA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200802', N'20', N'08', N'02', N'BELLAVISTA DE LA UNION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200803', N'20', N'08', N'03', N'BERNAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200804', N'20', N'08', N'04', N'CRISTO NOS VALGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200805', N'20', N'08', N'05', N'VICE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'200806', N'20', N'08', N'06', N'RINCONADA LLICUAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210000', N'21', N'00', N'00', N'PUNO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210100', N'21', N'01', N'00', N'PUNO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210101', N'21', N'01', N'01', N'PUNO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210102', N'21', N'01', N'02', N'ACORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210103', N'21', N'01', N'03', N'AMANTANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210104', N'21', N'01', N'04', N'ATUNCOLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210105', N'21', N'01', N'05', N'CAPACHICA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210106', N'21', N'01', N'06', N'CHUCUITO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210107', N'21', N'01', N'07', N'COATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210108', N'21', N'01', N'08', N'HUATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210109', N'21', N'01', N'09', N'MAÑAZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210110', N'21', N'01', N'10', N'PAUCARCOLLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210111', N'21', N'01', N'11', N'PICHACANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210112', N'21', N'01', N'12', N'PLATERIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210113', N'21', N'01', N'13', N'SAN ANTONIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210114', N'21', N'01', N'14', N'TIQUILLACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210115', N'21', N'01', N'15', N'VILQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210200', N'21', N'02', N'00', N'AZANGARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210201', N'21', N'02', N'01', N'AZANGARO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210202', N'21', N'02', N'02', N'ACHAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210203', N'21', N'02', N'03', N'ARAPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210204', N'21', N'02', N'04', N'ASILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210205', N'21', N'02', N'05', N'CAMINACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210206', N'21', N'02', N'06', N'CHUPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210207', N'21', N'02', N'07', N'JOSE DOMINGO CHOQUEHUANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210208', N'21', N'02', N'08', N'MUÑANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210209', N'21', N'02', N'09', N'POTONI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210210', N'21', N'02', N'10', N'SAMAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210211', N'21', N'02', N'11', N'SAN ANTON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210212', N'21', N'02', N'12', N'SAN JOSE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210213', N'21', N'02', N'13', N'SAN JUAN DE SALINAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210214', N'21', N'02', N'14', N'SANTIAGO DE PUPUJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210215', N'21', N'02', N'15', N'TIRAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210300', N'21', N'03', N'00', N'CARABAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210301', N'21', N'03', N'01', N'MACUSANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210302', N'21', N'03', N'02', N'AJOYANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210303', N'21', N'03', N'03', N'AYAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210304', N'21', N'03', N'04', N'COASA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210305', N'21', N'03', N'05', N'CORANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210306', N'21', N'03', N'06', N'CRUCERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210307', N'21', N'03', N'07', N'ITUATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210308', N'21', N'03', N'08', N'OLLACHEA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210309', N'21', N'03', N'09', N'SAN GABAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210310', N'21', N'03', N'10', N'USICAYOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210400', N'21', N'04', N'00', N'CHUCUITO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210401', N'21', N'04', N'01', N'JULI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210402', N'21', N'04', N'02', N'DESAGUADERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210403', N'21', N'04', N'03', N'HUACULLANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210404', N'21', N'04', N'04', N'KELLUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210405', N'21', N'04', N'05', N'PISACOMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210406', N'21', N'04', N'06', N'POMATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210407', N'21', N'04', N'07', N'ZEPITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210500', N'21', N'05', N'00', N'EL COLLAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210501', N'21', N'05', N'01', N'ILAVE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210502', N'21', N'05', N'02', N'CAPAZO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210503', N'21', N'05', N'03', N'PILCUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210504', N'21', N'05', N'04', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210505', N'21', N'05', N'05', N'CONDURIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210600', N'21', N'06', N'00', N'HUANCANE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210601', N'21', N'06', N'01', N'HUANCANE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210602', N'21', N'06', N'02', N'COJATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210603', N'21', N'06', N'03', N'HUATASANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210604', N'21', N'06', N'04', N'INCHUPALLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210605', N'21', N'06', N'05', N'PUSI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210606', N'21', N'06', N'06', N'ROSASPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210607', N'21', N'06', N'07', N'TARACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210608', N'21', N'06', N'08', N'VILQUE CHICO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210700', N'21', N'07', N'00', N'LAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210701', N'21', N'07', N'01', N'LAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210702', N'21', N'07', N'02', N'CABANILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210703', N'21', N'07', N'03', N'CALAPUJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210704', N'21', N'07', N'04', N'NICASIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210705', N'21', N'07', N'05', N'OCUVIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210706', N'21', N'07', N'06', N'PALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210707', N'21', N'07', N'07', N'PARATIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210708', N'21', N'07', N'08', N'PUCARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210709', N'21', N'07', N'09', N'SANTA LUCIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210710', N'21', N'07', N'10', N'VILAVILA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210800', N'21', N'08', N'00', N'MELGAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210801', N'21', N'08', N'01', N'AYAVIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210802', N'21', N'08', N'02', N'ANTAUTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210803', N'21', N'08', N'03', N'CUPI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210804', N'21', N'08', N'04', N'LLALLI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210805', N'21', N'08', N'05', N'MACARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210806', N'21', N'08', N'06', N'NUÑOA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210807', N'21', N'08', N'07', N'ORURILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210808', N'21', N'08', N'08', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210809', N'21', N'08', N'09', N'UMACHIRI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210900', N'21', N'09', N'00', N'MOHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210901', N'21', N'09', N'01', N'MOHO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210902', N'21', N'09', N'02', N'CONIMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210903', N'21', N'09', N'03', N'HUAYRAPATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'210904', N'21', N'09', N'04', N'TILALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211000', N'21', N'10', N'00', N'SAN ANTONIO DE PUTINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211001', N'21', N'10', N'01', N'PUTINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211002', N'21', N'10', N'02', N'ANANEA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211003', N'21', N'10', N'03', N'PEDRO VILCA APAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211004', N'21', N'10', N'04', N'QUILCAPUNCU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211005', N'21', N'10', N'05', N'SINA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211100', N'21', N'11', N'00', N'SAN ROMAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211101', N'21', N'11', N'01', N'JULIACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211102', N'21', N'11', N'02', N'CABANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211103', N'21', N'11', N'03', N'CABANILLAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211104', N'21', N'11', N'04', N'CARACOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211200', N'21', N'12', N'00', N'SANDIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211201', N'21', N'12', N'01', N'SANDIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211202', N'21', N'12', N'02', N'CUYOCUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211203', N'21', N'12', N'03', N'LIMBANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211204', N'21', N'12', N'04', N'PATAMBUCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211205', N'21', N'12', N'05', N'PHARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211206', N'21', N'12', N'06', N'QUIACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211207', N'21', N'12', N'07', N'SAN JUAN DEL ORO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211208', N'21', N'12', N'08', N'YANAHUAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211209', N'21', N'12', N'09', N'ALTO INAMBARI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211210', N'21', N'12', N'10', N'SAN PEDRO DE PUTINA PUNCO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211300', N'21', N'13', N'00', N'YUNGUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211301', N'21', N'13', N'01', N'YUNGUYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211302', N'21', N'13', N'02', N'ANAPIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211303', N'21', N'13', N'03', N'COPANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211304', N'21', N'13', N'04', N'CUTURAPI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211305', N'21', N'13', N'05', N'OLLARAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211306', N'21', N'13', N'06', N'TINICACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'211307', N'21', N'13', N'07', N'UNICACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220000', N'22', N'00', N'00', N'SAN MARTIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220100', N'22', N'01', N'00', N'MOYOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220101', N'22', N'01', N'01', N'MOYOBAMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220102', N'22', N'01', N'02', N'CALZADA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220103', N'22', N'01', N'03', N'HABANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220104', N'22', N'01', N'04', N'JEPELACIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220105', N'22', N'01', N'05', N'SORITOR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220106', N'22', N'01', N'06', N'YANTALO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220200', N'22', N'02', N'00', N'BELLAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220201', N'22', N'02', N'01', N'BELLAVISTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220202', N'22', N'02', N'02', N'ALTO BIAVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220203', N'22', N'02', N'03', N'BAJO BIAVO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220204', N'22', N'02', N'04', N'HUALLAGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220205', N'22', N'02', N'05', N'SAN PABLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220206', N'22', N'02', N'06', N'SAN RAFAEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220300', N'22', N'03', N'00', N'EL DORADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220301', N'22', N'03', N'01', N'SAN JOSE DE SISA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220302', N'22', N'03', N'02', N'AGUA BLANCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220303', N'22', N'03', N'03', N'SAN MARTIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220304', N'22', N'03', N'04', N'SANTA ROSA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220305', N'22', N'03', N'05', N'SHATOJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220400', N'22', N'04', N'00', N'HUALLAGA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220401', N'22', N'04', N'01', N'SAPOSOA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220402', N'22', N'04', N'02', N'ALTO SAPOSOA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220403', N'22', N'04', N'03', N'EL ESLABON', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220404', N'22', N'04', N'04', N'PISCOYACU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220405', N'22', N'04', N'05', N'SACANCHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220406', N'22', N'04', N'06', N'TINGO DE SAPOSOA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220500', N'22', N'05', N'00', N'LAMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220501', N'22', N'05', N'01', N'LAMAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220502', N'22', N'05', N'02', N'ALONSO DE ALVARADO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220503', N'22', N'05', N'03', N'BARRANQUITA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220504', N'22', N'05', N'04', N'CAYNARACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220505', N'22', N'05', N'05', N'CUÑUMBUQUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220506', N'22', N'05', N'06', N'PINTO RECODO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220507', N'22', N'05', N'07', N'RUMISAPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220508', N'22', N'05', N'08', N'SAN ROQUE DE CUMBAZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220509', N'22', N'05', N'09', N'SHANAO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220510', N'22', N'05', N'10', N'TABALOSOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220511', N'22', N'05', N'11', N'ZAPATERO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220600', N'22', N'06', N'00', N'MARISCAL CACERES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220601', N'22', N'06', N'01', N'JUANJUI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220602', N'22', N'06', N'02', N'CAMPANILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220603', N'22', N'06', N'03', N'HUICUNGO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220604', N'22', N'06', N'04', N'PACHIZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220605', N'22', N'06', N'05', N'PAJARILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220700', N'22', N'07', N'00', N'PICOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220701', N'22', N'07', N'01', N'PICOTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220702', N'22', N'07', N'02', N'BUENOS AIRES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220703', N'22', N'07', N'03', N'CASPISAPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220704', N'22', N'07', N'04', N'PILLUANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220705', N'22', N'07', N'05', N'PUCACACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220706', N'22', N'07', N'06', N'SAN CRISTOBAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220707', N'22', N'07', N'07', N'SAN HILARION', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220708', N'22', N'07', N'08', N'SHAMBOYACU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220709', N'22', N'07', N'09', N'TINGO DE PONASA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220710', N'22', N'07', N'10', N'TRES UNIDOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220800', N'22', N'08', N'00', N'RIOJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220801', N'22', N'08', N'01', N'RIOJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220802', N'22', N'08', N'02', N'AWAJUN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220803', N'22', N'08', N'03', N'ELIAS SOPLIN VARGAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220804', N'22', N'08', N'04', N'NUEVA CAJAMARCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220805', N'22', N'08', N'05', N'PARDO MIGUEL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220806', N'22', N'08', N'06', N'POSIC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220807', N'22', N'08', N'07', N'SAN FERNANDO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220808', N'22', N'08', N'08', N'YORONGOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220809', N'22', N'08', N'09', N'YURACYACU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220900', N'22', N'09', N'00', N'SAN MARTIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220901', N'22', N'09', N'01', N'TARAPOTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220902', N'22', N'09', N'02', N'ALBERTO LEVEAU', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220903', N'22', N'09', N'03', N'CACATACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220904', N'22', N'09', N'04', N'CHAZUTA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220905', N'22', N'09', N'05', N'CHIPURANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220906', N'22', N'09', N'06', N'EL PORVENIR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220907', N'22', N'09', N'07', N'HUIMBAYOC', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220908', N'22', N'09', N'08', N'JUAN GUERRA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220909', N'22', N'09', N'09', N'LA BANDA DE SHILCAYO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220910', N'22', N'09', N'10', N'MORALES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220911', N'22', N'09', N'11', N'PAPAPLAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220912', N'22', N'09', N'12', N'SAN ANTONIO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220913', N'22', N'09', N'13', N'SAUCE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'220914', N'22', N'09', N'14', N'SHAPAJA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221000', N'22', N'10', N'00', N'TOCACHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221001', N'22', N'10', N'01', N'TOCACHE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221002', N'22', N'10', N'02', N'NUEVO PROGRESO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221003', N'22', N'10', N'03', N'POLVORA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221004', N'22', N'10', N'04', N'SHUNTE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'221005', N'22', N'10', N'05', N'UCHIZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230000', N'23', N'00', N'00', N'TACNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230100', N'23', N'01', N'00', N'TACNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230101', N'23', N'01', N'01', N'TACNA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230102', N'23', N'01', N'02', N'ALTO DE LA ALIANZA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230103', N'23', N'01', N'03', N'CALANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230104', N'23', N'01', N'04', N'CIUDAD NUEVA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230105', N'23', N'01', N'05', N'INCLAN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230106', N'23', N'01', N'06', N'PACHIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230107', N'23', N'01', N'07', N'PALCA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230108', N'23', N'01', N'08', N'POCOLLAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230109', N'23', N'01', N'09', N'SAMA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230110', N'23', N'01', N'10', N'CORONEL GREGORIO ALBARRACIN LANCHIPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230200', N'23', N'02', N'00', N'CANDARAVE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230201', N'23', N'02', N'01', N'CANDARAVE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230202', N'23', N'02', N'02', N'CAIRANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
GO
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230203', N'23', N'02', N'03', N'CAMILACA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230204', N'23', N'02', N'04', N'CURIBAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230205', N'23', N'02', N'05', N'HUANUARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230206', N'23', N'02', N'06', N'QUILAHUANI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230300', N'23', N'03', N'00', N'JORGE BASADRE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230301', N'23', N'03', N'01', N'LOCUMBA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230302', N'23', N'03', N'02', N'ILABAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230303', N'23', N'03', N'03', N'ITE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230400', N'23', N'04', N'00', N'TARATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230401', N'23', N'04', N'01', N'TARATA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230402', N'23', N'04', N'02', N'HEROES ALBARRACIN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230403', N'23', N'04', N'03', N'ESTIQUE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230404', N'23', N'04', N'04', N'ESTIQUE-PAMPA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230405', N'23', N'04', N'05', N'SITAJARA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230406', N'23', N'04', N'06', N'SUSAPAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230407', N'23', N'04', N'07', N'TARUCACHI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'230408', N'23', N'04', N'08', N'TICACO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240000', N'24', N'00', N'00', N'TUMBES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240100', N'24', N'01', N'00', N'TUMBES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240101', N'24', N'01', N'01', N'TUMBES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240102', N'24', N'01', N'02', N'CORRALES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240103', N'24', N'01', N'03', N'LA CRUZ', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240104', N'24', N'01', N'04', N'PAMPAS DE HOSPITAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240105', N'24', N'01', N'05', N'SAN JACINTO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240106', N'24', N'01', N'06', N'SAN JUAN DE LA VIRGEN', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240200', N'24', N'02', N'00', N'CONTRALMIRANTE VILLAR', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240201', N'24', N'02', N'01', N'ZORRITOS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240202', N'24', N'02', N'02', N'CASITAS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240203', N'24', N'02', N'03', N'CANOAS DE PUNTA SAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240300', N'24', N'03', N'00', N'ZARUMILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240301', N'24', N'03', N'01', N'ZARUMILLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240302', N'24', N'03', N'02', N'AGUAS VERDES', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240303', N'24', N'03', N'03', N'MATAPALO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'240304', N'24', N'03', N'04', N'PAPAYAL', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250000', N'25', N'00', N'00', N'UCAYALI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250100', N'25', N'01', N'00', N'CORONEL PORTILLO', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250101', N'25', N'01', N'01', N'CALLERIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250102', N'25', N'01', N'02', N'CAMPOVERDE', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250103', N'25', N'01', N'03', N'IPARIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250104', N'25', N'01', N'04', N'MASISEA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250105', N'25', N'01', N'05', N'YARINACOCHA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250106', N'25', N'01', N'06', N'NUEVA REQUENA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250107', N'25', N'01', N'07', N'MANANTAY', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250200', N'25', N'02', N'00', N'ATALAYA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250201', N'25', N'02', N'01', N'RAYMONDI', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250202', N'25', N'02', N'02', N'SEPAHUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250203', N'25', N'02', N'03', N'TAHUANIA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250204', N'25', N'02', N'04', N'YURUA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250300', N'25', N'03', N'00', N'PADRE ABAD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250301', N'25', N'03', N'01', N'PADRE ABAD', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250302', N'25', N'03', N'02', N'IRAZOLA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250303', N'25', N'03', N'03', N'CURIMANA', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250400', N'25', N'04', N'00', N'PURUS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
INSERT [dbo].[Ubigeo] ([Id], [DepartamentoId], [ProvinciaId], [DistritoId], [Nombre], [Estado], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (N'250401', N'25', N'04', N'01', N'PURUS', 1, 1, NULL, CAST(N'2016-11-19T00:25:19.083' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [PerfilId], [CtaUsuario], [Contrasenia], [Nombres], [Apellidos], [Cargo], [Email], [Telefono], [Estado], [CambiarContrasenia], [FechaVencimientoCta], [FechaVencimiento], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (1, 1, N'ADMIN', 0x0100000085D893381EAA022EC83C7363DEF9AF73E3BDE2A6F6BA10A3, N'CASTILLO', N'CARLOS', N'ADNUB', N'ADIAZ@GMAI.COM', N'987654321', 1, 0, NULL, NULL, 1, NULL, CAST(N'2016-11-19T01:00:07.020' AS DateTime), NULL)
INSERT [dbo].[Usuario] ([Id], [PerfilId], [CtaUsuario], [Contrasenia], [Nombres], [Apellidos], [Cargo], [Email], [Telefono], [Estado], [CambiarContrasenia], [FechaVencimientoCta], [FechaVencimiento], [AuditoriaUC], [AuditoriaUM], [AuditoriaFC], [AuditoriaFM]) VALUES (2, 2, N'ZPEREZ@GMAIL.COM', 0x010000007869F0A91080CAB64D59A71D0B7DA1AB44F3B949E2F00D5C, N'ZALESKY', N'PEREZ', N'SYER', N'ZPEREZ@GMAIL.COM', N'876954321', 1, 0, NULL, NULL, 1, NULL, CAST(N'2016-11-19T01:01:37.813' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Entrevista_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entrevista]'))
ALTER TABLE [dbo].[Entrevista]  WITH CHECK ADD  CONSTRAINT [FK_Entrevista_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Entrevista_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entrevista]'))
ALTER TABLE [dbo].[Entrevista] CHECK CONSTRAINT [FK_Entrevista_Solicitud]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReporteEvaluacion_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReporteEvaluacion]'))
ALTER TABLE [dbo].[ReporteEvaluacion]  WITH CHECK ADD  CONSTRAINT [FK_ReporteEvaluacion_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReporteEvaluacion_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReporteEvaluacion]'))
ALTER TABLE [dbo].[ReporteEvaluacion] CHECK CONSTRAINT [FK_ReporteEvaluacion_Solicitud]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solicitante_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solicitante]'))
ALTER TABLE [dbo].[Solicitante]  WITH CHECK ADD  CONSTRAINT [FK_Solicitante_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solicitante_Solicitud]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solicitante]'))
ALTER TABLE [dbo].[Solicitante] CHECK CONSTRAINT [FK_Solicitante_Solicitud]
GO
/****** Object:  StoredProcedure [dbo].[USPI_EvaluacionSolicitante]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPI_EvaluacionSolicitante]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPI_EvaluacionSolicitante] AS' 
END
GO
ALTER PROCEDURE [dbo].[USPI_EvaluacionSolicitante]
	@IdSolicitante int,
	@FueAprobado bit
AS
BEGIN
	
	UPDATE Solicitante SET FueAprobado = @FueAprobado
	WHERE Id = @IdSolicitante

END

GO
/****** Object:  StoredProcedure [dbo].[USPI_ResultadoEvaluacion]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPI_ResultadoEvaluacion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPI_ResultadoEvaluacion] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPI_ResultadoEvaluacion]
ALTER PROCEDURE [dbo].[USPI_ResultadoEvaluacion]
	@solicitudId	int,
	@resultado		varchar(250),
	@errores		varchar(400),
	@usuarioId		int,
	@idResultadoEva	int OUT,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRAN [ti_ResultadoE]
BEGIN TRY

	insert into ReporteEvaluacion(  SolicitudId, 
									FechaReporte, 
									ResultadoEjercicio, 
									ErroresEncontrados, 
									AuditoriaUC, 
									AuditoriaFC)
	Values (@solicitudId, GETDATE(),
		@resultado, @errores, @usuarioId, GETDATE());
	
	Select @idResultadoEva = SCOPE_IDENTITY();

	Set @coderr = 0
	Set @msgerr = 'OK'

	COMMIT TRAN [ti_ResultadoE]

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	ROLLBACK TRAN [ti_ResultadoE]
	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_Login]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_Login] AS' 
END
GO

/**************************************/
/********* Stores Procedures **********/
/**************************************/

-- DROP PROCEDURE [dbo].[USPS_Login]
ALTER PROCEDURE [dbo].[USPS_Login]
	@usuario		nvarchar(50),
	@clave			nvarchar(50),
	@idAplicativo	int,
	@userID			int OUT,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY
	Declare @cant int
	Declare @perfilID int

	if len(@usuario) = 0
	begin
		RAISERROR('Ingrese el valor del Usuario',16,1)
	end

	if len(@clave) = 0
	begin
		RAISERROR('Ingrese el valor de la clave',16,1)
	end

	SELECT @cant = count(U.Id)
	FROM Usuario u
	WHERE Upper(U.CtaUsuario) = UPPER(@usuario)
	AND u.Estado = 1

	if (@cant > 0)
	begin

		declare @pass as varchar(50)

		Select @pass = dbo.UFN_PASS_DECRIPT(u.contrasenia) 
		from Usuario u 
		where u.CtaUsuario = @usuario
		AND U.Estado = 1
		
		if (@pass COLLATE Latin1_General_CS_AS = @clave Collate Latin1_General_CS_AS) 
		Begin
			
			SELECT @userID = U.Id, @perfilID = U.PerfilId
			FROM Usuario u
			WHERE Upper(U.CtaUsuario) = UPPER(@usuario)

			if NOT EXISTS(SELECT 1 FROM OpcionPerfil A 
							WHERE A.AplicacionId = @idAplicativo
							AND A.PerfilId = @perfilID)
			begin
				RAISERROR('Usted no tiene permisos para acceder al aplicativo',16,1)
			end
			else
			begin
				set @coderr = 0
				set @msgerr = 'OK' 
			end
		end
		else
			RAISERROR('Usuario o clave incorrectos',16,1)
	end
	else
		RAISERROR('Usuario no registrado',16,1)
	
END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	--RAISERROR(@mensajeError, @codSeveridad, @codStatus)	
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_Opcion]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Opcion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_Opcion] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_Opcion]
ALTER PROCEDURE [dbo].[USPS_Opcion]
	@idOpcion		int,
	@idapp			int,
	@estado			int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SELECT	O.Id,
			O.AplicacionId,
			A.Descripcion as Aplicacion,
			O.Nombre,
			O.PadreId,
			O.Nivel,
			O.NivelPadre,
			O.Imagen,
			O.Controler,
			O.Accion,
			O.Orden,
			O.Observacion,
			O.Estado
	FROM Opcion O
		INNER JOIN Aplicacion A ON o.AplicacionId = A.Id
	WHERE ((@idOpcion = -1) OR (O.Id = @idOpcion)) 
	AND ((@idapp = -1) OR (O.AplicacionId = @idapp))
	AND ((@estado = -1) OR (O.Accion = @estado))
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	--RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_OpcionXPerfil]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_OpcionXPerfil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_OpcionXPerfil] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_OpcionXPerfil]
ALTER PROCEDURE [dbo].[USPS_OpcionXPerfil]
	@idapp			int,
	@idperfil		int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SELECT	OP.OpcionId,
			O.Nombre as Opcion,
			OP.AplicacionId,
			A.Descripcion as Aplicacion,
			OP.PerfilId,
			P.Nombre as Perfil,
			OP.Escritura
	FROM OpcionPerfil OP
		INNER JOIN Aplicacion A ON OP.AplicacionId = A.Id
		INNER JOIN Perfil P ON OP.PerfilId = P.Id
		INNER JOIN Opcion O ON OP.OpcionId= O.Id
	WHERE ((@idapp = -1) OR (OP.AplicacionId = @idapp))
	AND ((@idperfil = -1) OR (OP.PerfilId = @idperfil))
	order by O.orden
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_Parametro]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Parametro]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_Parametro] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_Parametro]
ALTER PROCEDURE [dbo].[USPS_Parametro]
	@codigo			int,
	@idAgrupador	int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	IF (@codigo <> 0)
	BEGIN
		SELECT	p.Codigo, 
				p.Nombre,
				p.Valor,
				p.CodigoGrupo,
				p.Grupo,
				p.Descripcion,
				p.ValueText1,
				p.ValueText2,
				p.ValueText3
		FROM Parametro P
		WHERE p.Id = @CODIGO;
	END
	ELSE
	BEGIN
		SELECT	p.Codigo, 
				p.Nombre,
				p.Valor,
				p.CodigoGrupo,
				p.Grupo,
				p.Descripcion,
				p.ValueText1,
				p.ValueText2,
				p.ValueText3
		FROM Parametro P
		WHERE P.CodigoGrupo = @idAgrupador;
		
	END
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_Perfil]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Perfil]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_Perfil] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_Perfil]
ALTER PROCEDURE [dbo].[USPS_Perfil]
	@idperfil		int,
	@idapp			int,
	@nombre			varchar(50),
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SELECT	P.Id,
			P.Nombre,
			P.Descripcion,
			p.AplicacionId,
			A.Descripcion as Aplicacion
	FROM Perfil P
		inner join Aplicacion A on P.AplicacionId = A.Id and A.Estado = 1
	WHERE ((@idperfil = -1) OR (P.Id = @idperfil))
	AND ((@idapp = -1) OR (P.AplicacionId = @idapp))
	AND ((@nombre = '') OR (UPPER(P.Nombre) like '%' + UPPER(@nombre) + '%'))
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	--RAISERROR(@mensajeError, @codSeveridad, @codStatus)

END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_ResultadoEvaluacion]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_ResultadoEvaluacion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_ResultadoEvaluacion] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_ResultadoEvaluacion]
ALTER PROCEDURE [dbo].[USPS_ResultadoEvaluacion]
	@solicitudId	int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SELECT	RE.Id as ReporteEvalId,
			S.Id as SolicitudId,
			S.NumSolicitud,
			S.MontoCapital,
			S.FechaSolicitud,
			S.Estado as EstadoId,
			E.Nombre as Estado,
			SL.ApellidoMaterno,
			SL.ApellidoPaterno,
			SL.Nombres,
			RE.FechaReporte,
			RE.ResultadoEjercicio,
			RE.ErroresEncontrados
	FROM Solicitud S
	inner join Solicitante SL on S.id = SL.SolicitudId
	inner join ReporteEvaluacion RE on S.Id = Re.SolicitudId
	inner join Parametro E on S.Estado = E.Codigo and E.CodigoGrupo = 3
	WHERE S.Id = @solicitudId
	order by 1
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_SolicitanteXEvaluar]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_SolicitanteXEvaluar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_SolicitanteXEvaluar] AS' 
END
GO

-- =============================================
-- Author:		Yussel Ulloa Gómez
-- Create date: 21/07/2017
-- Description:	Listado de solicitantes
-- =============================================
-- DROP PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]
ALTER PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]	
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT
AS
BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SL.ID AS IdSolicitud,
		   S.ID AS IdSolicitante,  
		   S.Nombres,
		   S.ApellidoPaterno, 
		   S.ApellidoMaterno,
		   S.NumeroDocumento,
		   S.TipoDocumentoId,
		   TD.Nombre as TipoDocumento,
		   SL.NumSolicitud,
		   TDSexo.Nombre as Sexo,
		   S.TituloObtenido,
		   S.MontoIngresosMes,
		   S.MontoGastosMes,
		   S.Cargo,
		   S.FechaNacimiento
	FROM Solicitante S 
	INNER JOIN Solicitud SL on S.SolicitudId = SL.Id
	INNER JOIN Parametro TD on S.TipoDocumentoId = TD.Codigo and TD.CodigoGrupo = 5
	INNER JOIN Parametro TDSexo on S.SexoId = TDSexo.Codigo AND TDSexo.CodigoGrupo = 6
	WHERE S.FueAprobado  IS NULL
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH





GO
/****** Object:  StoredProcedure [dbo].[USPS_SolicitudXSolicitante]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_SolicitudXSolicitante]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_SolicitudXSolicitante] AS' 
END
GO

-- =============================================
-- Author:		Yussel Ulloa
-- Create date: 15/07/2017
-- Description:	lista las solicitudes por solicitante
-- =============================================
-- DROP PROCEDURE [dbo].[USPS_SolicitudXSolicitante]
ALTER PROCEDURE [dbo].[USPS_SolicitudXSolicitante]
	@solicitudId	int,
	@desc			varchar(100),
	@estado			int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SET NOCOUNT ON;

	SELECT  SL.ID AS IdSolicitud,
			S.ID AS IdSolicitante, 
			SL.NumSolicitud,
			SL.FechaSolicitud,
			S.Nombres,
			S.ApellidoPaterno,
			S.ApellidoMaterno,
			S.Direccion,
			S.TipoDocumentoId,
			TD.Nombre as TipoDocumento,
			S.NumeroDocumento,
			SL.Estado as EstadoId,
			E.Nombre as Estado,
			S.Email
	FROM Solicitud SL
		INNER JOIN Solicitante S ON SL.Id = S.SolicitudId
		inner join Parametro E on SL.Estado = E.Codigo and E.CodigoGrupo = 3
		inner join Parametro TD on S.TipoDocumentoId = TD.Codigo and TD.CodigoGrupo = 5
	WHERE ((@solicitudId = -1 ) or (SL.Id = @solicitudId))
	AND ((@estado = -1 ) or (SL.Estado = @estado))
	AND ((@desc = '' ) or (SL.NumSolicitud like '%' + @desc + '%' or 
						  S.NumeroDocumento like '%' + @desc + '%' or 
						  S.Nombres like '%' + @desc + '%' or 
						  S.ApellidoPaterno like '%' + @desc + '%' or 
						  S.ApellidoMaterno like '%' + @desc + '%'))
	
	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPS_Usuario]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPS_Usuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPS_Usuario] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPS_Usuario]
ALTER PROCEDURE [dbo].[USPS_Usuario]
	@idUsuario		int,
	@nombres		varchar(100),
	@idPerfil		int,
	@estado			int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRY

	SELECT	U.Id,
			U.PerfilId,
			P.Nombre as perfil, 
			U.CtaUsuario,
			U.Apellidos,
			U.Nombres,
			U.Cargo,
			U.Email,
			U.telefono,
			U.CambiarContrasenia,
			U.FechaVencimientoCta,
			U.FechaVencimiento,
			U.Estado
	FROM Usuario U
		INNER JOIN Perfil P ON U.PerfilId = P.Id
	WHERE ((@estado = -1) OR (U.Estado = @estado))
	AND ((@idUsuario = -1) OR (U.Id = @idUsuario))
	AND ((RTRIM(LTRIM(@nombres)) = '') OR ((U.Nombres + ' ' + U.Apellidos) LIKE '%' + @nombres + '%'))
	AND ((@idPerfil = -1) OR (U.PerfilId = @idPerfil))
	
	Set @coderr = 0
	Set @msgerr = 'OK'
	
END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	--RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[USPU_Solicitud]    Script Date: 23/07/2017 09:17:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USPU_Solicitud]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USPU_Solicitud] AS' 
END
GO

-- DROP PROCEDURE [dbo].[USPU_Solicitud]
ALTER PROCEDURE [dbo].[USPU_Solicitud]
	@solicitudId	int,
	@estado			int,
	@usuarioId		int,
	@coderr			int OUT,
	@msgerr			varchar(1000) OUT

AS
BEGIN TRAN [tu_solicitud]
BEGIN TRY

	UPDATE Solicitud
	SET Estado = @estado,
		AuditoriaUM = @usuarioId,
		AuditoriaFM = GETDATE()
	WHERE Id = @solicitudId
	
	COMMIT TRAN [tu_solicitud]

	Set @coderr = 0
	Set @msgerr = 'OK'

END TRY
BEGIN CATCH
	DECLARE @mensajeError as varchar(4000)
	DECLARE @codSeveridad as int
	DECLARE @codStatus as int

	Select @mensajeError = ERROR_MESSAGE(),
		   @codSeveridad = ERROR_SEVERITY(),
		   @codStatus = ERROR_STATE()
	
	set @coderr = 1
	set @msgerr = @mensajeError

	ROLLBACK TRAN [tu_solicitud]
	-- RAISERROR(@mensajeError, @codSeveridad, @codStatus)
END CATCH

GO
