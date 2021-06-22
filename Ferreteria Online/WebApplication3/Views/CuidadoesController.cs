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
    public class CuidadoesController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Cuidadoes
        public ActionResult Index()
        {
            return View(db.Cuidado.ToList());
        }

        // GET: Cuidadoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cuidado cuidado = db.Cuidado.Find(id);
            if (cuidado == null)
            {
                return HttpNotFound();
            }
            return View(cuidado);
        }

        // GET: Cuidadoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Cuidadoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_cuidado,descripcion,activo")] Cuidado cuidado)
        {
            if (ModelState.IsValid)
            {
                db.Cuidado.Add(cuidado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cuidado);
        }

        // GET: Cuidadoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cuidado cuidado = db.Cuidado.Find(id);
            if (cuidado == null)
            {
                return HttpNotFound();
            }
            return View(cuidado);
        }

        // POST: Cuidadoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_cuidado,descripcion,activo")] Cuidado cuidado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cuidado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cuidado);
        }

        // GET: Cuidadoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cuidado cuidado = db.Cuidado.Find(id);
            if (cuidado == null)
            {
                return HttpNotFound();
            }
            return View(cuidado);
        }

        // POST: Cuidadoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Cuidado cuidado = db.Cuidado.Find(id);
            db.Cuidado.Remove(cuidado);
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
