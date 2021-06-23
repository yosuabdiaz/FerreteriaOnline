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
    public class Pasillo_x_DepartamentoController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Pasillo_x_Departamento
        public ActionResult Index()
        {
            var pasillo_x_Departamento = db.Pasillo_x_Departamento.Include(p => p.Departamento_x_Ferreteria).Include(p => p.Pasillo);
            return View(pasillo_x_Departamento.ToList());
        }

        // GET: Pasillo_x_Departamento/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo_x_Departamento pasillo_x_Departamento = db.Pasillo_x_Departamento.Find(id);
            if (pasillo_x_Departamento == null)
            {
                return HttpNotFound();
            }
            return View(pasillo_x_Departamento);
        }

        // GET: Pasillo_x_Departamento/Create
        public ActionResult Create()
        {
            ViewBag.id_departamento_x_ferreteria = new SelectList(db.Departamento_x_Ferreteria, "id_departamento_x_ferreteria", "id_departamento_x_ferreteria");
            ViewBag.id_pasillo = new SelectList(db.Pasillo, "id_pasillo", "id_pasillo");
            return View();
        }

        // POST: Pasillo_x_Departamento/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_pasillo_x_departamento,id_departamento_x_ferreteria,id_pasillo,activo")] Pasillo_x_Departamento pasillo_x_Departamento)
        {
            if (ModelState.IsValid)
            {
                db.Pasillo_x_Departamento.Add(pasillo_x_Departamento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_departamento_x_ferreteria = new SelectList(db.Departamento_x_Ferreteria, "id_departamento_x_ferreteria", "id_departamento_x_ferreteria", pasillo_x_Departamento.id_departamento_x_ferreteria);
            ViewBag.id_pasillo = new SelectList(db.Pasillo, "id_pasillo", "id_pasillo", pasillo_x_Departamento.id_pasillo);
            return View(pasillo_x_Departamento);
        }

        // GET: Pasillo_x_Departamento/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo_x_Departamento pasillo_x_Departamento = db.Pasillo_x_Departamento.Find(id);
            if (pasillo_x_Departamento == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_departamento_x_ferreteria = new SelectList(db.Departamento_x_Ferreteria, "id_departamento_x_ferreteria", "id_departamento_x_ferreteria", pasillo_x_Departamento.id_departamento_x_ferreteria);
            ViewBag.id_pasillo = new SelectList(db.Pasillo, "id_pasillo", "id_pasillo", pasillo_x_Departamento.id_pasillo);
            return View(pasillo_x_Departamento);
        }

        // POST: Pasillo_x_Departamento/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_pasillo_x_departamento,id_departamento_x_ferreteria,id_pasillo,activo")] Pasillo_x_Departamento pasillo_x_Departamento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pasillo_x_Departamento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_departamento_x_ferreteria = new SelectList(db.Departamento_x_Ferreteria, "id_departamento_x_ferreteria", "id_departamento_x_ferreteria", pasillo_x_Departamento.id_departamento_x_ferreteria);
            ViewBag.id_pasillo = new SelectList(db.Pasillo, "id_pasillo", "id_pasillo", pasillo_x_Departamento.id_pasillo);
            return View(pasillo_x_Departamento);
        }

        // GET: Pasillo_x_Departamento/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pasillo_x_Departamento pasillo_x_Departamento = db.Pasillo_x_Departamento.Find(id);
            if (pasillo_x_Departamento == null)
            {
                return HttpNotFound();
            }
            return View(pasillo_x_Departamento);
        }

        // POST: Pasillo_x_Departamento/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pasillo_x_Departamento pasillo_x_Departamento = db.Pasillo_x_Departamento.Find(id);
            db.Pasillo_x_Departamento.Remove(pasillo_x_Departamento);
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
