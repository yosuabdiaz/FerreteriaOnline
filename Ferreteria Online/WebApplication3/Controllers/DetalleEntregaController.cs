using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    public class DetalleEntregaController : Controller
    {
        public ActionResult Index()
        {
            var Service = new DetalleEntregaService();
            var lista = Service.Obtener();
            return View(lista);
        }
    }
}