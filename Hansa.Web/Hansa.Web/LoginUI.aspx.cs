using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class LoginUI : System.Web.UI.Page
    { 
        SecurityObject objSecurityObject = new SecurityObject();
        SessionConstant sc = new SessionConstant();
        protected void Page_Load(object sender, EventArgs e) 
        {
            // start for Cache clear when log out click  
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now);
            Response.Cache.SetNoServerCaching();
            Response.Cache.SetNoStore();

            // end for Cache clear when log out click

            if (!IsPostBack)
            {
                if ((Session["LOGOUT"] as string) == "logout")
                {
                    MessageHelper.ShowAlertMessage("You are successfully Log Out.");
                    Session.Abandon();
                    Session["ShowLogOutMessage"] = "You are successfully Log Out.";
                    Response.Redirect("~/Home.aspx", false);

                    // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You are successfully Log Out.')</script>");

                }

                else if ((Session["LOGOUT"] as string) == "login")
                {
                    Response.Redirect("~/Home.aspx", false);
                }
  
                //else if ((Session["User"] as string) == "" || (Session["User"] as string) == null)
                //{
                //    //Session.Abandon();
                //    Session["ShowLogOutMessage"] = "You are successfully Log Out.";
                //    Response.Redirect("~/Home.aspx", false);
                //}

                else if ((Session["ForWhenUserInLogged"] as string) == "ForWhenUserInLogged")
                {
                        //Session.Abandon();
                    Session["User"] = "";
                    Session[SessionConstant.User] ="";
                    Session[SessionConstant.UserID] = "";
                    Session["User"] = "";
                    Session["UserName"] = "";
                    Session["IsAdmin"] = "";
                    Session["ID"] = "";
                    Session["ShowLogOutMessage"] = "You are successfully Log Out.";
                    Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    Response.Redirect("~/Home.aspx", false);
                }


            } 
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {
                // var userProvider = new UserProvider();
                // UserProvider user = userProvider.GetByUserNameAndPassword(txtUserName.Value, txtPassword.Value); 
                User objUser = new User();
                objUser = objSecurityObject.GetByUserNameAndPassword(txtUserName.Value, txtPassword.Value);
                if (objUser != null)
                {
                    Session[SessionConstant.User] = objUser.UserID;
                    Session[SessionConstant.UserID] = objUser.UserID;
                    Session["User"] = objUser.UserID;
                    Session["UserName"] = objUser.UserID;
                    Session["IsAdmin"] = objUser.IsAdmin;
                    Session["ID"] = objUser.ID;
                    Session["ShowLogInMessage"] = "You are successfully Login.";
                    Response.Redirect("~/Home.aspx", false);
                }
                else if (objUser == null)
                {
                    // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('LogIn Info is not correct.')</script>");
                    MessageHelper.Alert("LogIn Info is not correct.");
                    txtUserName.Attributes.Clear();
                    txtPassword.Attributes.Clear();
                    // Response.Redirect("~/LoginUI.aspx", false); 
                }

                #region
                //String MyIp = "-";
                //var provider = new LogFileProvider();
                //DateTime dt = DateTime.Now;
                //provider.LogID = 0;
                //provider.UserID = user.UserID;
                //provider.LogInTime = dt;

                //IPHostEntry ipHost = Dns.GetHostEntry(Dns.GetHostName());

                //foreach (IPAddress ipAddress in ipHost.AddressList)
                //{
                //    if (ipAddress.AddressFamily.ToString() == "InterNetwork")
                //    {
                //        MyIp = ipAddress.ToString();
                //    }
                //}
                //provider.IPAddress = MyIp;
                //provider.LogOutTime = dt;
                //long LogID = provider.Save();
                //Session[SessionConstants.LogID] = LogID.ToString();
                #endregion

            }
            catch (Exception ex)
            {
                string excep = ex.Message.ToString();
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
        }

        [WebMethod(EnableSession = true)]
        public static void CheckLoginOut(string vP)
        {
            if (vP == "LOG OUT")
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


        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
    }
}