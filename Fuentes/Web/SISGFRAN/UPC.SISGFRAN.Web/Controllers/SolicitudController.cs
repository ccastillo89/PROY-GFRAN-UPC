﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UPC.SISGFRAN.Web.Helper;
using UPC.SISGFRAN.EL.Comunes;
using UPC.SISGFRAN.EL.Inherited;
using UPC.SISGFRAN.BL.Repositorios;

namespace UPC.SISGFRAN.Web.Controllers
{
    public class SolicitudController : Controller
    {
        #region "Variables globales"
        SolicitudBL solicitudBL = new SolicitudBL();
        #endregion

        //
        // GET: /Solicitud/
        public ActionResult Index()
        {            
            ViewBag.listSolicitudes = solicitudBL.GetSolicitudes();
            return View();
        }  

        #region Metodos

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        private bool IsValid(string usuario, string pass)
        {
            bool valido = false;
            if (usuario != null || pass != null)
            {
                valido = true;
            }
            return valido;
        }     

        #endregion

	}
}