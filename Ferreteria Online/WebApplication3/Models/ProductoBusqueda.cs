using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class ProductoBusqueda
    {
        public int producto { get; set; }
        public string marca { get; set; }
        public string proovedor { get; set; }
        public int codigo { get; set; }
        public decimal precio { get; set; }
        public int garantia { get; set; }
        public string descripcion { get; set; }
        public string contraInd { get; set; }
        public string utilidades { get; set; }
        public string cuidados { get; set; }
        public string aspectoTec { get; set; }
        public string ferreteria { get; set; }

    }
}