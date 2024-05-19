﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Web.Data;

#nullable disable

namespace Web.Migrations
{
    [DbContext(typeof(ApplicationDbConext))]
    partial class ApplicationDbConextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.30")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("Web.Models.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<int>("DisplayOrder")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("Web.Models.Customer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<DateTime>("AgendaDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("AgendaTime")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttendsFromClientSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttendsFromHostSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Decision")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Discussion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingAgenda")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingPlace")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Corporate_Customer_Tbl", (string)null);
                });

            modelBuilder.Entity("Web.Models.IndividualCustomer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<DateTime>("AgendaDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("AgendaTime")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttendsFromClientSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttendsFromHostSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CustomerType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Decision")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Discussion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingAgenda")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingPlace")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Individual_Customer_Tbl", (string)null);
                });

            modelBuilder.Entity("Web.Models.MeetingMinutesDetails", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("InterestedProductServiceName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Meeting_Minutes_Master_Tbl")
                        .HasColumnType("int");

                    b.Property<double>("Quantity")
                        .HasColumnType("float");

                    b.Property<string>("Unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("Meeting_Minutes_Master_Tbl");

                    b.ToTable("Meeting_Minutes_Details_Tbl", (string)null);
                });

            modelBuilder.Entity("Web.Models.MeetingMinutesMaster", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("AttendsFromClientSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AttentsFromHostSide")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CustomerName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CustomerType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingAgenda")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("MeetingDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("MeetingDecision")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingDiscussion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingPlace")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MeetingTime")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Meeting_Minutes_Master_Tbl", (string)null);
                });

            modelBuilder.Entity("Web.Models.Products_Service", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Quantity")
                        .HasColumnType("float");

                    b.Property<string>("Unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Products_Service_Tbl", (string)null);
                });

            modelBuilder.Entity("Web.Models.MeetingMinutesDetails", b =>
                {
                    b.HasOne("Web.Models.MeetingMinutesMaster", "meetingMinutesMaster")
                        .WithMany("Details")
                        .HasForeignKey("Meeting_Minutes_Master_Tbl")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("meetingMinutesMaster");
                });

            modelBuilder.Entity("Web.Models.MeetingMinutesMaster", b =>
                {
                    b.Navigation("Details");
                });
#pragma warning restore 612, 618
        }
    }
}