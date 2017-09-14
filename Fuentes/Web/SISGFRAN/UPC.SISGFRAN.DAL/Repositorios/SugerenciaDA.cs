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
    public class SugerenciaDA
    {
        public List<SugerenciaEL> GetSugerencia(String cboDistrito, String cboLocal, String dtpInicio, String dtpFin)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idDistrito", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@idLocal", DbType.Int32, ParameterDirection.Input),
                new DAABRequest.Parameter("@fechaInicio", DbType.String, 20, ParameterDirection.Input),
                new DAABRequest.Parameter("@fechaFin", DbType.String, 20, ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = cboDistrito;
            arrParam[1].Value = cboLocal;
            arrParam[2].Value = dtpInicio;
            arrParam[3].Value = dtpFin;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_SugerenciasXDistritoLocal";
            objRequest.Parameters.AddRange(arrParam);

            List<SugerenciaEL> lstSugerencia = new List<SugerenciaEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    SugerenciaEL oSugerencia = new SugerenciaEL();
                    oSugerencia = new SugerenciaEL();
                    oSugerencia.Id = Funciones.CheckInt(dr["IdSugerencia"]);
                    oSugerencia.Comentario = Funciones.CheckStr(dr["Comentario"]);
                    oSugerencia.FechaIngreso = Funciones.CheckDate(dr["FechaIngreso"]);
                    oSugerencia.Prioridad = Funciones.CheckStr(dr["Prioridad"]);
                    oSugerencia.Descripcion = Funciones.CheckStr(dr["Descripcion"]);
                    LocalEL olocal = new LocalEL();
                    olocal.Nombre = Funciones.CheckStr(dr["NombreLocal"]);
                    olocal.Responsable = Funciones.CheckStr(dr["Responsable"]);

                    oSugerencia.Local = olocal;
                    lstSugerencia.Add(oSugerencia);

                }
            }
            catch (Exception e)
            {
                lstSugerencia = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstSugerencia;
        }

        public List<SugerenciaEL> GetSugerenciaEvaluada(int evalProcDetId)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idEPD", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = evalProcDetId;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_SugerenciaEvaluada";
            objRequest.Parameters.AddRange(arrParam);

            List<SugerenciaEL> lstSugerencias = new List<SugerenciaEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    SugerenciaEL item = new SugerenciaEL();

                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.Descripcion = Funciones.CheckStr(dr["descripcion"]);
                    item.Fecha = Convert.ToDateTime(dr["fecha"]);

                    ProcedimientoEL oProcedimiento = new ProcedimientoEL()
                    {
                        Id = Funciones.CheckInt(dr["procedimientoId"]),
                        Nombre = Funciones.CheckStr(dr["Procedimiento"])
                    };
                    item.Procedimiento = oProcedimiento;

                    EmpleadoEL oEmpleado = new EmpleadoEL()
                    {
                        NombreCompleto = Funciones.CheckStr(dr["Empleado"])
                    };

                    item.Empleado = oEmpleado;

                    lstSugerencias.Add(item);
                }
            }
            catch (Exception e)
            {
                lstSugerencias = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstSugerencias;
        }
    
    }
}
       
