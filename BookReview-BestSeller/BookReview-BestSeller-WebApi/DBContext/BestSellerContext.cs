using DBEntities;
using Microsoft.EntityFrameworkCore;

namespace DBContext
{
    public class BestSellerContext : DbContext
    {
        public BestSellerContext()
        {
        }

        public BestSellerContext(DbContextOptions<BestSellerContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BookBestSeller> BookBestSeller { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.1-servicing-10028");

            modelBuilder.Entity<BookBestSeller>(entity =>
            {
                entity.Property(e => e.BestSeller).HasMaxLength(1000);

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
