
using DomainClass;
using Hansa.Web.Helper;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class Home : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            // start for Cache clear when log out click  
             

            // end for Cache clear when log out click
            if(!IsPostBack) 
            {
                if ((Session["ShowLogOutMessage"] as string) != "" && (Session["ShowLogOutMessage"] as string) != null)
                {
                    MessageHelper.ShowAlertMessage(Session["ShowLogOutMessage"].ToString());
                    Session["ShowLogOutMessage"] = "";
                    Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                   // Response.Redirect("~/Home.aspx");
                    Session.Abandon();
                    Session.Clear();
                } 
                else if ((Session["ShowLogInMessage"] as string) != "" && (Session["ShowLogInMessage"] as string)!=null)
                {
                    MessageHelper.ShowAlertMessage(Session["ShowLogInMessage"].ToString());
                    Session["ShowLogInMessage"] = "";
                }
            }
        }

        [WebMethod]
        public static void mailSend(string txtEmail)
        { 
            string hh = txtEmail;

        }

        [WebMethod(EnableSession=true)]
        public static void CheckLoginOut(string vP)
        { 
            if(vP=="LOG OUT")
            {
                HttpContext.Current.Session[SessionConstant.User] = "";
                HttpContext.Current.Session[SessionConstant.UserID] = "";
                HttpContext.Current.Session["User"] = "";
                HttpContext.Current.Session["UserName"] = "";
                HttpContext.Current.Session["IsAdmin"] = "";
                HttpContext.Current.Session["ID"] = "";
                HttpContext.Current.Session["LOGOUT"] = "logout"; 
               // HttpContext.Current.Response.Redirect("~/Home.aspx",false); 
            } 
            else if (vP == "LOGIN")
            {
                HttpContext.Current.Session["LOGOUT"] = "login"; 
            }
        } 
    }
}