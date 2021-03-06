﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FlyerV2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FlyerEntities : DbContext
    {
        public FlyerEntities()
            : base("name=FlyerEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<DealerBas> DealerBases { get; set; }
        public virtual DbSet<Distributor> Distributors { get; set; }
        public virtual DbSet<FlyerEventBas> FlyerEventBases { get; set; }
        public virtual DbSet<FlyerFormat> FlyerFormats { get; set; }
        public virtual DbSet<FlyerOrder> FlyerOrders { get; set; }
        public virtual DbSet<FlyerSchedule> FlyerSchedules { get; set; }
        public virtual DbSet<FlyerType> FlyerTypes { get; set; }
        public virtual DbSet<HoursOfOperation> HoursOfOperations { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Region> Regions { get; set; }
        public virtual DbSet<SupplierBas> SupplierBases { get; set; }
        public virtual DbSet<SupplierPricing> SupplierPricings { get; set; }
        public virtual DbSet<SupplierRegion> SupplierRegions { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Theme> Themes { get; set; }
        public virtual DbSet<Zone> Zones { get; set; }
    }
}
