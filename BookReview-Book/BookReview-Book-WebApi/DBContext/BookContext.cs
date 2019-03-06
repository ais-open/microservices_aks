using DBEntities;
using Microsoft.EntityFrameworkCore;
using System;

namespace DBContext
{
    public class BookContext : DbContext
    {
        public BookContext()
        {
        }

        public BookContext(DbContextOptions<BookContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Book> Book { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.1-servicing-10028");

            modelBuilder.Entity<Book>(entity =>
            {
                entity.Property(e => e.AuthorName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.Discount).HasColumnType("decimal(5, 2)");

                entity.Property(e => e.Image)
                    .IsRequired()
                    .HasMaxLength(200);

                entity.Property(e => e.Isbn)
                    .HasColumnName("ISBN")
                    .HasMaxLength(50);

                entity.Property(e => e.Language)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.PublisherName).HasMaxLength(50);
            });
        }
    }
}
