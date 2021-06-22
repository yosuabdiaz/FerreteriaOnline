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
    public class Empleado_x_FerreteriaController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Empleado_x_Ferreteria
        public ActionResult Index()
        {
            var empleado_x_Ferreteria = db.Empleado_x_Ferreteria.Include(e => e.Empleado).Include(e => e.Ferreteria);
            return View(empleado_x_Ferreteria.ToList());
        }

        // GET: Empleado_x_Ferreteria/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado_x_Ferreteria empleado_x_Ferreteria = db.Empleado_x_Ferreteria.Find(id);
            if (empleado_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(empleado_x_Ferreteria);
        }

        // GET: Empleado_x_Ferreteria/Create
        public ActionResult Create()
        {
            ViewBag.id_empleado = new SelectList(db.Empleado, "id_empleado", "nombre");
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion");
            return View();
        }

        // POST: Empleado_x_Ferreteria/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_empleado_x_ferreteria,id_empleado,id_ferreteria,activo")] Empleado_x_Ferreteria empleado_x_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Empleado_x_Ferreteria.Add(empleado_x_Ferreteria);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_empleado = new SelectList(db.Empleado, "id_empleado", "nombre", empleado_x_Ferreteria.id_empleado);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", empleado_x_Ferreteria.id_ferreteria);
            return View(empleado_x_Ferreteria);
        }

        // GET: Empleado_x_Ferreteria/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado_x_Ferreteria empleado_x_Ferreteria = db.Empleado_x_Ferreteria.Find(id);
            if (empleado_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_empleado = new SelectList(db.Empleado, "id_empleado", "nombre", empleado_x_Ferreteria.id_empleado);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", empleado_x_Ferreteria.id_ferreteria);
            return View(empleado_x_Ferreteria);
        }

        // POST: Empleado_x_Ferreteria/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_empleado_x_ferreteria,id_empleado,id_ferreteria,activo")] Empleado_x_Ferreteria empleado_x_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Entry(empleado_x_Ferreteria).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_empleado = new SelectList(db.Empleado, "id_empleado", "nombre", empleado_x_Ferreteria.id_empleado);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", empleado_x_Ferreteria.id_ferreteria);
            return View(empleado_x_Ferreteria);
        }

        // GET: Empleado_x_Ferreteria/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado_x_Ferreteria empleado_x_Ferreteria = db.Empleado_x_Ferreteria.Find(id);
            if (empleado_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(empleado_x_Ferreteria);
        }

        // POST: Empleado_x_Ferreteria/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Empleado_x_Ferreteria empleado_x_Ferreteria = db.Empleado_x_Ferreteria.Find(id);
            db.Empleado_x_Ferreteria.Remove(empleado_x_Ferreteria);
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
