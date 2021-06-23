using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;

namespace WebApplication3.Services
{
    public class ReporteService
    {
        public Reporte ObtenerReporte() {
            return new Reporte()
            {
                datos = "ddddddaaaatttooossss",
                datos2 = "asdfasdfasdfa"
            };
        }
        public List<Reporte>ObtenerReportes()
        {
            var reporte1 = new Reporte()
            {
                datos = "ddddddaaaatttooossss",
                datos2 = "asdfasdfasdfa"
            };

            var reporte2 = new Reporte()
            {
                datos = "ddddddaaaatttooossss",
                datos2 = "asdfasdfasdfa"
            };
            return new List<Reporte> { reporte1, reporte2 };
        }

    }
}