using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Entrega
    {
        public int id_entrega { get; set; }
        public int id_vehiculo { get; set; }
        public int id_ruta { get; set; }
        public DateTime fecha { get; set; }
        public decimal distancia { get; set; }
        public bool activo { get; set; }


    }
}