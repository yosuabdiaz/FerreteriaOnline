using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication3;

namespace WebApplication3.Views
{
    public class ProductoDetallesController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: ProductoDetalles
        public ActionResult Index()
        {
            var productoDetalles = db.ProductoDetalles.Include(p => p.Producto);
            return View(productoDetalles.ToList());
        }

        // GET: ProductoDetalles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductoDetalles productoDetalles = db.ProductoDetalles.Find(id);
            if (productoDetalles == null)
            {
                return HttpNotFound();
            }
            return View(productoDetalles);
        }

        // GET: ProductoDetalles/Create
        public ActionResult Create()
        {
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion");
            return View();
        }

        // POST: ProductoDetalles/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_producto,id_provedor,id_aspectos_tecnicos,id_contraindicaciones,id_utilidades,id_cuidados")] ProductoDetalles productoDetalles)
        {
            if (ModelState.IsValid)
            {
                db.ProductoDetalles.Add(productoDetalles);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", productoDetalles.id_producto);
            return View(productoDetalles);
        }

        // GET: ProductoDetalles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductoDetalles productoDetalles = db.ProductoDetalles.Find(id);
            if (productoDetalles == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", productoDetalles.id_producto);
            return View(productoDetalles);
        }

        // POST: ProductoDetalles/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_producto,id_provedor,id_aspectos_tecnicos,id_contraindicaciones,id_utilidades,id_cuidados")] ProductoDetalles productoDetalles)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productoDetalles).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", productoDetalles.id_producto);
            return View(productoDetalles);
        }

        // GET: ProductoDetalles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductoDetalles productoDetalles = db.ProductoDetalles.Find(id);
            if (productoDetalles == null)
            {
                return HttpNotFound();
            }
            return View(productoDetalles);
        }

        // POST: ProductoDetalles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductoDetalles productoDetalles = db.ProductoDetalles.Find(id);
            db.ProductoDetalles.Remove(productoDetalles);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
