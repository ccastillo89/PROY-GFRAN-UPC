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
    public class EvaluacionProcedimientoDA
    {

        public List<EvaluacionProcedimientoEL> GetEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@id", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@idFranquicia", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@periodo", DbType.String, 6,ParameterDirection.Input),
                new DAABRequest.Parameter("@condicion", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProc.Id;
            arrParam[1].Value = evalProc.Local.Id;
            arrParam[2].Value = evalProc.Periodo;
            arrParam[3].Value = evalProc.Estado.Codigo;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_EvaluacionProcedimiento";
            objRequest.Parameters.AddRange(arrParam);

            List<EvaluacionProcedimientoEL> lstEvaluacion = new List<EvaluacionProcedimientoEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    EvaluacionProcedimientoEL item = new EvaluacionProcedimientoEL();

                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.Periodo = Funciones.CheckStr(dr["Periodo"]);

                    LocalEL oLocal = new LocalEL();
                    oLocal.Id = Funciones.CheckInt(dr["LocalId"]);
                    oLocal.Nombre = Funciones.CheckStr(dr["Franquicia"]);
                    oLocal.Responsable = Funciones.CheckStr(dr["responsable"]);

                    UsuarioEL oUsuario = new UsuarioEL();
                    oUsuario.Email = Funciones.CheckStr(dr["Email"]);
                    oLocal.Usuario = oUsuario;

                    item.Local = oLocal;

                    item.CantReclamos = Funciones.CheckInt(dr["Nro_reclamos"]);
                    item.CantSugerencia = Funciones.CheckInt(dr["Nro_sugerencias"]);

                    ParametroEL oEstado = new ParametroEL()
                    {
                        Codigo = Funciones.CheckInt(dr["CondicionId"]),
                        Nombre = Funciones.CheckStr(dr["Condicion"])
                    };
                    item.Estado = oEstado;

                    lstEvaluacion.Add(item);
                }
            }
            catch (Exception e)
            {
                lstEvaluacion = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstEvaluacion;
        }

        public EvaluacionProcedimientoEL RegistrarEvaluacionProc(EvaluacionProcedimientoEL evalProc)
        {

            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@periodo", DbType.String, 250 , ParameterDirection.Input),
                new DAABRequest.Parameter("@localId", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@procesoId", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@usuarioId", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@idEvalProc", DbType.Int32, ParameterDirection.Output),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProc.Periodo;
            arrParam[1].Value = evalProc.Local.Id;
            arrParam[2].Value = evalProc.ProcedimientoId;
            arrParam[3].Value = evalProc.UsuarioCreacion;

            EvaluacionProcedimientoEL evaluacionRegistrada = null;

            configPARDOSDB objTrackDb = new configPARDOSDB();
            DAABRequest objRequest = objTrackDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPI_EvaluacionProcedimiento";
            objRequest.Parameters.AddRange(arrParam);
            try
            {
                objRequest.Factory.ExecuteScalar(ref objRequest);
                IDataParameter p1, p2, pSalida;
                pSalida = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 3];
                p2 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 2];
                p1 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 1];

                evaluacionRegistrada = evalProc;
                evaluacionRegistrada.CodeMessage = Funciones.CheckInt(p2.Value);
                evaluacionRegistrada.MessageErr = p1.Value.ToString();
                evaluacionRegistrada.Id = Funciones.CheckInt(pSalida.Value);
            }
            catch (Exception ex)
            {
                objRequest.Factory.RollBackTransaction();
                throw ex;
            }
            finally
            {
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return evaluacionRegistrada;
        }

        public List<EvaluacionProcedimientoEL> GetEvaluacionProcGrafico(int evalProcId)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idEP", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProcId;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_EvaluacionProcGrafico";
            objRequest.Parameters.AddRange(arrParam);

            List<EvaluacionProcedimientoEL> lstEvaluacion = new List<EvaluacionProcedimientoEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    EvaluacionProcedimientoEL item = new EvaluacionProcedimientoEL();

                    item.Periodo = Funciones.CheckStr(dr["Periodo"]);
                    item.CantReclamos = Funciones.CheckInt(dr["TotSugerencia"]);
                    item.CantSugerencia = Funciones.CheckInt(dr["TotReclamo"]);

                    lstEvaluacion.Add(item);
                }
            }
            catch (Exception e)
            {
                lstEvaluacion = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstEvaluacion;
        }

        public EvaluacionProcedimientoEL ActualizarEstado(EvaluacionProcedimientoEL evalProc)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idEvaProc", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@idUsuario", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@estado", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProc.Id;
            arrParam[1].Value = evalProc.UsuarioId;
            arrParam[2].Value = evalProc.Estado.Codigo;

            EvaluacionProcedimientoEL EvalProActualizado = null;

            configPARDOSDB objTrackDb = new configPARDOSDB();
            DAABRequest objRequest = objTrackDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPU_EstadoEvaluacionProcedimiento";
            objRequest.Parameters.AddRange(arrParam);
            try
            {
                objRequest.Factory.ExecuteScalar(ref objRequest);
                IDataParameter p1, p2;
                p2 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 2];
                p1 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 1];

                EvalProActualizado = evalProc;
                EvalProActualizado.CodeMessage = Funciones.CheckInt(p2.Value);
                EvalProActualizado.MessageErr = p1.Value.ToString();
            }
            catch (Exception ex)
            {
                objRequest.Factory.RollBackTransaction();
                throw ex;
            }
            finally
            {
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return EvalProActualizado;
        }

        public EvaluacionProcedimientoEL ActualizarComentario(EvaluacionProcedimientoEL evalProc)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idEvaProc", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@idUsuario", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@comentario", DbType.String, 250, ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProc.Id;
            arrParam[1].Value = evalProc.UsuarioId;
            arrParam[2].Value = evalProc.Comentario;

            EvaluacionProcedimientoEL EvalProActualizado = null;

            configPARDOSDB objTrackDb = new configPARDOSDB();
            DAABRequest objRequest = objTrackDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPU_ComentarioEvaluacionProcedimiento";
            objRequest.Parameters.AddRange(arrParam);
            try
            {
                objRequest.Factory.ExecuteScalar(ref objRequest);
                IDataParameter p1, p2;
                p2 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 2];
                p1 = (IDataParameter)objRequest.Parameters[objRequest.Parameters.Count - 1];

                EvalProActualizado = evalProc;
                EvalProActualizado.CodeMessage = Funciones.CheckInt(p2.Value);
                EvalProActualizado.MessageErr = p1.Value.ToString();
            }
            catch (Exception ex)
            {
                objRequest.Factory.RollBackTransaction();
                throw ex;
            }
            finally
            {
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return EvalProActualizado;
        }

    }
}
