using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    public class DireccionController : Controller
    {
        public ActionResult Index()
        {
            var direccionService = new DireccionService();
            var listaDireccion = direccionService.Obtener();
            return View(listaDireccion);
        }
    }
}