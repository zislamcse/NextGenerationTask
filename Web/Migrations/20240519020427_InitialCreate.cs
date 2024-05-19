using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Web.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DisplayOrder = table.Column<int>(type: "int", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Corporate_Customer_Tbl",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MeetingAgenda = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AgendaDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    AgendaTime = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Discussion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MeetingPlace = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AttendsFromClientSide = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Decision = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AttendsFromHostSide = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CustomerType = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Corporate_Customer_Tbl", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Individual_Customer_Tbl",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MeetingAgenda = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AgendaDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    AgendaTime = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Discussion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MeetingPlace = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AttendsFromClientSide = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Decision = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AttendsFromHostSide = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CustomerType = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Individual_Customer_Tbl", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Products_Service_Tbl",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Quantity = table.Column<double>(type: "float", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products_Service_Tbl", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "Corporate_Customer_Tbl");

            migrationBuilder.DropTable(
                name: "Individual_Customer_Tbl");

            migrationBuilder.DropTable(
                name: "Products_Service_Tbl");
        }
    }
}
