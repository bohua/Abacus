//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Abacus.Service.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sales_invoice
    {
        public Sales_invoice()
        {
            this.Sales_detail = new HashSet<Sales_detail>();
        }
    
        public int Id { get; set; }
        public string Sales_Date { get; set; }
    
        public virtual ICollection<Sales_detail> Sales_detail { get; set; }
    }
}