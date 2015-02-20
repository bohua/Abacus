using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Abacus.Service.Models;

namespace Abacus.Service.Controllers
{
    public class DefaultController : ApiController
    {
        Product[] products = new Product[]{
            new Product(){Id=1, ProductName="Product1"},
            new Product(){Id=2, ProductName="Product2"},
            new Product(){Id=3, ProductName="Product3"}
        };

        public IEnumerable<Product> getAllProducts() {
            return products;
        }
    }
}
