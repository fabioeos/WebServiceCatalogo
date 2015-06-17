using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebServiceProductManager
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ServiceProductManager" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ServiceProductManager.svc or ServiceProductManager.svc.cs at the Solution Explorer and start debugging.
    public class ServiceProductManager : IServiceProductManager
    {
        public List<ProductSimple> GetCatalog()
        {
            ProductManagerModelContainer context = new ProductManagerModelContainer();
            List<Product> list = context.Product.ToList();
            List<ProductSimple> listPSimple = new List<ProductSimple>();
            foreach (Product p in list)
            {
                listPSimple.Add(convertProduct(p));
            }
            return listPSimple;
        }

        private ProductSimple convertProduct(Product p)
        {
            return new ProductSimple { ProductCode = p.ProductCode, Name = p.Name, Price = p.Price };
        }
    }
}
