using e_PayZapp.Repository.Data.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace e_Payzapp.web.CustomeApi
{
    public class DefaultController : ApiController
    {
       
       
        

         public object GetAllProvider()
        {

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://www.pay2all.in/web-api/get-provider?api_token=kGJ2MOVD3UH2p67Z9M1yPwSMKwLzuFzi3EPlOnPeJt1pEbEs01PWlMauaNMw");
            request.Method = "GET";
            request.ContentType = "application/json";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string str = reader.ReadLine();

            JavaScriptSerializer json = new JavaScriptSerializer();
            object SS = json.Deserialize<object>(str);
            return SS;

        }


   
        [HttpPost]
        public object GETCustomerMobileNoOPR(string id)
        {

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://www.pay2all.in/web-api/get-number?api_token=kGJ2MOVD3UH2p67Z9M1yPwSMKwLzuFzi3EPlOnPeJt1pEbEs01PWlMauaNMw&number=" + id);
            request.Method = "GET";
            request.ContentType = "application/json";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string str = reader.ReadLine();

            //  return str;
            JavaScriptSerializer json = new JavaScriptSerializer();
            object SS = json.Deserialize<object>(str);
            return SS;

        }
        public object MakeRecharge2(MakePayment myPay)
        {

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://www.pay2all.in/web-api/paynow?api_token=kGJ2MOVD3UH2p67Z9M1yPwSMKwLzuFzi3EPlOnPeJt1pEbEs01PWlMauaNMw&number="+ myPay.MobileNo +"& provider_id="+myPay.ProviderId+"&amount="+myPay.Amount+"&client_id="+myPay.ClientId);
            request.Method = "GET";
            request.ContentType = "application/json";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string str = reader.ReadLine();

            JavaScriptSerializer json = new JavaScriptSerializer();
            object SS = json.Deserialize<object>(str);
            return SS;

        }
    }
}
