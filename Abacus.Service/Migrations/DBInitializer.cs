using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Abacus.Service.Models;

namespace Abacus.Service.Migrations
{
    public class DBInitializer : DropCreateDatabaseAlways<AbacusServiceContext>
    {
        protected override void Seed(AbacusServiceContext context)
        {
            context.Products.Add(new Product() { Id = 1, ProductName = "大白兔奶糖", ProductPrice = 29.99M });
            context.Products.Add(new Product() { Id = 2, ProductName = "娃哈哈果奶", ProductPrice = 19.65M });
            context.Products.Add(new Product() { Id = 3, ProductName = "天喔好滋味", ProductPrice = 20.00M });
            
            base.Seed(context);
        }
    }
}