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
    public class Departamento_x_FerreteriaController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Departamento_x_Ferreteria
        public ActionResult Index()
        {
            var departamento_x_Ferreteria = db.Departamento_x_Ferreteria.Include(d => d.Departamento).Include(d => d.Empleado).Include(d => d.Ferreteria);
            return View(departamento_x_Ferreteria.ToList());
        }

        // GET: Departamento_x_Ferreteria/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Departamento_x_Ferreteria departamento_x_Ferreteria = db.Departamento_x_Ferreteria.Find(id);
            if (departamento_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(departamento_x_Ferreteria);
        }

        // GET: Departamento_x_Ferreteria/Create
        public ActionResult Create()
        {
            ViewBag.id_departamento = new SelectList(db.Departamento, "id_departamento", "nombre");
            ViewBag.id_experto = new SelectList(db.Empleado, "id_empleado", "nombre");
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion");
            return View();
        }

        // POST: Departamento_x_Ferreteria/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_departamento_x_ferreteria,id_departamento,id_ferreteria,id_experto,activo")] Departamento_x_Ferreteria departamento_x_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Departamento_x_Ferreteria.Add(departamento_x_Ferreteria);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_departamento = new SelectList(db.Departamento, "id_departamento", "nombre", departamento_x_Ferreteria.id_departamento);
            ViewBag.id_experto = new SelectList(db.Empleado, "id_empleado", "nombre", departamento_x_Ferreteria.id_experto);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", departamento_x_Ferreteria.id_ferreteria);
            return View(departamento_x_Ferreteria);
        }

        // GET: Departamento_x_Ferreteria/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Departamento_x_Ferreteria departamento_x_Ferreteria = db.Departamento_x_Ferreteria.Find(id);
            if (departamento_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_departamento = new SelectList(db.Departamento, "id_departamento", "nombre", departamento_x_Ferreteria.id_departamento);
            ViewBag.id_experto = new SelectList(db.Empleado, "id_empleado", "nombre", departamento_x_Ferreteria.id_experto);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", departamento_x_Ferreteria.id_ferreteria);
            return View(departamento_x_Ferreteria);
        }

        // POST: Departamento_x_Ferreteria/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_departamento_x_ferreteria,id_departamento,id_ferreteria,id_experto,activo")] Departamento_x_Ferreteria departamento_x_Ferreteria)
        {
            if (ModelState.IsValid)
            {
                db.Entry(departamento_x_Ferreteria).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_departamento = new SelectList(db.Departamento, "id_departamento", "nombre", departamento_x_Ferreteria.id_departamento);
            ViewBag.id_experto = new SelectList(db.Empleado, "id_empleado", "nombre", departamento_x_Ferreteria.id_experto);
            ViewBag.id_ferreteria = new SelectList(db.Ferreteria, "id_ferreteria", "descripcion", departamento_x_Ferreteria.id_ferreteria);
            return View(departamento_x_Ferreteria);
        }

        // GET: Departamento_x_Ferreteria/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Departamento_x_Ferreteria departamento_x_Ferreteria = db.Departamento_x_Ferreteria.Find(id);
            if (departamento_x_Ferreteria == null)
            {
                return HttpNotFound();
            }
            return View(departamento_x_Ferreteria);
        }

        // POST: Departamento_x_Ferreteria/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Departamento_x_Ferreteria departamento_x_Ferreteria = db.Departamento_x_Ferreteria.Find(id);
            db.Departamento_x_Ferreteria.Remove(departamento_x_Ferreteria);
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
