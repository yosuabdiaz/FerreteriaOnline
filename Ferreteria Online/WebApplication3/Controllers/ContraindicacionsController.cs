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
    public class ContraindicacionsController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Contraindicacions
        public ActionResult Index()
        {
            return View(db.Contraindicacion.ToList());
        }

        // GET: Contraindicacions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contraindicacion contraindicacion = db.Contraindicacion.Find(id);
            if (contraindicacion == null)
            {
                return HttpNotFound();
            }
            return View(contraindicacion);
        }

        // GET: Contraindicacions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Contraindicacions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_contraindicacion,descripcion,activo")] Contraindicacion contraindicacion)
        {
            if (ModelState.IsValid)
            {
                db.Contraindicacion.Add(contraindicacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(contraindicacion);
        }

        // GET: Contraindicacions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contraindicacion contraindicacion = db.Contraindicacion.Find(id);
            if (contraindicacion == null)
            {
                return HttpNotFound();
            }
            return View(contraindicacion);
        }

        // POST: Contraindicacions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_contraindicacion,descripcion,activo")] Contraindicacion contraindicacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(contraindicacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(contraindicacion);
        }

        // GET: Contraindicacions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Contraindicacion contraindicacion = db.Contraindicacion.Find(id);
            if (contraindicacion == null)
            {
                return HttpNotFound();
            }
            return View(contraindicacion);
        }

        // POST: Contraindicacions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Contraindicacion contraindicacion = db.Contraindicacion.Find(id);
            db.Contraindicacion.Remove(contraindicacion);
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
