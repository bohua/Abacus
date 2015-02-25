using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Abacus.API.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public string ProductCode { get; set; }
        public string ProductBarCode { get; set; }
        public string PackageBarCode { get; set; }
        public string ProductModel { get; set; }
        public int PackageVolume { get; set; }
        public string ProductUnit { get; set; }
        public string PackageUnit { get; set; }
        public decimal ProductPrice { get; set; }
        public decimal PackagePrice { get; set; }
        public decimal ProductCost { get; set; }
        public decimal PackageCost { get; set; }
        public string ProductBrand { get; set; }
        public string ProductVendor { get; set; }
        public string ProductDescription { get; set; }
        public bool IsDisabled { get; set; }
        public string ProductTag { get; set; }
    }
}