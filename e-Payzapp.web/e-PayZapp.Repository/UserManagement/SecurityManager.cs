using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using e_PayZapp.Repository.Data.Model;
using System.Data.SqlClient;
using System.Data;

namespace e_PayZapp.Repository.UserManagement
{
    public class SecurityManager
    {
        public static string CheckLoginToken(ePayZappUser EpayZappUserLogin)
        {
            ePayZappUser EpayZappUserNewLogin = new ePayZappUser();
            EpayZappUserNewLogin.EmailAddress = EpayZappUserLogin.EmailAddress;
            EpayZappUserNewLogin.Password = EpayZappUserLogin.Password;
            string tokentype = "false";
            
            if (EpayZappUserNewLogin.EmailAddress != null)
            {
                if (CustomerManager.Authenticate(EpayZappUserNewLogin).Key)
                {
                    tokentype = CustomerManager.Authenticate(EpayZappUserNewLogin).Value;
                    if (tokentype != "false")
                    {
                         return tokentype;
                    }
                }
            }
            return tokentype;
        }


        public static CurrentUserActive AuthenticateUsers(string TokenId)
        {
            CurrentUserActive EpayZappUserAuthpass = new CurrentUserActive();

            using (SqlConnection cnn = e_PayZapp.connection.ePayZappConnection.SetConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SessionEpayZappUserDetail";

                cmd.Parameters.Add(new SqlParameter("@LoginToken", TokenId));
                cmd.Connection.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        EpayZappUserAuthpass.ID = (long)reader["Id"];
                        EpayZappUserAuthpass.FName = (string)reader["FName"];
                        EpayZappUserAuthpass.TokenValue = (string)reader["TokenID"];

                    }
                }
                cmd.Connection.Close();

            }
            return EpayZappUserAuthpass;
        }





        public static Boolean Logout()
        {
            FormsAuthentication.SignOut();
            HttpContext.Current.ApplicationInstance.Session.Abandon();
            HttpContext.Current.ApplicationInstance.Session.Clear();

            HttpContext.Current.Session.Clear();
            HttpContext.Current.Session.Abandon();
            HttpContext.Current.Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
            HttpContext.Current.Session.Remove("__MySession__");
            HttpContext.Current.Response.Cache.SetExpires(DateTime.Now);
            HttpContext.Current.Response.Cookies.Clear();
            HttpContext.Current.Request.Cookies.Clear();

            return true;
        }

       
    }
    public class CurrentUser
    {
        public String LoginToken { get; set; }
     
        public static CurrentUser Current
        {
            get
            {
                CurrentUser session = (CurrentUser)HttpContext.Current.Session["__MySession__"];

                if (session == null)
                {
                    session = new CurrentUser();
                    HttpContext.Current.Session["__MySession__"] = session;

                }
                else
                {
                    session = (CurrentUser)HttpContext.Current.Session["__MySession__"];
                }
                return session;
            }
        }

    }
    public class CurrentUserActive
    {
        public long ID { get; set; }
        public String FName { get; set; }
        public String TokenValue { get; set; }

    }
    }
