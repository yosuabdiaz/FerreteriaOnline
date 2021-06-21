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
    public class Inventario_FerreteriaController : Controller
    {
        private FerreteriaOnlineEntities1 db = new FerreteriaOnlineEntities1();

        // GET: Inventario_Ferreteria
        public ActionResult Index()
        {
            var inventario_Ferreteria = db.Inventario_Ferreteria.Include(i => i.Ferreteria).Include(i => i.Producto);
            return View(inventario_Ferreteria.ToList());
        }

        // GET: Inventario_Ferreteria/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Ferreteria inventario_Ferreteria = db.Inventario_Ferreteria.Find(id);
            if (inventario_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(inventario_Ferreteria);
        }

        // GET: Inventario_Ferreteria/Create
        public ActionResult Create()
        {
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion");
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion");
            return View();
        }

        // POST: Inventario_Ferreteria/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_inventario_ferreteria,id_ferreteria,id_producto,cantidad,activo")] Inventario_Ferreteria inventario_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Inventario_Ferreteria.Add(inventario_Ferreteria);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", inventario_Ferreteria.id_ferreteria);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Ferreteria.id_producto);
            return View(inventario_Ferreteria);
        }

        // GET: Inventario_Ferreteria/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Ferreteria inventario_Ferreteria = db.Inventario_Ferreteria.Find(id);
            if (inventario_Ferreteria == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", inventario_Ferreteria.id_ferreteria);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Ferreteria.id_producto);
            return View(inventario_Ferreteria);
        }

        // POST: Inventario_Ferreteria/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_inventario_ferreteria,id_ferreteria,id_producto,cantidad,activo")] Inventario_Ferreteria inventario_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Entry(inventario_Ferreteria).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", inventario_Ferreteria.id_ferreteria);
            ViewBag.id_producto = new SelectList(db.Producto, "id_producto", "descripcion", inventario_Ferreteria.id_producto);
            return View(inventario_Ferreteria);
        }

        // GET: Inventario_Ferreteria/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inventario_Ferreteria inventario_Ferreteria = db.Inventario_Ferreteria.Find(id);
            if (inventario_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(inventario_Ferreteria);
        }

        // POST: Inventario_Ferreteria/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Inventario_Ferreteria inventario_Ferreteria = db.Inventario_Ferreteria.Find(id);
            db.Inventario_Ferreteria.Remove(inventario_Ferreteria);
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
