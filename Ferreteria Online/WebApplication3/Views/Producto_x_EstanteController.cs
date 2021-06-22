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
    public class Producto_x_EstanteController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Producto_x_Estante
        public ActionResult Index()
        {
            var producto_x_Estante = db.Producto_x_Estante.Include(p => p.Estante).Include(p => p.Producto);
            return View(producto_x_Estante.ToList());
        }

        // GET: Producto_x_Estante/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto_x_Estante producto_x_Estante = db.Producto_x_Estante.Find(id);
            if (producto_x_Estante == null)
            {
                return HttpNotFound();
            }
            return View(producto_x_Estante);
        }

        // GET: Producto_x_Estante/Create
        public ActionResult Create()
        {
            ViewBag.id_estante = new SelectList(db.Estante, "id_estante", "id_estante");
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion");
            return View();
        }

        // POST: Producto_x_Estante/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_producto_x_estante,id_estante,id_producto,activo")] Producto_x_Estante producto_x_Estante)
        {
            if (ModelState.IsValid)
            {
                db.Producto_x_Estante.Add(producto_x_Estante);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_estante = new SelectList(db.Estante, "id_estante", "id_estante", producto_x_Estante.id_estante);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", producto_x_Estante.id_producto);
            return View(producto_x_Estante);
        }

        // GET: Producto_x_Estante/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto_x_Estante producto_x_Estante = db.Producto_x_Estante.Find(id);
            if (producto_x_Estante == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_estante = new SelectList(db.Estante, "id_estante", "id_estante", producto_x_Estante.id_estante);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", producto_x_Estante.id_producto);
            return View(producto_x_Estante);
        }

        // POST: Producto_x_Estante/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_producto_x_estante,id_estante,id_producto,activo")] Producto_x_Estante producto_x_Estante)
        {
            if (ModelState.IsValid)
            {
                db.Entry(producto_x_Estante).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_estante = new SelectList(db.Estante, "id_estante", "id_estante", producto_x_Estante.id_estante);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", producto_x_Estante.id_producto);
            return View(producto_x_Estante);
        }

        // GET: Producto_x_Estante/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto_x_Estante producto_x_Estante = db.Producto_x_Estante.Find(id);
            if (producto_x_Estante == null)
            {
                return HttpNotFound();
            }
            return View(producto_x_Estante);
        }

        // POST: Producto_x_Estante/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Producto_x_Estante producto_x_Estante = db.Producto_x_Estante.Find(id);
            db.Producto_x_Estante.Remove(producto_x_Estante);
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
