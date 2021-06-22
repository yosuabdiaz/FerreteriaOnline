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
    public class GarantiasController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Garantias
        public ActionResult Index()
        {
            return View(db.Garantia.ToList());
        }

        // GET: Garantias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Garantia garantia = db.Garantia.Find(id);
            if (garantia == null)
            {
                return HttpNotFound();
            }
            return View(garantia);
        }

        // GET: Garantias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Garantias/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_garantia,descripcion,tiempo_garantia,activo")] Garantia garantia)
        {
            if (ModelState.IsValid)
            {
                db.Garantia.Add(garantia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(garantia);
        }

        // GET: Garantias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Garantia garantia = db.Garantia.Find(id);
            if (garantia == null)
            {
                return HttpNotFound();
            }
            return View(garantia);
        }

        // POST: Garantias/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_garantia,descripcion,tiempo_garantia,activo")] Garantia garantia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(garantia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(garantia);
        }

        // GET: Garantias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Garantia garantia = db.Garantia.Find(id);
            if (garantia == null)
            {
                return HttpNotFound();
            }
            return View(garantia);
        }

        // POST: Garantias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Garantia garantia = db.Garantia.Find(id);
            db.Garantia.Remove(garantia);
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
