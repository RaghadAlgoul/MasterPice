//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MP_TS_SHOP_.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Comments = new HashSet<Comment>();
            this.Products = new HashSet<Product>();
            this.Subscriptions = new HashSet<Subscription>();
        }
    
        public int UserId { get; set; }
        public string UserImage { get; set; }
        public string UserFaceBook { get; set; }
        public string UserTweeter { get; set; }
        public string UserInstagram { get; set; }
        public string UserLocation { get; set; }
        public string UserAbout { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public Nullable<bool> Gender { get; set; }
        public bool State { get; set; }
        public Nullable<System.DateTime> JoinedDate { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Products { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Subscription> Subscriptions { get; set; }
        public virtual Location Location { get; set; }
    }
}
