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
        public List<SolicitudEL> GetSolicitudes()
        {     
            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "USPS_ListarSolicitudXSolicitante";            

            List<SolicitudEL> lstSolicitudes = new List<SolicitudEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                while (dr.Read())
                {
                    SolicitudEL item = new SolicitudEL();
                    item.Id_Solicitud = Funciones.CheckInt(dr["Id_Solicitud"]);
                    item.Id_Solicitante = Funciones.CheckInt(dr["Id_Solicitante"]);
                    item.NumSolicitud = Funciones.CheckStr(dr["NumSolicitud"]);
                    item.Solicitante = Funciones.CheckStr(dr["Solicitante"]);
                    item.FechaSolicitud = Funciones.CheckDate(dr["FechaSolicitud"]);
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
