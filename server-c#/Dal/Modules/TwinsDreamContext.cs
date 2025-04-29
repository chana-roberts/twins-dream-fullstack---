using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Dal.Modules;

public partial class TwinsDreamContext : DbContext
{
    public TwinsDreamContext()
    {
    }

    public TwinsDreamContext(DbContextOptions<TwinsDreamContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Company> Companies { get; set; }

    public virtual DbSet<Costumer> Costumers { get; set; }

    public virtual DbSet<Gender> Genders { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<PurchaseDetail> PurchaseDetails { get; set; }

    public virtual DbSet<ShoppingBasket> ShoppingBaskets { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-1VUANBN;Initial Catalog=TwinsDream; Trusted_Connection=True;MultipleActiveResultSets=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasIndex(e => e.CategoryId, "IX_Products_CategoryId");

            entity.HasIndex(e => e.CompanyId, "IX_Products_CompanyId");

            entity.HasIndex(e => e.GenderId, "IX_Products_GenderId");

            entity.Property(e => e.Image).HasMaxLength(255);

            entity.HasOne(d => d.Category).WithMany(p => p.Products).HasForeignKey(d => d.CategoryId);

            entity.HasOne(d => d.Company).WithMany(p => p.Products).HasForeignKey(d => d.CompanyId);

            entity.HasOne(d => d.Gender).WithMany(p => p.Products).HasForeignKey(d => d.GenderId);
        });

        modelBuilder.Entity<PurchaseDetail>(entity =>
        {
            entity.HasIndex(e => e.ProductId, "IX_PurchaseDetails_ProductId");

            entity.HasOne(d => d.Product).WithMany(p => p.PurchaseDetails).HasForeignKey(d => d.ProductId);
        });

        modelBuilder.Entity<ShoppingBasket>(entity =>
        {
            entity.HasIndex(e => e.CostumerId, "IX_ShoppingBaskets_CostumerId");

            entity.HasOne(d => d.Costumer).WithMany(p => p.ShoppingBaskets).HasForeignKey(d => d.CostumerId);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
