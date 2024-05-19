using Microsoft.AspNetCore.Mvc;
using Web.Data;
using Web.Models;

namespace Web.Controllers
{
    public class CategoryController : Controller
    {
        private ApplicationDbConext _context;

        public CategoryController(ApplicationDbConext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            IEnumerable<Category> categories = _context.Categories;
            return View(categories);
        }

        public IActionResult Create()
        {
            return View();
        }
    }
}
