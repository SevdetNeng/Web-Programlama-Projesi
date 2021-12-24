using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebProjesi.Models
{
    public class FilmYorumlar
    {

        [Key]
        [Column]
        public int Id { get; set; }

        [Required]
        public string Kullanici { get; set; }
        [Required]
        [MaxLength(200)]
        public string Yorum { get; set; }
        [Required]
        public int FilmNumara { get; set; }
        [Required]
        
        public int puan { get; set; }
        [Required]
        public string yorumBaslik { get; set; }

    }
}
