

USE [PARDOSDB]
GO

-- CREACION DE TABLAS
CREATE TABLE [dbo].[Aplicacion] (
    [Id]				INT          IDENTITY (1, 1) NOT NULL,
	[CodTipoAplicacion] INT			 NOT NULL,
    [Descripcion]		VARCHAR (50) NULL,
    [Estado]			INT          NULL,
CONSTRAINT [PK_Aplicacion] PRIMARY KEY CLUSTERED 
([Id] ASC) ON [PRIMARY]
)ON [PRIMARY]
GO

CREATE TABLE [dbo].[Usuario](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[PerfilId]		[int] NOT NULL,
	[CtaUsuario]	[varchar](25) NOT NULL,
	[Contrasenia]	VARBINARY(8000) NOT NULL,
	[Nombres]		[varchar](50) NOT NULL,
	[Apellidos]		[varchar](50) NOT NULL,
	[Cargo]		    [varchar](48) NULL,
	[Email]			[varchar](255) NOT NULL,
	[Telefono]		[varchar](50) NULL,
	[Estado]		[tinyint] NOT NULL, --Activo Inactivo
	[CambiarContrasenia] [bit] NULL,
	[FechaVencimientoCta] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[AuditoriaUC]	[int] NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
( [Id] ASC) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Perfil](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[AplicacionId]  [int] NULL,
	[Nombre]		[varchar](50) NOT NULL,
	[Descripcion]	[varchar](255) NOT NULL,
	[AuditoriaUC]	[int] NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
([Id] ASC) ON [PRIMARY]) 
ON [PRIMARY]
GO

