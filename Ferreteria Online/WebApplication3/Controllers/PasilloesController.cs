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
    public class PasilloesController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Pasilloes
        public ActionResult Index()
        {
            return View(db.Pasillo.ToList());
        }

        // GET: Pasilloes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo pasillo = db.Pasillo.Find(id);
            if (pasillo == null)
            {
                return HttpNotFound();
            }
            return View(pasillo);
        }

        // GET: Pasilloes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Pasilloes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_pasillo,numero,activo")] Pasillo pasillo)
        {
            if (ModelState.IsValid)
            {
                db.Pasillo.Add(pasillo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pasillo);
        }

        // GET: Pasilloes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo pasillo = db.Pasillo.Find(id);
            if (pasillo == null)
            {
                return HttpNotFound();
            }
            return View(pasillo);
        }

        // POST: Pasilloes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_pasillo,numero,activo")] Pasillo pasillo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pasillo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pasillo);
        }

        // GET: Pasilloes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo pasillo = db.Pasillo.Find(id);
            if (pasillo == null)
            {
                return HttpNotFound();
            }
            return View(pasillo);
        }

        // POST: Pasilloes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pasillo pasillo = db.Pasillo.Find(id);
            db.Pasillo.Remove(pasillo);
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
