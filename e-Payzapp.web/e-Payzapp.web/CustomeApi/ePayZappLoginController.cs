using e_PayZapp.Repository.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using e_PayZapp.Repository.UserManagement;
using System.Web.SessionState;
namespace e_Payzapp.web.CustomeApi
{
    public class ePayZappLoginController : ApiController, IRequiresSessionState
    {

        [HttpPost]
        public string Login(ePayZappUser EpayZappUserLogin)
        {

            ePayZappUser EpayZappUserNewLogin = new ePayZappUser();
            EpayZappUserNewLogin.EmailAddress = EpayZappUserLogin.EmailAddress;
            EpayZappUserNewLogin.Password = EpayZappUserLogin.Password;
             string f = "unauthorized";
            f = SecurityManager.CheckLoginToken(EpayZappUserNewLogin);
            if (f == "false")
            {
                f = "unauthorized";
            }
            else
            {
               f = SecurityManager.CheckLoginToken(EpayZappUserNewLogin);
               HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                CurrentUser.Current.LoginToken = f;
             
            }
            return f;
        }

        
        public KeyValuePair<string,object> ActiveEmailuser()
        {
            CurrentUserActive obj = null;
            string ss1 = "false";
            if (CurrentUser.Current.LoginToken == null)
            {
                obj = null;
                ss1 = "false";
            }
            else
            {
                obj = SecurityManager.AuthenticateUsers(CurrentUser.Current.LoginToken);
                ss1 = obj.FName.ToString();
            }
            return new KeyValuePair<string, object>(ss1, obj);
        }



        public bool SignOut()
        {
            bool f = SecurityManager.Logout();
            return f;

        }


    }
    }
