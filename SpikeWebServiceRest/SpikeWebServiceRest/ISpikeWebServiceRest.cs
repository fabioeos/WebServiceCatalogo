﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace SpikeWebServiceRest
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ISpikeWebServiceRest" in both code and config file together.
    [ServiceContract]
    public interface ISpikeWebServiceRest
    {
        [OperationContract]
        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Xml,
                                   BodyStyle = WebMessageBodyStyle.Bare,
                                   UriTemplate = "GetProductList/")]
        List<Product> GetProductList();
    }
}