using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Multa
    {
        public int id_multa { get; set; }
        public int id_entrega { get; set; }
        public int monto { get; set; }
        public string descripcion { get; set; }
        public bool activo { get; set; }
    }
}