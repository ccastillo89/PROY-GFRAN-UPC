USE [PARDOSDB]
GO
/****** Object:  StoredProcedure [dbo].[USPS_SolicitanteXEvaluar]    Script Date: 09/14/2017 00:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Yussel Ulloa Gómez
-- Create date: 21/07/2017
-- Description:	Listado de solicitantes
-- =============================================
-- DROP PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]
ALTER PROCEDURE [dbo].[USPS_SolicitanteXEvaluar]
	@desc			varchar(200),
	@estado			int,
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
		   S.FechaNacimiento,
		   SL.FechaSolicitud,
		   coalesce(S.FueAprobado, -2) as Estado
	FROM Solicitante S 
	INNER JOIN Solicitud SL on S.SolicitudId = SL.Id
	INNER JOIN Parametro TD on S.TipoDocumentoId = TD.Codigo and TD.CodigoGrupo = 5
	INNER JOIN Parametro TDSexo on S.SexoId = TDSexo.Codigo AND TDSexo.CodigoGrupo = 6
	WHERE ((@estado = -1) or (coalesce(S.FueAprobado, -2) = @estado))
	and ((@desc = '') or (UPPER(S.ApellidoPaterno + ' ' + S.ApellidoMaterno + ' ' + Nombres) like '%' + UPPER(@desc) + '%' or S.NumeroDocumento like '%' + @desc + '%'))
	
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