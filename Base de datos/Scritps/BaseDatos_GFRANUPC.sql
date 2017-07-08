USE [master]
GO
-- creacion de base de datos
--CREATE DATABASE [GFRANDB] ON  PRIMARY 
--( NAME = N'GFRANDB', FILENAME = N'K:\Data\GFRANDB.mdf' , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--(NAME = N'GFRANDB_log', FILENAME = N'K:\Data\GFRANDB_1.ldf' , MAXSIZE = 2048GB , FILEGROWTH = 10%)
--GO

--DROP DATABASE GFRANDB
GO

USE [GFRANDB]
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
	[CodCargo]		[varchar](48) NULL,
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

/**************************************/
/************ Funciones  **************/
/**************************************/

-- DROP FUNCTION UFN_PASS_DECRIPT
CREATE FUNCTION UFN_PASS_DECRIPT(@PASS VARBINARY(8000)) RETURNS VARCHAR(50) 
--WITH ENCRYPTION
BEGIN
	
	DECLARE @D_PASS AS VARCHAR(50)

	SET @D_PASS = DECRYPTBYPASSPHRASE('Encript0110', @PASS)

	RETURN @D_PASS

END

go

-- DROP FUNCTION UFN_PASS_ENCRIPT
CREATE FUNCTION UFN_PASS_ENCRIPT(@PASS VARCHAR(50)) RETURNS VARBINARY(8000) 
--WITH ENCRYPTION
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
WITH ENCRYPTION
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
WITH ENCRYPTION
AS
BEGIN TRY

	SELECT	U.Id,
			U.PerfilId,
			P.Nombre as perfil, 
			U.CtaUsuario,
			U.Apellidos,
			U.Nombres,
			U.CodCargo,
			PC.Nombre AS Cargo,
			U.Email,
			U.telefono,
			U.CambiarContrasenia,
			U.FechaVencimientoCta,
			U.FechaVencimiento,
			U.Estado
	FROM Usuario U
		INNER JOIN Perfil P ON U.PerfilId = P.Id
		LEFT JOIN Parametro PC ON U.CodCargo = PC.Codigo AND PC.CodigoGrupo = 1
	WHERE ((@estado = -1) OR (U.Estado = @estado))
	AND ((@idUsuario = 0) OR (U.Id = @idUsuario))
	AND ((RTRIM(LTRIM(@nombres)) = '') OR ((U.Nombres + ' ' + U.Apellidos) LIKE '%' + @nombres + '%'))
	AND ((@idPerfil = 0) OR (U.PerfilId = @idPerfil))
	
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
WITH ENCRYPTION
AS
BEGIN TRY

	SELECT	P.Id,
			P.Nombre,
			P.Descripcion,
			p.AplicacionId,
			A.Descripcion as Aplicacion
	FROM Perfil P
		inner join Aplicacion A on P.AplicacionId = A.Id and A.Estado = 1
	WHERE ((@idperfil = 0) OR (P.Id = @idperfil))
	AND ((@idapp = 0) OR (P.AplicacionId = @idapp))
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
WITH ENCRYPTION
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
	WHERE ((@idOpcion = 0) OR (O.Id = @idOpcion)) 
	AND ((@idapp = 0) OR (O.AplicacionId = @idapp))
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
WITH ENCRYPTION
AS
BEGIN TRY

	SELECT	OP.OpcionId,
			O.Nombre,
			OP.AplicacionId,
			A.Descripcion,
			OP.PerfilId,
			P.Nombre,
			OP.Escritura
	FROM OpcionPerfil OP
		INNER JOIN Aplicacion A ON OP.AplicacionId = A.Id
		INNER JOIN Perfil P ON OP.PerfilId = P.Id
		INNER JOIN Opcion O ON OP.OpcionId= O.Id
	WHERE ((@idapp = 0) OR (OP.AplicacionId = @idapp))
	AND ((@idperfil = 0) OR (OP.PerfilId = @idperfil))
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
WITH ENCRYPTION
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