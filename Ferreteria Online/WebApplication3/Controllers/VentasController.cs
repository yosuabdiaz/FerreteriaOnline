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
    public class VentasController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Ventas
        public ActionResult Index()
        {
            var venta = db.Venta.Include(v => v.Empleado).Include(v => v.Ferreteria).Include(v => v.Tipo_venta);
            return View(venta.ToList());
        }

        // GET: Ventas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Venta venta = db.Venta.Find(id);
            if (venta == null)
            {
                return HttpNotFound();
            }
            return View(venta);
        }

        // GET: Ventas/Create
        public ActionResult Create()
        {
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre");
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion");
            ViewBag.id_tipo_venta = new SelectList(db.Tipo_venta, "id_tipo_venta", "descripcion");
            return View();
        }

        // POST: Ventas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_venta,id_cliente,id_tipo_venta,id_ferreteria,id_vendedor,fecha,monto,activo")] Venta venta)
        {
            if (ModelState.IsValid)
            {
                db.Venta.Add(venta);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", venta.id_vendedor);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", venta.id_ferreteria);
            ViewBag.id_tipo_venta = new SelectList(db.Tipo_venta, "id_tipo_venta", "descripcion", venta.id_tipo_venta);
            return View(venta);
        }

        // GET: Ventas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Venta venta = db.Venta.Find(id);
            if (venta == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", venta.id_vendedor);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", venta.id_ferreteria);
            ViewBag.id_tipo_venta = new SelectList(db.Tipo_venta, "id_tipo_venta", "descripcion", venta.id_tipo_venta);
            return View(venta);
        }

        // POST: Ventas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_venta,id_cliente,id_tipo_venta,id_ferreteria,id_vendedor,fecha,monto,activo")] Venta venta)
        {
            if (ModelState.IsValid)
            {
                db.Entry(venta).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", venta.id_vendedor);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", venta.id_ferreteria);
            ViewBag.id_tipo_venta = new SelectList(db.Tipo_venta, "id_tipo_venta", "descripcion", venta.id_tipo_venta);
            return View(venta);
        }

        // GET: Ventas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Venta venta = db.Venta.Find(id);
            if (venta == null)
            {
                return HttpNotFound();
            }
            return View(venta);
        }

        // POST: Ventas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Venta venta = db.Venta.Find(id);
            db.Venta.Remove(venta);
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
