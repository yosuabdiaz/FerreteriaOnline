using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Services;

namespace WebApplication3.Views
{
    public class MejorEmpleadoController : Controller
    {
        public ActionResult Index()
        {
            var clienteService = new MejorEmpleadoService();
            var listaCliente = clienteService.Obtener();
            return View(listaCliente);
        }
    }
}