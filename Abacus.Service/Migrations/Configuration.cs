namespace Abacus.Service.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using Abacus.Service.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<Abacus.Service.Models.AbacusServiceContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Abacus.Service.Models.AbacusServiceContext context)
        {
            //  This method will be called after migrating to the latest version.

            context.Products.AddOrUpdate(x=> x.Id,
                new Product(){Id=1, ProductName="大白兔奶糖", ProductPrice=19.99M},
                new Product(){Id=2, ProductName="娃哈哈果奶", ProductPrice=9.65M},
                new Product(){Id=3, ProductName="天喔好滋味", ProductPrice=10.00M}
                );
        }
    }
}
