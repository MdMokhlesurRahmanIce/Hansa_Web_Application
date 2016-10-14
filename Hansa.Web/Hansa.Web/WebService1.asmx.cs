using DomainClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace Hansa.Web
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    [System.Web.Script.Services.ScriptService] 

    public class WebService1 : System.Web.Services.WebService
    {

        public WebService1()
        { 
        
        }

        [WebMethod]
        public string HelloWorld(string firstName)
        {
            return "Hello World"; 
        }

        [WebMethod(EnableSession=true)]
        public void CheckLoginOut(string vP)
        {
            if (vP == "LOG OUT")
            {
                HttpContext.Current.Session[SessionConstant.User] = "";
                HttpContext.Current.Session[SessionConstant.UserID] = "";
                HttpContext.Current.Session["User"] = "";
                HttpContext.Current.Session["UserName"] = "";
                HttpContext.Current.Session["IsAdmin"] = "";
                HttpContext.Current.Session["ID"] = "";
                Session.Abandon();
                HttpContext.Current.Session.Abandon();
                HttpContext.Current.Session["LOGOUT"] = "logout"; 
                HttpContext.Current.Response.Redirect("~/LoginUI.aspx");
               
            }
            else if (vP == "LOGIN")
            {
                HttpContext.Current.Session["LOGOUT"] = "login";
                HttpContext.Current.Response.Redirect("~/Home.aspx");
            }
        }


    }
}
