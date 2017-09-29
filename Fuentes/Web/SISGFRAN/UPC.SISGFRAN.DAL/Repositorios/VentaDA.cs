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

namespace UPC.SISGFRAN.DAL.Repositorios
{
    public class VentaDA
    {
                //Parametros a enviar: Periodo(año a pronosticar) y Local (Id de Local) a pronosticar

        // Devolver 2 ultimos años anteriores al año a pronoscitar.

        //Si el local no posee datos, debe tomarse los datos de la franquicia-local por defecto.

        public List<VentaEL> GetVentasxLocal(int local, int periodo)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idLocal", DbType.Int32 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@Periodo", DbType.Int32 ,ParameterDirection.Input)
                };

            arrParam[0].Value = local;
            arrParam[1].Value = periodo;
            //arrParam[2].Value = Constantes.EstadoSolicitud.Pendiente;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_VentasxLocal";
            objRequest.Parameters.AddRange(arrParam);

            List<VentaEL> lstVentas = new List<VentaEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;
                
                while (dr.Read())
                {
                    VentaEL item = new VentaEL();
                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.Periodo = Funciones.CheckInt(dr["Periodo"]);
                    item.Monto = Funciones.CheckFloat(dr["Monto"]);
                    item.IdLocal = Funciones.CheckInt(dr["Idlocal"]);

                    lstVentas.Add(item);
                }
            }
            catch (Exception e)
            {
                lstVentas = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstVentas;
        }



        public List<VentaEL> GetVentasHistorico(int local, int periodo)
        {
            DAABRequest.Parameter[] arrParam = {
                new DAABRequest.Parameter("@idLocal", DbType.Int32 ,ParameterDirection.Input),
                new DAABRequest.Parameter("@Periodo", DbType.Int32 ,ParameterDirection.Input)
                };

            arrParam[0].Value = local;
            arrParam[1].Value = periodo;
            //arrParam[2].Value = Constantes.EstadoSolicitud.Pendiente;

            configPARDOSDB objPardosDb = new configPARDOSDB();
            DAABRequest objRequest = objPardosDb.CreaRequest();
            objRequest.CommandType = CommandType.StoredProcedure;
            objRequest.Command = "GFR.USPS_VentasHistorico";
            objRequest.Parameters.AddRange(arrParam);

            List<VentaEL> lstVentas = new List<VentaEL>();
            IDataReader dr = null;
            try
            {
                dr = objRequest.Factory.ExecuteReader(ref objRequest).ReturnDataReader;

                while (dr.Read())
                {
                    VentaEL item = new VentaEL();
                    item.Id = Funciones.CheckInt(dr["Id"]);
                    item.Periodo = Funciones.CheckInt(dr["Periodo"]);
                    item.Monto = Funciones.CheckFloat(dr["Monto"]);
                    item.IdLocal = Funciones.CheckInt(dr["Idlocal"]);

                    lstVentas.Add(item);
                }
            }
            catch (Exception e)
            {
                lstVentas = null;
                throw e;
            }
            finally
            {
                if (dr != null && dr.IsClosed == false) dr.Close();
                objRequest.Parameters.Clear();
                objRequest.Factory.Dispose();
            }
            return lstVentas;
        }

    }
}
