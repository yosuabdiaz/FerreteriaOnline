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
    public class FerreteriasController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Ferreterias
        public ActionResult Index()
        {
            return View(db.Ferreteria.ToList());
        }

        // GET: Ferreterias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ferreteria ferreteria = db.Ferreteria.Find(id);
            if (ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(ferreteria);
        }

        // GET: Ferreterias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Ferreterias/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_ferreteria,descripcion,ubicacion,activo")] Ferreteria ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Ferreteria.Add(ferreteria);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ferreteria);
        }

        // GET: Ferreterias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ferreteria ferreteria = db.Ferreteria.Find(id);
            if (ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(ferreteria);
        }

        // POST: Ferreterias/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_ferreteria,descripcion,ubicacion,activo")] Ferreteria ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ferreteria).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ferreteria);
        }

        // GET: Ferreterias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ferreteria ferreteria = db.Ferreteria.Find(id);
            if (ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(ferreteria);
        }

        // POST: Ferreterias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ferreteria ferreteria = db.Ferreteria.Find(id);
            db.Ferreteria.Remove(ferreteria);
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
