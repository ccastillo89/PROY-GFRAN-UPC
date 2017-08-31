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
    public class LocalDA
    {

        public List<LocalEL> GetLocalesXFranquicias(FranquiciaEL franquicia)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idFranquicia", DbType.Int32 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@nombre", DbType.String, 250 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };

            arrParam[0].Value = franquicia.Id;
            arrParam[1].Value = franquicia.Nombre;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_Franquicia";
            objRequest.Parameters.AddRange(arrParam);

            List<LocalEL> lstLocales = new List<LocalEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    LocalEL oLocal = new LocalEL();
                    oLocal.Id = Funciones.CheckInt(dr["LocalId"]);
                    oLocal.Nombre = Funciones.CheckStr(dr["NombreLocal"]);
                    oLocal.FechaApertura = Funciones.CheckStr(dr["fechaApertura"]);
                    oLocal.Responsable = Funciones.CheckStr(dr["responsable"]);
                    oLocal.FranquiciaLocal = Funciones.CheckStr(dr["FranquiLocal"]);
                    FranquiciaEL item = new FranquiciaEL();
                    item.Id = Funciones.CheckInt(dr["FranquiciaId"]);
                    item.Nombre = Funciones.CheckStr(dr["Nombre"]);
                    item.QuotaObjetivo = Funciones.CheckStr(dr["QuotaObjetivo"]);

                    oLocal.Franquicia = item;

                    lstLocales.Add(oLocal);
                }
            }
            catch (Exception e)
            {
                lstLocales = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstLocales;
        }

    }
}
