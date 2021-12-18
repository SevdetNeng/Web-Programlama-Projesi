using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebProjesi.Data;
using WebProjesi.Models;

namespace WebProjesi.Controllers
{
    public class FilmController : Controller
    {

        private readonly ApplicationDBContext _db;

        public FilmController(ApplicationDBContext db)
        {
            _db = db;
        }   
        public IActionResult Index()
        {

            IEnumerable<Film> objList = _db.Filmler;
			return View(objList);

			
        }

		public IActionResult Create()
        {
            return View();
        }

        [HttpPost]

        public IActionResult Create(Film obj)
        {
            if (ModelState.IsValid)
            {
                _db.Filmler.Add(obj);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(obj);
        }

        public IActionResult Delete(int? id)
        {
            if (id == 0 || id == null)
            {
                return NotFound();
            }
            var obj = _db.Filmler.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            return View(obj);
        }

        [HttpPost]

        public IActionResult postDelete(int? id)
        {
            var obj = _db.Filmler.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            _db.Filmler.Remove(obj);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Update(int? id)
        {
            if (id == 0 || id == null)
            {
                return NotFound();
            }
            var obj = _db.Filmler.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            return View(obj);
        }


        //Post-Update Metodu
        [HttpPost]

        public IActionResult Update(Film obj)
        {
            if (ModelState.IsValid)
            {
                _db.Filmler.Update(obj);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(obj);
        }

        public IActionResult Details(int? id)
        {
            
            if(id==0 || id == null)
            {
                return NotFound();
            }
            var obj = _db.Filmler.Find(id);
            return View(obj);
        }
    }
}