CREATE TABLE [dbo].[Opcion](
	[Id] [int]		IDENTITY(1,1) NOT NULL,
	[AplicacionId]  [int] NOT NULL,
	[PadreId]		[int] NULL,
	[Nombre]		[varchar](80) NOT NULL,
	[Nivel]			[int] NULL,
	[NivelPadre]	[int] NULL,
    [Imagen]		[varchar](50) NULL,
    [Controler]		[varchar](50) NULL,
    [Accion]		[varchar](50) NULL,
    [Orden]			[int] NULL,
    [Observacion]	[varchar](50) NULL,
    [Estado]		[tinyint] NOT NULL, --Activo Inactivo
	[AuditoriaUC]	[int] NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
([Id] ASC)ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OpcionPerfil](
	[AplicacionId]	[int] NOT NULL,
	[PerfilId]		[int] NOT NULL,
	[OpcionId]		[int] NOT NULL,
	[Escritura]		[bit] NOT NULL,
	[AuditoriaUC]	[int] NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HistorialContrasenia](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[UsuarioId]		[int] NOT NULL,
	[Fecha]			[datetime] NOT NULL,
	[ContraseniaAnt] [varchar](100) NOT NULL,
	[ContraseniaAct] [varchar](100) NOT NULL,
	[AuditoriaUC]	[int] NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
CONSTRAINT [PK_HistorialContrasenia] PRIMARY KEY CLUSTERED 
([Id] ASC) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Parametro](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[CodigoGrupo]	[int] NOT NULL,
	[Grupo]			[varchar](50) NOT NULL,
	[Codigo]		[int] NOT NULL,
	[Nombre]		[varchar](100) NOT NULL,
	[Valor]			[varchar](100) NULL,
	[Descripcion]	[varchar](255) NULL,
	[ValueText1]	[varchar](255) NULL,
	[ValueText2]	[varchar](255) NULL,
	[ValueText3]	[varchar](255) NULL,
	[AuditoriaUC]	[int] NOT NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
 CONSTRAINT [PK_Parametro] PRIMARY KEY CLUSTERED 
([Id] ASC)ON [PRIMARY]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Solicitud](
	[Id]					[int] IDENTITY(1,1) NOT NULL,
	[NumSolicitud]			[varchar](15) NULL,
	[FechaSolicitud]		[datetime] NULL,
	[CiudadInteres]			[varchar](50) NULL, --Nombre de la ciudad de interes
	[UbigeoCiudadInteres]	[varchar](6) NULL, --Ubigeo de la ciudad de interes deberia de quedar.
	[MontoCapital]			[decimal](18,2) NULL,
	[FuenteFinanciamiento]	[varchar](50) NULL,
	[FechaInicioOperacion]	[datetime] NULL,
	[LocalDisponible]		[int] NULL, ---0: NO 1:SI
	[CondicionLocalId]		[int] NULL, --DESCRIPCION EN TABLA PARAMETROS :: GRUPO=CONDICION_LOCAL
	[UbigeoLocal]			[varchar](6) NULL,
	[DireccionLocal]		[varchar](250) NULL,
	[TipoUbicacionLocalId]	[int] NULL, --DESCRIPCION EN TABLA PARAMETROS  :: GRUPO=UBICACION_LOCAL
	[ReferenciaComercial]	[varchar](500) NULL,
	[ReferenciaBancaria]	[varchar](500) NULL,
	[Estado]				[int]		NULL, --Estado de la solicitud 1:Pendiente 2: Aprobada 3:Rechazada DESCRIPCION EN TABLA PARAMETROS  :: GRUPO=ESTADO_SOLICITUD
	[AuditoriaUC]			[int] NOT NULL,
	[AuditoriaUM]			[int] NULL,
	[AuditoriaFC]			[datetime] NOT NULL,
	[AuditoriaFM]			[datetime] NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
([Id] ASC) ON [PRIMARY]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Solicitante](
	[Id]					[int] IDENTITY(1,1) NOT NULL,
	[TipoSolicitanteId]		[int] NOT NULL, -- DESCRIPCION EN TABLA PARAMETROS :: GRUPO=TIPO_SOLICITANTE
	[SolicitudId]			[int] NOT NULL,
	[Nombres]				[varchar](50) NULL,
	[ApellidoPaterno]		[varchar](50) NULL,
	[ApellidoMaterno]		[varchar](50) NULL,
	[RazonSocial]			[varchar](250) NULL,
	[TipoDocumentoId]		[int] NULL,  -- DESCRIPCION EN TABLA PARAMETROS :: GRUPO=TIPO_DOCUMENTO
	[NumeroDocumento]		[varchar](15) NULL,
	[SexoId]				[int] NULL,	-- DESCRIPCION EN TABLA PARAMETROS :: GRUPO=SEXO
	[EstadoCivilId]			[int] NULL, -- DESCRIPCION EN TABLA PARAMETROS :: GRUPO=ESTADO_CIVIL
	[FechaIniCargoAct]		[datetime] NULL,
	[FechaFinCargoAct]		[datetime] NULL,
	[NombreJefeDirecto]		[varchar](250) NULL,
	[TelefonoJefeDirecto]	[varchar](15) NULL,
	[FechaConstitucion]		[datetime] NULL,
	[ActividadEconomica]	[varchar](250) NULL,
	[NumeroEmpleados]		[int] NULL,
	[MontoIngresosAnuales]	[decimal](18,2) NULL,
	[UbigeoDireccion]		[varchar](6) NULL,
	[Direccion]				[varchar](250) NULL,
	[Email]					[varchar](50) NULL,
	[Telefono]				[varchar](15) NULL,
	[InstitucionEducativa]	[varchar](100) NULL, --Ultima Institucion de estudios
	[TituloObtenido]		[varchar](50) NULL,
	[DuracionEstudios]		[int] NULL, -- Cantidad de años academicos
	[Idiomas]				[varchar](50) NULL,
	[Empresa]				[varchar](100) NULL, --Ultima empresa de laburo
	[Cargo]					[varchar](100) NULL, 
	[MontoIngresosMes]		[decimal](18,2) NULL,
	[MontoGastosMes]		[decimal](18,2) NULL,
	[Observacion]			[varchar](250) NULL, 
	[AuditoriaUC]			[int] NOT NULL,
	[AuditoriaUM]			[int] NULL,
	[AuditoriaFC]			[datetime] NOT NULL,
	[AuditoriaFM]			[datetime] NULL,
 CONSTRAINT [PK_Solicitante] PRIMARY KEY CLUSTERED 
( [Id] ASC) ON [PRIMARY]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Entrevista](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[SolicitudId]	[int] NOT NULL,
	[FechaEntrevisa] [varchar](10) NULL, -- Formato: DD/MM/YYYY
	[HoraEntrevisa] [varchar](5) NULL, -- Formato: HH24:MM
	[EntrevistadorId]	[int] NOT NULL, --Sera un usuario registrado en el sistema
	[LugarId]	[int] NOT NULL, --Sera una sala de la empresa registrada en el sistema DESCRIPCION EN TABLA PARAMETROS :: GRUPO=SALAS
	[Observacion] [varchar](250) NULL,
	[Estado]		[int] NOT NULL, -- Estados: 1:Enviada Pendiente de confirmar 2: Confirmada 3: Rechazada 4:Reprogramada 5:Cancelada DESCRIPCION EN TABLA PARAMETROS :: GRUPO=ESTADO_ENTREVISTA
	[AuditoriaUC]	[int] NOT NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
 CONSTRAINT [PK_Entrevista] PRIMARY KEY CLUSTERED 
([Id] ASC)ON [PRIMARY]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ReporteEvaluacion](
	[Id]			[int] IDENTITY(1,1) NOT NULL,
	[SolicitudId]	[int] NOT NULL,
	[FechaReporte]  [datetime] NULL,
	[ResultadoEjercicio] [varchar](250) NULL,
	[ErroresEncontrados] [varchar](400) NULL,
	[AuditoriaUC]	[int] NOT NULL,
	[AuditoriaUM]	[int] NULL,
	[AuditoriaFC]	[datetime] NOT NULL,
	[AuditoriaFM]	[datetime] NULL,
 CONSTRAINT [PK_ReporteEvaluacion] PRIMARY KEY CLUSTERED 
([Id] ASC)ON [PRIMARY]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ubigeo](
	[Id]				[char](6) NOT NULL,
	[DepartamentoId]	[char](2) NULL,
	[ProvinciaId]		[char](2) NULL,
	[DistritoId]		[char](2) NULL,
	[Nombre]			[varchar](50) NOT NULL,
	[Estado]			[tinyint] NOT NULL,
	[AuditoriaUC]		[int] NULL,
	[AuditoriaUM]		[int] NULL,
	[AuditoriaFC]		[datetime] NOT NULL,
	[AuditoriaFM]		[datetime] NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
 ([Id] ASC) ON [PRIMARY]) ON [PRIMARY]
