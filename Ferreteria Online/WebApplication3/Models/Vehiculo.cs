using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Vehiculo
    {
        public int id_vehiculo { get; set; }
        public int id_chofer { get; set; }
        public int id_flotilla { get; set; }
        public int placa { get; set; }
        public string descripcion { get; set; }
        public decimal km_l { get; set; }
        public bool activo { get; set; }
    }
}