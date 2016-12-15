using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_PayZapp.Repository.Data.Model;
using e_PayZapp.Repository.UserManagement;
namespace e_Payzapp.web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // ePayZappUser ep = new ePayZappUser();
           // ep.EmailAddress = "ak@gmail.com";
           // ep.Password = "ak@12345";
           // KeyValuePair<string, object> obj =Login(ep);
           // // if (HttpContext.Current.Session["User"].ToString() == "true" && obj!=null)
           // //{
           //    ePayZappUser eps =(ePayZappUser)obj.Value;
           //     Response.Write(obj.Key+ eps.FName);
           //// }
        }
        //public KeyValuePair<string,object> Login(ePayZappUser EpayZappUserLogin)
        //{
         
        //    ePayZappUser EpayZappUserNewLogin = new ePayZappUser();
        //    EpayZappUserNewLogin.EmailAddress = EpayZappUserLogin.EmailAddress;
        //    EpayZappUserNewLogin.Password = EpayZappUserLogin.Password;
        //      string f = "false";
        //    ePayZappUser ss = null;
        //    f = SecurityManager.CheckLoginToken(EpayZappUserNewLogin);
        //    if (f == "false")
        //    {
        //        ss = null;
        //        f = "false";
        //    }
        //    else
        //    {
        //          f=CustomerManager.Authenticate(EpayZappUserNewLogin).Value.Key;
        //          ss = CustomerManager.Authenticate(EpayZappUserNewLogin).Value.Value;
        //          HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //         CurrentUser.Current.LoginToken = f;
     
        //     }
        //     return new KeyValuePair<string, object>(f, ss);
        //}

    }
}