using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    public class EntregaController : Controller
    {
        public ActionResult Index()
        {
            var Service = new EntregaService();
            var lista = Service.Obtener();
            return View(lista);
        }
    }
}