//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FlyerCreationApplication
{
    using System;
    using System.Collections.Generic;
    
    public partial class Address
    {
        public int Id { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string province { get; set; }
        public string postalcode { get; set; }
    
        public virtual Distributor Distributor { get; set; }
        public virtual DealerBase DealerBases { get; set; }
        public virtual SupplierBase SupplierBase { get; set; }
    }
}