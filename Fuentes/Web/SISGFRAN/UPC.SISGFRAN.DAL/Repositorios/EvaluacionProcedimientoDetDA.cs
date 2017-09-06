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
    public class EvaluacionProcedimientoDetDA
    {

        public List<EvaluacionProcedimientoDetEL> GetEvaluacionProcDet(int evalProcId)
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
            objRequest.Command = "GFR.USPS_EvaluacionProcedimientoDet";
            objRequest.Parameters.AddRange(arrParam);

            List<EvaluacionProcedimientoDetEL> lstEvaluacionDet = new List<EvaluacionProcedimientoDetEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    EvaluacionProcedimientoDetEL item = new EvaluacionProcedimientoDetEL();

                    ProcedimientoEL proce = new ProcedimientoEL();
                    proce.Nombre = Funciones.CheckStr(dr["Procedimiento"]);
                    proce.Version = Funciones.CheckStr(dr["Version"]);

                    item.Procedimiento = proce;

                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.CantidadReclamos = Funciones.CheckInt(dr["CantidadReclamo"]);
                    item.CantidadSugerencia = Funciones.CheckInt(dr["CantidadSugerencia"]);
                    item.Calificacion = Funciones.CheckDecimal(dr["Calificacion"]);

                    lstEvaluacionDet.Add(item);
                }
            }
            catch (Exception e)
            {
                lstEvaluacionDet = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstEvaluacionDet;
        }


    }
}
