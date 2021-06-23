using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Models
{
    public class Cliente
    {
        public int id_cliente { get; set; }
        public string nombre { get; set; }
        public string correo { get; set; }
        public int metodo_pago { get; set; }
        public int puntuacion { get; set; }
        public bool activo { get; set; }
    }
}