namespace CRDM.Data
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class CRDMData : DbContext
    {
        public CRDMData()
            : base("name=CRDMData")
        {
        }

        public virtual DbSet<Person> People { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Person>()
                .Property(e => e.TaxID)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.UID)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.EmailID)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.Phone1)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.Phone2)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.Address)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.State)
                .IsUnicode(false);

            modelBuilder.Entity<Person>()
                .Property(e => e.Country)
                .IsUnicode(false);
        }
    }
}
