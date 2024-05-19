using Web.Models;

namespace Web.ViewModels
{
    public class VMCustomer
    {
        public Customer Customer { get; set; }
        public Products_Service Products_Service { get; set; }
        public IEnumerable<Customer> Customers { get; set; }
        public IEnumerable<Products_Service> Products_Services { get; set; }
    }
}
