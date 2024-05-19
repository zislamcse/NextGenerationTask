using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Web.Models
{
    public class IndividualCustomer
    {
        public int Id { get; set; }

        [Required(ErrorMessage ="Please Enter Customer Name")]
        [Display(Name="Customer Name")]
        public string Name { get; set; }

        [Display(Name= "Meeting Agenda")]
        public string MeetingAgenda { get; set; }

        [Display(Name="Date")]
        public DateTime AgendaDate { get; set; }

        [Display(Name="Time")]
        public string AgendaTime { get; set; }

        [Display(Name="Meeting Discussion")]
        public string Discussion { get; set; }

        [Display(Name="Meeting Place")]
        public string MeetingPlace { get; set; }

        [Display(Name="Attends From Client Side")]
        public string AttendsFromClientSide { get; set; }

        [Display(Name = "Decison")]
        public string Decision { get; set; }

        [Display(Name="Attends From Host Side")]
        public string AttendsFromHostSide { get; set; }

        public string CustomerType { get; set; }
    }
}
