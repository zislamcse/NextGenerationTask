using Microsoft.EntityFrameworkCore;
using Web.Models;

namespace Web.Data
{
    public class ApplicationDbConext : DbContext
    {
        public ApplicationDbConext(DbContextOptions<ApplicationDbConext> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Products_Service>()
                .ToTable("Products_Service_Tbl");

            modelBuilder.Entity<Customer>()
                .ToTable("Corporate_Customer_Tbl");

            modelBuilder.Entity<IndividualCustomer>()
                .ToTable("Individual_Customer_Tbl");

            modelBuilder.Entity<MeetingMinutesMaster>()
                .ToTable("Meeting_Minutes_Master_Tbl");

            modelBuilder.Entity<MeetingMinutesDetails>()
                .ToTable("Meeting_Minutes_Details_Tbl");
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Products_Service> Products_Service { get; set; }
        public DbSet<Customer> Corporate_Customer { get; set; }
        public DbSet<IndividualCustomer> Individual_Customer { get; set; }

        public DbSet<MeetingMinutesMaster> Meeting_Minutes_Master_Tbl { get; set; }

        public DbSet<MeetingMinutesDetails> Meeting_Minutes_Details_Tbl { get; set; }
    }
}
