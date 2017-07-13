using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Inherited;
using System.Web.Script.Serialization;
using UPC.SISGFRAN.EL.Comunes;
using System.Net;
using System.IO;

namespace UPC.SISGFRAN.WS.Repositorios
{
    public class MenuBL
    {
        public List<OpcionXPerfilEL> ListarMenu(OpcionXPerfilEL opcionPerfil)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string postdata = serializer.Serialize(opcionPerfil); ;
            byte[] data = Encoding.UTF8.GetBytes(postdata);
            HttpWebRequest req = (HttpWebRequest)WebRequest
                .Create("http://" + Constantes.servidorSeg + ":" + Constantes.puertoSeg
                + "/Seguridad/SeguridadService.svc/Menu");
            req.Method = "POST";
            req.ContentLength = data.Length;
            req.ContentType = "application/json";
            var reqStream = req.GetRequestStream();
            reqStream.Write(data, 0, data.Length);
            HttpWebResponse res = null;
            List<OpcionXPerfilEL> listaMenu = null;
            try
            {
                res = (HttpWebResponse)req.GetResponse();
                StreamReader reader = new StreamReader(res.GetResponseStream());
                string usuarioJson = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                listaMenu = js.Deserialize<List<OpcionXPerfilEL>>(usuarioJson);
            }
            catch (WebException e)
            {
                HttpStatusCode code = ((HttpWebResponse)e.Response).StatusCode;
                string message = ((HttpWebResponse)e.Response).StatusDescription;
                StreamReader reader = new StreamReader(e.Response.GetResponseStream());
                string error = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                string mensaje = js.Deserialize<string>(error);
            }
            return listaMenu;
        }
    }
}
