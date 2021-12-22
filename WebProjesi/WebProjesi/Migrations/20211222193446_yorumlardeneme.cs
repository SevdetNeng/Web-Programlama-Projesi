using Microsoft.EntityFrameworkCore.Migrations;

namespace WebProjesi.Migrations
{
    public partial class yorumlardeneme : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_FilmYorumlar",
                table: "FilmYorumlar");

            migrationBuilder.RenameTable(
                name: "FilmYorumlar",
                newName: "FilmYorumlari");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FilmYorumlari",
                table: "FilmYorumlari",
                column: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_FilmYorumlari",
                table: "FilmYorumlari");

            migrationBuilder.RenameTable(
                name: "FilmYorumlari",
                newName: "FilmYorumlar");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FilmYorumlar",
                table: "FilmYorumlar",
                column: "Id");
        }
    }
}
