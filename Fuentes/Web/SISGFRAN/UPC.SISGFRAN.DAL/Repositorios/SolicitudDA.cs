using DAAB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.DAL.Base;
using UPC.SISGFRAN.EL.Comunes;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.EL.NonInherited;


namespace UPC.SISGFRAN.DAL.Repositorios
{
    public class SolicitudDA
    {
        public List<SolicitudEL> GetSolicitudesPendientes(string desc)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@desc", DbType.String, 100 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@estado", DbType.Int32 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = desc;
            arrParam[1].Value = Constantes.EstadoSolicitud.Pendiente;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_SolicitudXSolicitante";
            objRequest.Parameters.AddRange(arrParam);

            List<SolicitudEL> lstSolicitudes = new List<SolicitudEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    SolicitudEL item = new SolicitudEL();
                    item.Id = Funciones.CheckInt(dr["IdSolicitud"]);
                    item.NumSolicitud = Funciones.CheckStr(dr["NumSolicitud"]);
                    item.FechaSolicitud = Funciones.CheckDate(dr["FechaSolicitud"]);

                    SolicitanteEL solicitante = new SolicitanteEL();
                    solicitante.Id = Funciones.CheckInt(dr["IdSolicitante"]);
                    solicitante.ApellidoPaterno = Funciones.CheckStr(dr["ApellidoPaterno"]);
                    solicitante.ApellidoMaterno = Funciones.CheckStr(dr["ApellidoMaterno"]);
                    solicitante.Nombres = Funciones.CheckStr(dr["Nombres"]);
                    solicitante.Direccion = Funciones.CheckStr(dr["Direccion"]);
                    solicitante.Email = Funciones.CheckStr(dr["Email"]);

                    ParametroEL oTipoDocumento = new ParametroEL()
                    {
                        Codigo = Funciones.CheckInt(dr["TipoDocumentoId"]),
                        Nombre = Funciones.CheckStr(dr["TipoDocumento"])
                    };

                    solicitante.TipoDocumento = oTipoDocumento;
                    solicitante.NumeroDocumento = Funciones.CheckStr(dr["NumeroDocumento"]);

                    ParametroEL oEstado = new ParametroEL()
                    {
                        Codigo = Funciones.CheckInt(dr["EstadoId"]),
                        Nombre = Funciones.CheckStr(dr["Estado"])
                    };

                    item.Estado = oEstado;

                    item.Solicitante = solicitante;
                    lstSolicitudes.Add(item);
                }
            }
            catch (Exception e)
            {
                lstSolicitudes = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstSolicitudes;
        }

        public SolicitudEL GetResultadoEvaluacion(int IdSolicitud)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@solicitudId", DbType.Int32 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = IdSolicitud;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_ResultadoEvaluacion";
            objRequest.Parameters.AddRange(arrParam);

            SolicitudEL item = null;
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    item = new SolicitudEL();
                    item.Id = Funciones.CheckInt(dr["SolicitudId"]);
                    item.NumSolicitud = Funciones.CheckStr(dr["NumSolicitud"]);
                    item.FechaSolicitud = Funciones.CheckDate(dr["FechaSolicitud"]);
                    item.MontoCapital = Funciones.CheckDecimal(dr["MontoCapital"]);

                    ParametroEL estado = new ParametroEL() {
                        Codigo = Funciones.CheckInt(dr["EstadoId"]),
                        Nombre = Funciones.CheckStr(dr["Estado"])
                    };

                    item.Estado = estado;

                    ReporteEvaluacionEL reporte = new ReporteEvaluacionEL()
                    {
                        Id = Funciones.CheckInt(dr["ReporteEvalId"]),
                        Fecha = Funciones.CheckDate(dr["FechaReporte"]),
                        ResultadoEjercicio = Funciones.CheckStr(dr["ResultadoEjercicio"]),
                        ErroresEncontrados = Funciones.CheckStr(dr["ErroresEncontrados"])
                    };

                    SolicitanteEL solicitante = new SolicitanteEL()
                    {
                        ApellidoPaterno = Funciones.CheckStr(dr["ApellidoPaterno"]),
                        ApellidoMaterno = Funciones.CheckStr(dr["ApellidoMaterno"]),
                        Nombres = Funciones.CheckStr(dr["Nombres"])
                    };

                    item.ReporteEvaluacion = reporte;
                    item.Solicitante = solicitante;
                }
            }
            catch (Exception e)
            {
                item = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return item;
        }
    }
}
