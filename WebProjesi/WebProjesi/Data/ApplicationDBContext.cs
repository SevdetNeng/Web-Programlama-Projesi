﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebProjesi.Models;

namespace WebProjesi.Data
{
    public class ApplicationDBContext:DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options) : base(options)
        {

        }

        public DbSet<Film> Filmler { get; set; }
        public DbSet<Kullanicilar> Kullanicilar { get; set; }
        public DbSet<FilmYorum> FilmYorumlar { get; set; }
        
    }
}
