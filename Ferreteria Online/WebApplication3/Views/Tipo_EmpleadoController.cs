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
    public class Tipo_EmpleadoController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Tipo_Empleado
        public ActionResult Index()
        {
            return View(db.Tipo_Empleado.ToList());
        }

        // GET: Tipo_Empleado/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Empleado tipo_Empleado = db.Tipo_Empleado.Find(id);
            if (tipo_Empleado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Empleado);
        }

        // GET: Tipo_Empleado/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Tipo_Empleado/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_tipo_empleado,descripcion,activo")] Tipo_Empleado tipo_Empleado)
        {
            if (ModelState.IsValid)
            {
                db.Tipo_Empleado.Add(tipo_Empleado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipo_Empleado);
        }

        // GET: Tipo_Empleado/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Empleado tipo_Empleado = db.Tipo_Empleado.Find(id);
            if (tipo_Empleado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Empleado);
        }

        // POST: Tipo_Empleado/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_tipo_empleado,descripcion,activo")] Tipo_Empleado tipo_Empleado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipo_Empleado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipo_Empleado);
        }

        // GET: Tipo_Empleado/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Empleado tipo_Empleado = db.Tipo_Empleado.Find(id);
            if (tipo_Empleado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Empleado);
        }

        // POST: Tipo_Empleado/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tipo_Empleado tipo_Empleado = db.Tipo_Empleado.Find(id);
            db.Tipo_Empleado.Remove(tipo_Empleado);
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
