using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SpikeWebServiceRest
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SpikeWebServiceRest" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select SpikeWebServiceRest.svc or SpikeWebServiceRest.svc.cs at the Solution Explorer and start debugging.
    public class SpikeWebServiceRest : ISpikeWebServiceRest
    {

        public List<Product> GetProductList()
        {
            return Products.Instance.ProductList;
        }
    }
}
