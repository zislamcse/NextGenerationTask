using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using Web.Data;
using Web.Migrations;
using Web.Models;
using Web.ViewModels;

namespace Web.Controllers
{
    public class TaskController : Controller
    {
        private ApplicationDbConext _context;

        public TaskController(ApplicationDbConext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Create()
        {
            IEnumerable<Products_Service> product_Services = _context.Products_Service;
            IEnumerable<Customer> customers = _context.Corporate_Customer;

            var vm = new VMCustomer
            {
                Customer = new Customer(),
                Customers = customers,
                Products_Services = product_Services,
            };
            return View(vm);
        }

        public IActionResult GetCustomer(string customerType)
        {
            if (customerType == "Corporate")
            {
                IEnumerable<Customer> customers = _context.Corporate_Customer.ToList();

                return new JsonResult(customers);
            }
            else
            {
                IEnumerable<IndividualCustomer> customers = _context.Individual_Customer.ToList();
                return new JsonResult(customers);
            }

        }

        public async Task<ActionResult> Save(VMCustomer _data)
        {            
            var result = _context
                           .Database.ExecuteSqlRawAsync("EXEC Meeting_Minutes_Master_Save_SP @Id=0, @CustomerType='" + _data.Customer.CustomerType + "', @CustomerName='" + _data.Customer.Name + "', @MeetingDate='" + _data.Customer.AgendaDate.ToString("yyyy-MM-dd") + "', @MeetingTime='" + _data.Customer.AgendaTime + "', @MeetingPlace='" + _data.Customer.MeetingPlace + "', @AttendsFromClientSide='" + _data.Customer.AttendsFromClientSide + "', @AttentsFromHostSide='" + _data.Customer.AttendsFromHostSide + "', @MeetingAgenda='" + _data.Customer.MeetingAgenda + "', @MeetingDiscussion='" + _data.Customer.Discussion + "', @MeetingDecision='" + _data.Customer.Decision + "'");

            foreach (var dt in _data.Products_Services)
            {
                var aa= _context
                               .Database.ExecuteSqlRawAsync("EXEC Meeting_Minutes_Details_Save_SP @InterestedProductServiceName='" + dt.Name + "', @Quantity='" + dt.Quantity + "', @Unit='" + dt.Unit + "' ");
            }
            return Json("Saved", System.Web.Mvc.JsonRequestBehavior.AllowGet);
        }
    }
}
