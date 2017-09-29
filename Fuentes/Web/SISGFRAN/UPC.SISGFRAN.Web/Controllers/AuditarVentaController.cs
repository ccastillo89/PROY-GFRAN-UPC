using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UPC.SISGFRAN.Web.Helper.PdfReportGenerator;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.Web.Models;
using System.Web.Services;
using System.Web.Script.Services;
using UPC.SISGFRAN.EL.NonInherited;
using UPC.SISGFRAN.BL.Repositorios;
using UPC.SISGFRAN.Web.Helper;


namespace UPC.SISGFRAN.Web.Controllers
{
    public class AuditarVentaController : PdfViewController
    {

        private PARDOSDBEntities db = new PARDOSDBEntities();


        public ActionResult Index()
        {
            return View();
        }

        #region "Metodos"

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        public JsonResult ListaPeriodo()
        {
            List<ParametroEL> result = new List<ParametroEL>();
            string sAnioInicio = DateTime.Now.Year.ToString();
            int iAnioInicio = Convert.ToInt32(sAnioInicio);
            DateTime startDate = new DateTime(iAnioInicio, 1, 1);
            DateTime endDate = new DateTime();
            endDate = DateTime.Now;
            DateTime temp = startDate;
            endDate = new DateTime(endDate.AddYears(1).Year, endDate.Month, DateTime.DaysInMonth(endDate.Year, endDate.Month));
            string strPeriodo = string.Empty;
            while (temp <= endDate)
            {
                strPeriodo = (string.Format("{0}", temp.Year));
                temp = temp.AddYears(1);
                ParametroEL oParam = new ParametroEL() { Nombre = strPeriodo };
                result.Add(oParam);
            }

            return Json(result.ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult Auditar(string franquicia, string local, string periodo)
        {
            try
            {
                AuditarVentaEL reporte = EjecutarPronostico(Convert.ToInt32(franquicia), Convert.ToInt32(local), Convert.ToInt32(periodo));
                
                return Json(reporte, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { status = false, message = ex.Message.ToString() }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult ListaLocalesXFranquicia(String franquicia)
        {
            int franquiciaId = Int32.Parse(franquicia);

            if (franquiciaId == -1)
            {
                var locales = (db.tb_local.OrderBy(a => a.nombre)
                             .Select(c => new { Id = c.id, Nombre = c.nombre, idFranquicia = c.franquiciaId })).ToList();

                return Json(locales, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var locales = (db.tb_local.OrderBy(a => a.nombre)
                                 .Select(c => new { Id = c.id, Nombre = c.nombre, idFranquicia = c.franquiciaId })).Where(x => x.idFranquicia == franquiciaId).ToList();

                return Json(locales, JsonRequestBehavior.AllowGet);

            }
        }

        public JsonResult ListaFranquicias()
        {
            var distritos = (db.tb_franquicia.OrderBy(a => a.Nombre)
                             .Select(c => new { Id = c.Id, Nombre = c.Nombre })).ToList();

            return Json(distritos, JsonRequestBehavior.AllowGet);
        }


        private AuditarVentaEL EjecutarPronostico(int idfranquicia, int idlocal, int idperiodo)
        {

            var lstventas = new VentaBL().GetVentasxLocal(idlocal, idperiodo);
            var lstventashistorico = new VentaBL().GetVentasHistorico(idlocal, idperiodo); ;

            var valorObjetivo = db.tb_franquicia.Where(x => x.Id ==idlocal).FirstOrDefault().QuotaObjetivo;

            List<float> pronosticomensual = new List<float>();
            float MAD = 0;
            float errAcumulado = 0;
            float pronosticoanual = 0;
            float promediomensualPronosticado = 0;

            for (int i = 0; i < lstventashistorico.Count(); i=i+3)
            {
                
                float dosanioatras = (lstventashistorico[i].Monto + lstventashistorico[i+1].Monto)/2;
                float unanioatras = (lstventashistorico[i + 1].Monto + lstventashistorico[i + 2].Monto)/2;
                float prono = (dosanioatras + unanioatras) / 2;
                float errPrdos = Math.Abs(lstventashistorico[i + 1].Monto - dosanioatras);
                float errPruno = Math.Abs(lstventashistorico[i + 2].Monto - unanioatras);
                pronosticomensual.Add(prono);
                pronosticoanual = pronosticoanual + prono;
                errAcumulado = errAcumulado + errPrdos + errPruno;
            }
            MAD = errAcumulado / 24;
            promediomensualPronosticado = pronosticoanual / 12;

            AuditarVentaEL data = new AuditarVentaEL();
            List<Grafico> lista = new List<Grafico>();

            Grafico g1 = new Grafico(){ label= "Ene" , value = pronosticomensual[0].ToString() };
            lista.Add(g1);
            Grafico g2 = new Grafico() { label = "Feb", value = pronosticomensual[1].ToString() };
            lista.Add(g2);
            Grafico g3 = new Grafico() { label = "Mar", value = pronosticomensual[2].ToString() };
            lista.Add(g3);
            Grafico g4 = new Grafico() { label = "Abr", value = pronosticomensual[3].ToString() };
            lista.Add(g4);
            Grafico g5 = new Grafico() { label = "May", value = pronosticomensual[4].ToString() };
            lista.Add(g5);
            Grafico g6 = new Grafico() { label = "Jun", value = pronosticomensual[5].ToString() };
            lista.Add(g6);
            Grafico g7 = new Grafico() { label = "Jul", value = pronosticomensual[6].ToString() };
            lista.Add(g7);
            Grafico g8 = new Grafico() { label = "Ago", value = pronosticomensual[7].ToString() };
            lista.Add(g8);
            Grafico g9 = new Grafico() { label = "Sep", value = pronosticomensual[8].ToString() };
            lista.Add(g9);
            Grafico g10 = new Grafico() { label = "Oct", value = pronosticomensual[9].ToString() };
            lista.Add(g10);
            Grafico g11 = new Grafico() { label = "Nov", value = pronosticomensual[10].ToString() };
            lista.Add(g11);
            Grafico g12 = new Grafico() { label = "Dic", value = pronosticomensual[11].ToString() }; //color ="#e44a00",
            lista.Add(g12);

            data.Pronostico = pronosticoanual.ToString();
            data.Quota = valorObjetivo.ToString();
            data.Mensaje = "ALCANZO LA QUOTA OBJETIVO";
            data.Mad = MAD.ToString();
            data.ListaGrafico = lista;

            return data;
        }

        #endregion
    }
}