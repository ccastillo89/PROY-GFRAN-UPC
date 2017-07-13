using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using UPC.SISGFRAN.EL.Comunes;
using UPC.SISGFRAN.EL.Inherited;

namespace UPC.SISGFRAN.WS.Repositorios
{
    public class UsuarioBL
    {
        public UsuarioEL Login(UsuarioEL usuario)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string postdata = serializer.Serialize(usuario); ;
            byte[] data = Encoding.UTF8.GetBytes(postdata);
            HttpWebRequest req = (HttpWebRequest)WebRequest
                .Create("http://" + Constantes.servidorSeg + ":" + Constantes.puertoSeg
                + "/Seguridad/SeguridadService.svc/Login");
            req.Method = "POST";
            req.ContentLength = data.Length;
            req.ContentType = "application/json";
            var reqStream = req.GetRequestStream();
            reqStream.Write(data, 0, data.Length);
            HttpWebResponse res = null;
            UsuarioEL usuarioLogeado = null;
            try
            {
                res = (HttpWebResponse)req.GetResponse();
                StreamReader reader = new StreamReader(res.GetResponseStream());
                string usuarioJson = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                usuarioLogeado = js.Deserialize<UsuarioEL>(usuarioJson);
            }
            catch (WebException e)
            {
                HttpStatusCode code = ((HttpWebResponse)e.Response).StatusCode;
                string message = ((HttpWebResponse)e.Response).StatusDescription;
                StreamReader reader = new StreamReader(e.Response.GetResponseStream());
                string error = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                string mensaje = js.Deserialize<string>(error);
                usuarioLogeado = new UsuarioEL();
                usuarioLogeado.MessageErr = mensaje;
            }

            return usuarioLogeado;
        }

        public UsuarioEL GetUsuarioById(int? idUsuario)
        {
            HttpWebRequest req = (HttpWebRequest)WebRequest
                .Create("http://" + Constantes.servidorSeg + ":" + Constantes.puertoSeg
                + "/Seguridad/SeguridadService.svc/Usuario/" + idUsuario.ToString());
            req.Method = "GET";
            HttpWebResponse res = null;
            UsuarioEL usuario = null;
            try
            {
                res = (HttpWebResponse)req.GetResponse();
                StreamReader reader = new StreamReader(res.GetResponseStream());
                string usuarioJson = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                usuario = js.Deserialize<UsuarioEL>(usuarioJson);
            }
            catch (WebException e)
            {
                HttpStatusCode code = ((HttpWebResponse)e.Response).StatusCode;
                string message = ((HttpWebResponse)e.Response).StatusDescription;
                StreamReader reader = new StreamReader(e.Response.GetResponseStream());
                string error = reader.ReadToEnd();
                JavaScriptSerializer js = new JavaScriptSerializer();
                string mensaje = js.Deserialize<string>(error);
                usuario = new UsuarioEL();
                usuario.MessageErr = mensaje;
            }
            return usuario;
        }
    }
}
