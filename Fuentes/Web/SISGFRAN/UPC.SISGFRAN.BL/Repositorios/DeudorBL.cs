using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Inherited;
using System.Web.Script.Serialization;
using System.Net;
using System.IO;
using UPC.SISGFRAN.EL.Comunes;

namespace UPC.SISGFRAN.BL.Repositorios
{
    public class DeudorBL
    {
        public DeudorEL ConsultaSBS(string numeroDocumento)
        {
            HttpWebRequest req = (HttpWebRequest)WebRequest
                .Create("http://" + Constantes.servidorSBS + ":" + Constantes.puertoSBS
                + "/SBS/ConsultaSBS.svc/Consultas/" + numeroDocumento);
            
            req.Method = "GET";
            HttpWebResponse res = null;
            DeudorEL deudor = new DeudorEL();
            try
            {
                res = (HttpWebResponse)req.GetResponse();
                StreamReader reader = new StreamReader(res.GetResponseStream());
                string deudorJson = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                deudor = js.Deserialize<DeudorEL>(deudorJson);

            }
            
            catch (WebException e)
            {
                /*HttpStatusCode code = ((HttpWebResponse)e.Response).StatusCode;
                string message = ((HttpWebResponse)e.Response).StatusDescription;
                StreamReader reader = new StreamReader(e.Response.GetResponseStream());
                string error = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                string mensaje = js.Deserialize<string>(error);*/
                deudor = new DeudorEL();
                deudor.CodeMessage = -99;
                deudor.MessageErr = "El servicio de consulta créditos no se encuentra disponible. Por favor, intentar nuevamente. Si el error persiste, contacte al equipo de Soporte.";
            }
            catch (Exception ex)
            {
                deudor = new DeudorEL();
            }
            return deudor;
        }
    }
}
