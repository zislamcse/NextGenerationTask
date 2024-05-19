using System.ComponentModel.DataAnnotations;

namespace Web.Models
{
    public class Category
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Enter Name")]
        public string Name { get; set; }
        [Display(Name= "Display Order")]
        public int DisplayOrder { get; set; }

        [Display(Name= "Created At")]
        public DateTime CreatedAt { get; set; } = DateTime.Now;
    }
}
