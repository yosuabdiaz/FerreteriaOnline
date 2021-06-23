using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    public class RutaController : Controller
    {
        public ActionResult Index()
        {
            var clienteService = new RutaService();
            var listaCliente = clienteService.Obtener();
            return View(listaCliente);
        }
    }
}