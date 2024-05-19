using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Web.Migrations
{
    public partial class MeetingMinutes : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_meetingMinutesMasterId",
                table: "Meeting_Minutes_Details_Tbl");

            migrationBuilder.DropColumn(
                name: "MeetingId",
                table: "Meeting_Minutes_Details_Tbl");

            migrationBuilder.DropColumn(
                name: "CustomerType",
                table: "Corporate_Customer_Tbl");

            migrationBuilder.RenameColumn(
                name: "meetingMinutesMasterId",
                table: "Meeting_Minutes_Details_Tbl",
                newName: "Meeting_Minutes_Master_Tbl");

            migrationBuilder.RenameIndex(
                name: "IX_Meeting_Minutes_Details_Tbl_meetingMinutesMasterId",
                table: "Meeting_Minutes_Details_Tbl",
                newName: "IX_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl");

            migrationBuilder.AddForeignKey(
                name: "FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_Meeting_Minutes_Master_Tbl",
                table: "Meeting_Minutes_Details_Tbl",
                column: "Meeting_Minutes_Master_Tbl",
                principalTable: "Meeting_Minutes_Master_Tbl",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_Meeting_Minutes_Master_Tbl",
                table: "Meeting_Minutes_Details_Tbl");

            migrationBuilder.RenameColumn(
                name: "Meeting_Minutes_Master_Tbl",
                table: "Meeting_Minutes_Details_Tbl",
                newName: "meetingMinutesMasterId");

            migrationBuilder.RenameIndex(
                name: "IX_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl",
                table: "Meeting_Minutes_Details_Tbl",
                newName: "IX_Meeting_Minutes_Details_Tbl_meetingMinutesMasterId");

            migrationBuilder.AddColumn<int>(
                name: "MeetingId",
                table: "Meeting_Minutes_Details_Tbl",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "CustomerType",
                table: "Corporate_Customer_Tbl",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddForeignKey(
                name: "FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_meetingMinutesMasterId",
                table: "Meeting_Minutes_Details_Tbl",
                column: "meetingMinutesMasterId",
                principalTable: "Meeting_Minutes_Master_Tbl",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
