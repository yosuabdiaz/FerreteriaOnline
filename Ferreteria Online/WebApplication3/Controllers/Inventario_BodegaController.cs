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
    public class Inventario_BodegaController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Inventario_Bodega
        public ActionResult Index()
        {
            var inventario_Bodega = db.Inventario_Bodega.Include(i => i.Bodega).Include(i => i.Producto);
            return View(inventario_Bodega.ToList());
        }

        // GET: Inventario_Bodega/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Bodega inventario_Bodega = db.Inventario_Bodega.Find(id);
            if (inventario_Bodega == null)
            {
                return HttpNotFound();
            }
            return View(inventario_Bodega);
        }

        // GET: Inventario_Bodega/Create
        public ActionResult Create()
        {
            ViewBag.id_bodega = new SelectList(db.Bodega, "id_bodega", "descripcion");
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion");
            return View();
        }

        // POST: Inventario_Bodega/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_inventario_bodega,id_bodega,id_producto,cantidad,activo")] Inventario_Bodega inventario_Bodega)
        {
            if (ModelState.IsValid)
            {
                db.Inventario_Bodega.Add(inventario_Bodega);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_bodega = new SelectList(db.Bodega, "id_bodega", "descripcion", inventario_Bodega.id_bodega);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Bodega.id_producto);
            return View(inventario_Bodega);
        }

        // GET: Inventario_Bodega/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Bodega inventario_Bodega = db.Inventario_Bodega.Find(id);
            if (inventario_Bodega == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_bodega = new SelectList(db.Bodega, "id_bodega", "descripcion", inventario_Bodega.id_bodega);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Bodega.id_producto);
            return View(inventario_Bodega);
        }

        // POST: Inventario_Bodega/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_inventario_bodega,id_bodega,id_producto,cantidad,activo")] Inventario_Bodega inventario_Bodega)
        {
            if (ModelState.IsValid)
            {
                db.Entry(inventario_Bodega).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_bodega = new SelectList(db.Bodega, "id_bodega", "descripcion", inventario_Bodega.id_bodega);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Bodega.id_producto);
            return View(inventario_Bodega);
        }

        // GET: Inventario_Bodega/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Bodega inventario_Bodega = db.Inventario_Bodega.Find(id);
            if (inventario_Bodega == null)
            {
                return HttpNotFound();
            }
            return View(inventario_Bodega);
        }

        // POST: Inventario_Bodega/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Inventario_Bodega inventario_Bodega = db.Inventario_Bodega.Find(id);
            db.Inventario_Bodega.Remove(inventario_Bodega);
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
