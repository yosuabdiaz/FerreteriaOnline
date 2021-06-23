using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;

namespace WebApplication3.Services
{
    public class MejorEmpleadoService
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        public List<MejorEmpleado> Obtener()
        {
            var lista = db.Database.SqlQuery<MejorEmpleado>("exec Buscar_Mejor_Vendedor null,null,null").ToList();
            return lista;
        }
    }
}