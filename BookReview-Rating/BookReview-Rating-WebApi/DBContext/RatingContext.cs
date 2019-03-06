using Microsoft.EntityFrameworkCore;
using DBEntities;

namespace DBContext
{
    public class RatingContext : DbContext
    {
        public RatingContext()
        {
        }

        public RatingContext(DbContextOptions<RatingContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BookRating> BookRating { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.1-servicing-10028");

            modelBuilder.Entity<BookRating>(entity =>
            {
                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.Isbn)
                    .HasColumnName("ISBN")
                    .HasMaxLength(50);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100);
            });
        }
    }
}
