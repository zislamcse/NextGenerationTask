using System.ComponentModel.DataAnnotations.Schema;

namespace Web.Models
{
    public class MeetingMinutesDetails
    {
        [ForeignKey("Meeting_Minutes_Master_Tbl")]
        public MeetingMinutesMaster meetingMinutesMaster { get; set; }

        public int Id { get; set; }
        public string InterestedProductServiceName { get; set; }
        public double Quantity { get; set; }
        public string Unit { get; set; }

    }
}
