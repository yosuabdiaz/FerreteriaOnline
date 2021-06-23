using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Direccion
    {
        public int id_direccion { get; set; }
        public string ubicacion { get; set; }
        public bool activo { get; set; }
        public string descripcion { get; set; }
    }
}