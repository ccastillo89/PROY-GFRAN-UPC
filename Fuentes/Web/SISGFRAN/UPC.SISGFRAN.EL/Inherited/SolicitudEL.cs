﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class SolicitudEL : BaseEL
    {
        public int Id { get; set; }
        public SolicitanteEL Solicitante { get; set; }
        public string NumSolicitud { get; set; }
        public DateTime FechaSolicitud { get; set; }
    }
}
