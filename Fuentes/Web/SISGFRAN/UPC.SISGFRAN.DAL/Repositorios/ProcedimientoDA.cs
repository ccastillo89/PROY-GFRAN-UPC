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
    public class ProcedimientoDA
    {

        public List<ProcedimientoEL> GetProcedimientos(ProcedimientoEL proc)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@id", DbType.Int32,ParameterDirection.Input),
                new DAABRequest.Parameter("@nombre", DbType.String, 250,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = proc.Id;
            arrParam[1].Value = proc.Nombre;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_Procedimiento";
            objRequest.Parameters.AddRange(arrParam);

            List<ProcedimientoEL> lstProcedimiento = new List<ProcedimientoEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    ProcedimientoEL item = new ProcedimientoEL();
                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.Nombre = Funciones.CheckStr(dr["Nombre"]);
                    item.Version = Funciones.CheckStr(dr["Version"]);
                    item.Peso = Funciones.CheckDecimal(dr["Peso"]);

                    ParametroEL oEstado = new ParametroEL() { Id = Funciones.CheckInt(dr["Estado"])};

                    item.Estado = oEstado;
                    lstProcedimiento.Add(item);
                }
            }
            catch (Exception e)
            {
                lstProcedimiento = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstProcedimiento;
        }


    }
}
