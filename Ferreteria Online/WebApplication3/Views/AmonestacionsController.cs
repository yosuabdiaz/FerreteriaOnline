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
    public class AmonestacionsController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Amonestacions
        public ActionResult Index()
        {
            return View(db.Amonestacion.ToList());
        }

        // GET: Amonestacions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Amonestacion amonestacion = db.Amonestacion.Find(id);
            if (amonestacion == null)
            {
                return HttpNotFound();
            }
            return View(amonestacion);
        }

        // GET: Amonestacions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Amonestacions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_amonestacion,descripcion,activo")] Amonestacion amonestacion)
        {
            if (ModelState.IsValid)
            {
                db.Amonestacion.Add(amonestacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(amonestacion);
        }

        // GET: Amonestacions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Amonestacion amonestacion = db.Amonestacion.Find(id);
            if (amonestacion == null)
            {
                return HttpNotFound();
            }
            return View(amonestacion);
        }

        // POST: Amonestacions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_amonestacion,descripcion,activo")] Amonestacion amonestacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(amonestacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(amonestacion);
        }

        // GET: Amonestacions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Amonestacion amonestacion = db.Amonestacion.Find(id);
            if (amonestacion == null)
            {
                return HttpNotFound();
            }
            return View(amonestacion);
        }

        // POST: Amonestacions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Amonestacion amonestacion = db.Amonestacion.Find(id);
            db.Amonestacion.Remove(amonestacion);
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
