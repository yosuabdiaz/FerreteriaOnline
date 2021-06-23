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
    public class EstantesController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Estantes
        public ActionResult Index()
        {
            var estante = db.Estante.Include(e => e.Pasillo_x_Departamento);
            return View(estante.ToList());
        }

        // GET: Estantes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Estante estante = db.Estante.Find(id);
            if (estante == null)
            {
                return HttpNotFound();
            }
            return View(estante);
        }

        // GET: Estantes/Create
        public ActionResult Create()
        {
            ViewBag.id_pasillo_x_departamento = new SelectList(db.Pasillo_x_Departamento, "id_pasillo_x_departamento", "id_pasillo_x_departamento");
            return View();
        }

        // POST: Estantes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_estante,id_pasillo_x_departamento,numero,activo")] Estante estante)
        {
            if (ModelState.IsValid)
            {
                db.Estante.Add(estante);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_pasillo_x_departamento = new SelectList(db.Pasillo_x_Departamento, "id_pasillo_x_departamento", "id_pasillo_x_departamento", estante.id_pasillo_x_departamento);
            return View(estante);
        }

        // GET: Estantes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Estante estante = db.Estante.Find(id);
            if (estante == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_pasillo_x_departamento = new SelectList(db.Pasillo_x_Departamento, "id_pasillo_x_departamento", "id_pasillo_x_departamento", estante.id_pasillo_x_departamento);
            return View(estante);
        }

        // POST: Estantes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_estante,id_pasillo_x_departamento,numero,activo")] Estante estante)
        {
            if (ModelState.IsValid)
            {
                db.Entry(estante).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_pasillo_x_departamento = new SelectList(db.Pasillo_x_Departamento, "id_pasillo_x_departamento", "id_pasillo_x_departamento", estante.id_pasillo_x_departamento);
            return View(estante);
        }

        // GET: Estantes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Estante estante = db.Estante.Find(id);
            if (estante == null)
            {
                return HttpNotFound();
            }
            return View(estante);
        }

        // POST: Estantes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Estante estante = db.Estante.Find(id);
            db.Estante.Remove(estante);
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
