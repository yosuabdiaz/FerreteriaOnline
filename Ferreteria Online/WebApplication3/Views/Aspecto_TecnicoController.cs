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
    public class Aspecto_TecnicoController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Aspecto_Tecnico
        public ActionResult Index()
        {
            return View(db.Aspecto_Tecnico.ToList());
        }

        // GET: Aspecto_Tecnico/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aspecto_Tecnico aspecto_Tecnico = db.Aspecto_Tecnico.Find(id);
            if (aspecto_Tecnico == null)
            {
                return HttpNotFound();
            }
            return View(aspecto_Tecnico);
        }

        // GET: Aspecto_Tecnico/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Aspecto_Tecnico/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_aspecto_tecnico,descripcion,activo")] Aspecto_Tecnico aspecto_Tecnico)
        {
            if (ModelState.IsValid)
            {
                db.Aspecto_Tecnico.Add(aspecto_Tecnico);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(aspecto_Tecnico);
        }

        // GET: Aspecto_Tecnico/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aspecto_Tecnico aspecto_Tecnico = db.Aspecto_Tecnico.Find(id);
            if (aspecto_Tecnico == null)
            {
                return HttpNotFound();
            }
            return View(aspecto_Tecnico);
        }

        // POST: Aspecto_Tecnico/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_aspecto_tecnico,descripcion,activo")] Aspecto_Tecnico aspecto_Tecnico)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aspecto_Tecnico).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(aspecto_Tecnico);
        }

        // GET: Aspecto_Tecnico/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aspecto_Tecnico aspecto_Tecnico = db.Aspecto_Tecnico.Find(id);
            if (aspecto_Tecnico == null)
            {
                return HttpNotFound();
            }
            return View(aspecto_Tecnico);
        }

        // POST: Aspecto_Tecnico/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Aspecto_Tecnico aspecto_Tecnico = db.Aspecto_Tecnico.Find(id);
            db.Aspecto_Tecnico.Remove(aspecto_Tecnico);
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
