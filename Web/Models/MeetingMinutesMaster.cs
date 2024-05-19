namespace Web.Models
{
    public class MeetingMinutesMaster
    {
        public int Id { get; set; }
        public string CustomerType { get; set; }
        public string CustomerName { get; set; }
        public DateTime MeetingDate { get; set; }
        public string MeetingTime { get; set; }
        public string MeetingPlace { get; set; }
        public string AttendsFromClientSide { get; set; }
        public string AttentsFromHostSide { get; set; }
        public string MeetingAgenda { get; set; }
        public string MeetingDiscussion { get; set; }
        public string MeetingDecision { get; set; }

        public virtual ICollection<MeetingMinutesDetails> Details { get; set; }
    }
}
