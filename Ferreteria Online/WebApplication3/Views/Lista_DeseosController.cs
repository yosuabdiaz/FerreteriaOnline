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
    public class Lista_DeseosController : Controller
    {
        private FerreteriaOnlineEntities3 db = new FerreteriaOnlineEntities3();

        // GET: Lista_Deseos
        public ActionResult Index()
        {
            var lista_Deseos = db.Lista_Deseos.Include(l => l.Empleado);
            return View(lista_Deseos.ToList());
        }

        // GET: Lista_Deseos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lista_Deseos lista_Deseos = db.Lista_Deseos.Find(id);
            if (lista_Deseos == null)
            {
                return HttpNotFound();
            }
            return View(lista_Deseos);
        }

        // GET: Lista_Deseos/Create
        public ActionResult Create()
        {
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre");
            return View();
        }

        // POST: Lista_Deseos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_lista,id_cliente,id_vendedor,fecha,entregado,activo")] Lista_Deseos lista_Deseos)
        {
            if (ModelState.IsValid)
            {
                db.Lista_Deseos.Add(lista_Deseos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", lista_Deseos.id_vendedor);
            return View(lista_Deseos);
        }

        // GET: Lista_Deseos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lista_Deseos lista_Deseos = db.Lista_Deseos.Find(id);
            if (lista_Deseos == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", lista_Deseos.id_vendedor);
            return View(lista_Deseos);
        }

        // POST: Lista_Deseos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_lista,id_cliente,id_vendedor,fecha,entregado,activo")] Lista_Deseos lista_Deseos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lista_Deseos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_vendedor = new SelectList(db.Empleado, "id_empleado", "nombre", lista_Deseos.id_vendedor);
            return View(lista_Deseos);
        }

        // GET: Lista_Deseos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lista_Deseos lista_Deseos = db.Lista_Deseos.Find(id);
            if (lista_Deseos == null)
            {
                return HttpNotFound();
            }
            return View(lista_Deseos);
        }

        // POST: Lista_Deseos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Lista_Deseos lista_Deseos = db.Lista_Deseos.Find(id);
            db.Lista_Deseos.Remove(lista_Deseos);
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
