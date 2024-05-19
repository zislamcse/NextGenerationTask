using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Xml.Linq;

namespace Web.Models
{
    public class Products_Service
    {
        [Display(Name = "Interested Product/Service")]
        public int Id { get; set; }
        public string Name { get; set; }
        public double Quantity { get; set; }
        public string Unit { get; set; }

        [NotMapped]
        public int test { get; set; }
    }
}
