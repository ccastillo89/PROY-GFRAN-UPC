using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UPC.SISGFRAN.EL.Base;

namespace UPC.SISGFRAN.EL.Inherited
{
    public class EvaluacionProcedimientoDetEL : BaseEL
    {

        public int Id { get; set; }
        public EvaluacionProcedimientoEL EvalProc { get; set; }
        public int CantidadReclamos { get; set; }
        public int CantidadSugerencia { get; set; }
        public decimal Calificacion { get; set; }
        public ProcedimientoEL Procedimiento { get; set; }
        public int UsuarioId { get; set; }

        public string Semaforo
        {
            get
            {
                string imagen;
                if (Calificacion < decimal.Parse("3"))
                {
                    imagen = "/Content/Images/Circle_Green.png";
                }
                else if (Calificacion >= decimal.Parse("3") && Calificacion <= decimal.Parse("7"))
                {
                    imagen = "/Content/Images/Circle_Yellow.png";
                }
                else if (Calificacion > decimal.Parse("7"))
                {
                    imagen = "/Content/Images/Circle_Red.png";
                }
                else
                {
                    imagen = "/Content/Images/BajoRiesgo.png";
                }

                return imagen;
            }
        }

    }
}
