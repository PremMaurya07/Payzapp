using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using e_PayZapp.Repository.UserManagement;
namespace e_Payzapp.web
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            //GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteTable.Routes.MapHttpRoute(
            name: "ActionApi2",
            routeTemplate: "api/{controller}/{action}/{id}",
            defaults: new { controller = "Default", id = RouteParameter.Optional });


        }
        protected void Session_Start(object sender, EventArgs e)
        {
           // HttpContext.Current.Session["User"] ="false";

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }
        protected void Application_PostAuthorizeRequest()
        {
            System.Web.HttpContext.Current.SetSessionStateBehavior(System.Web.SessionState.SessionStateBehavior.Required);
        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

            HttpContext.Current.Session.Clear();
            HttpContext.Current.Session.Abandon();
            HttpContext.Current.Session.Remove("__MySession__");
            CurrentUser.Current.LoginToken ="false";
            HttpContext.Current.Session["User"] = "false";
            if (Session.Contents.Count == 0)
            Server.Transfer("Login.aspx");
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}