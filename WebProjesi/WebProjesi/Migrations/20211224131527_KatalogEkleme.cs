using Microsoft.EntityFrameworkCore.Migrations;

namespace WebProjesi.Migrations
{
    public partial class KatalogEkleme : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "KullaniciKataloglar",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    kullaniciAdi = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    filmNumara = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_KullaniciKataloglar", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "KullaniciKataloglar");
        }
    }
}
