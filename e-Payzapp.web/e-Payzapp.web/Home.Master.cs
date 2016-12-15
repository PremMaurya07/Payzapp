using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_PayZapp.Repository;
using e_PayZapp.Repository.Data.DataRepository;
using e_PayZapp.Repository.UserManagement;
using System.Configuration;
using System.Web.Configuration;
using e_PayZapp.Repository.Data.Model;

namespace e_Payzapp.web
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            if (!this.IsPostBack)
            {
                if (CurrentUser.Current.LoginToken == null )
                {
                    username.Disabled = true;
                    loginform.Disabled = false;
                }
                else
                {
                    username.Disabled = false;
                    loginform.Disabled = true;
                }
                Configuration config = WebConfigurationManager.OpenWebConfiguration("~/Web.Config");
                SessionStateSection section = (SessionStateSection)config.GetSection("system.web/sessionState");
                int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + timeout + ");", true);


            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            if (!this.IsPostBack)
            {
                if (CurrentUser.Current.LoginToken == null)
                {
                    username.Disabled = true;
                    loginform.Disabled = false;
                }
                else
                {
                    username.Disabled = false;
                    loginform.Disabled = true;
                }
                Configuration config = WebConfigurationManager.OpenWebConfiguration("~/Web.Config");
                SessionStateSection section = (SessionStateSection)config.GetSection("system.web/sessionState");
                int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + timeout + ");", true);


            }
        }



    }
}