using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    public class ReportesController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        public ActionResult Index() {
            var reporteService = new ReporteService();
            var model = reporteService.ObtenerReportes();
            return View(model);
        }

        public ActionResult Producto()
        {
            var productos = db.Database.SqlQuery<WebApplication3.Models.ProductoBusqueda>("exec [dbo].[Buscar_Producto] null,null,null,null,null,null,null,null,null,null,null,null,null,null,null").ToString().ToList();
            return View(productos);
        }
    }
}