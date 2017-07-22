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
    public class SolicitanteDA
    {
        public List<SolicitudEL> GetSolicitantes()
        {
            DAABRequest.Parameter[] arrParam = {            
                new DAABRequest.Parameter("@coderr", DbType.Int32,ParameterDirection.Output),
                new DAABRequest.Parameter("@msgerr", DbType.String, 1000,ParameterDirection.Output)
            };            

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_SolicitanteXEvaluar";
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
                    
                    SolicitanteEL solicitante = new SolicitanteEL();
                    solicitante.Id = Funciones.CheckInt(dr["IdSolicitante"]);
                    solicitante.ApellidoPaterno = Funciones.CheckStr(dr["ApellidoPaterno"]);
                    solicitante.ApellidoMaterno = Funciones.CheckStr(dr["ApellidoMaterno"]);
                    solicitante.Nombres = Funciones.CheckStr(dr["Nombres"]);

                    ParametroEL oTipoDocumento = new ParametroEL()
                    {
                        Codigo = Funciones.CheckInt(dr["TipoDocumentoId"]),
                        Nombre = Funciones.CheckStr(dr["TipoDocumento"])
                    };

                    solicitante.TipoDocumento = oTipoDocumento;
         
                    item.NumeroDocumento = Funciones.CheckStr(dr["NumeroDocumento"]);
                               
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
    }
}
