//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Distributor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Distributor()
        {
            this.People = new HashSet<Person>();
        }
    
        public int Id { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public bool isdeleted { get; set; }
        public string advanceddays { get; set; }
        public string instructions { get; set; }
        public System.DateTime datestarted { get; set; }
        public System.DateTime dateended { get; set; }
        public int DealerBase_Id { get; set; }
        public Nullable<int> FlyerOrder_Id { get; set; }
        public int Addresses_Id { get; set; }
    
        public virtual Address Address { get; set; }
        public virtual DealerBas DealerBas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Person> People { get; set; }
        public virtual FlyerOrder FlyerOrder { get; set; }
    }
}
