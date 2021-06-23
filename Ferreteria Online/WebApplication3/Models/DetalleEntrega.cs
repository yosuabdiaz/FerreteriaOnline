using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class DetalleEntrega
    {
        public int id_detalle { get; set; }
        public int id_entrega { get; set; }
        public int id_venta { get; set; }
        public bool recibido { get; set; }
        public bool activo { get; set; }
    }
}