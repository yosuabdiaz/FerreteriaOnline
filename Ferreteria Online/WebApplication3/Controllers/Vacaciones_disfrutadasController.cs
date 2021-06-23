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
    public class Vacaciones_disfrutadasController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Vacaciones_disfrutadas
        public ActionResult Index()
        {
            return View(db.Vacaciones_disfrutadas.ToList());
        }

        // GET: Vacaciones_disfrutadas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vacaciones_disfrutadas vacaciones_disfrutadas = db.Vacaciones_disfrutadas.Find(id);
            if (vacaciones_disfrutadas == null)
            {
                return HttpNotFound();
            }
            return View(vacaciones_disfrutadas);
        }

        // GET: Vacaciones_disfrutadas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Vacaciones_disfrutadas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_vacaciones_disfrutadas,id_empleado,dias,fecha_inicio,fecha_final")] Vacaciones_disfrutadas vacaciones_disfrutadas)
        {
            if (ModelState.IsValid)
            {
                db.Vacaciones_disfrutadas.Add(vacaciones_disfrutadas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(vacaciones_disfrutadas);
        }

        // GET: Vacaciones_disfrutadas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vacaciones_disfrutadas vacaciones_disfrutadas = db.Vacaciones_disfrutadas.Find(id);
            if (vacaciones_disfrutadas == null)
            {
                return HttpNotFound();
            }
            return View(vacaciones_disfrutadas);
        }

        // POST: Vacaciones_disfrutadas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_vacaciones_disfrutadas,id_empleado,dias,fecha_inicio,fecha_final")] Vacaciones_disfrutadas vacaciones_disfrutadas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(vacaciones_disfrutadas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(vacaciones_disfrutadas);
        }

        // GET: Vacaciones_disfrutadas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vacaciones_disfrutadas vacaciones_disfrutadas = db.Vacaciones_disfrutadas.Find(id);
            if (vacaciones_disfrutadas == null)
            {
                return HttpNotFound();
            }
            return View(vacaciones_disfrutadas);
        }

        // POST: Vacaciones_disfrutadas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Vacaciones_disfrutadas vacaciones_disfrutadas = db.Vacaciones_disfrutadas.Find(id);
            db.Vacaciones_disfrutadas.Remove(vacaciones_disfrutadas);
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