GO

/**************************************/
/************ Restricciones  **************/
/**************************************/

-- ForeignKey [FK_Entrevista_Solicitud]
ALTER TABLE [dbo].[Entrevista]  WITH CHECK ADD  CONSTRAINT [FK_Entrevista_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud] ([Id])
GO
ALTER TABLE [dbo].[Entrevista] CHECK CONSTRAINT [FK_Entrevista_Solicitud]
GO
-- ForeignKey [FK_ReporteEvaluacion_Solicitud] 
ALTER TABLE [dbo].[ReporteEvaluacion]  WITH CHECK ADD  CONSTRAINT [FK_ReporteEvaluacion_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud] ([Id])
GO
ALTER TABLE [dbo].[ReporteEvaluacion] CHECK CONSTRAINT [FK_ReporteEvaluacion_Solicitud]
GO
-- ForeignKey [FK_Solicitud_Solicitante] 
ALTER TABLE [dbo].[Solicitante]  WITH CHECK ADD  CONSTRAINT [FK_Solicitante_Solicitud] FOREIGN KEY([SolicitudId])
REFERENCES [dbo].[Solicitud]([Id])
GO
ALTER TABLE [dbo].[Solicitante] CHECK CONSTRAINT [FK_Solicitante_Solicitud]
GO

/**************************************/
/************ Funciones  **************/
/**************************************/

-- DROP FUNCTION UFN_PASS_DECRIPT
CREATE FUNCTION UFN_PASS_DECRIPT(@PASS VARBINARY(8000)) RETURNS VARCHAR(50) 
--
BEGIN
	
	DECLARE @D_PASS AS VARCHAR(50)

	SET @D_PASS = DECRYPTBYPASSPHRASE('Encript0110', @PASS)

	RETURN @D_PASS

END

go

-- DROP FUNCTION UFN_PASS_ENCRIPT
CREATE FUNCTION UFN_PASS_ENCRIPT(@PASS VARCHAR(50)) RETURNS VARBINARY(8000) 
--
BEGIN
	
	DECLARE @D_PASS AS  VARBINARY(8000)

	SET @D_PASS = ENCRYPTBYPASSPHRASE('Encript0110', @PASS)

	RETURN @D_PASS

END

go

/**************************************/
/********* Stores Procedures **********/
/**************************************/

-- DROP PROCEDURE [dbo].[USPS_Login]
CREATE PROCEDURE [dbo].[USPS_Login]
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
go

-- DROP PROCEDURE [dbo].[USPS_Usuario]
CREATE PROCEDURE [dbo].[USPS_Usuario]
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

-- DROP PROCEDURE [dbo].[USPS_Perfil]
CREATE PROCEDURE [dbo].[USPS_Perfil]
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

-- DROP PROCEDURE [dbo].[USPS_Opcion]
CREATE PROCEDURE [dbo].[USPS_Opcion]
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

-- DROP PROCEDURE [dbo].[USPS_OpcionXPerfil]
CREATE PROCEDURE [dbo].[USPS_OpcionXPerfil]
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

-- DROP PROCEDURE [dbo].[USPS_Parametro]
CREATE PROCEDURE [dbo].[USPS_Parametro]
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

-- =============================================
-- Author:		Yussel Ulloa
-- Create date: 15/07/2017
-- Description:	lista las solicitudes por solicitante
-- =============================================
-- DROP PROCEDURE [dbo].[USPS_SolicitudXSolicitante]
CREATE PROCEDURE [dbo].[USPS_SolicitudXSolicitante]
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

-- DROP PROCEDURE [dbo].[USPS_ResultadoEvaluacion]
CREATE PROCEDURE [dbo].[USPS_ResultadoEvaluacion]
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

-- DROP PROCEDURE [dbo].[USPU_Solicitud]
CREATE PROCEDURE [dbo].[USPU_Solicitud]
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

-- DROP PROCEDURE [dbo].[USPI_ResultadoEvaluacion]
CREATE PROCEDURE [dbo].[USPI_ResultadoEvaluacion]
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

-- =============================================
-- Author:		Yussel Ulloa Gómez
-- Create date: 21/07/2017
-- Description:	Listado de solicitantes
-- =============================================
-- DROP PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]
CREATE PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]	
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
		   SL.NumSolicitud 
	FROM Solicitante S 
	INNER JOIN Solicitud SL on S.SolicitudId = SL.Id
	INNER JOIN Parametro TD on S.TipoDocumentoId = TD.Codigo and TD.CodigoGrupo = 5

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