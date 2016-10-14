using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Web;
using System.Net.Mail;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web 
{
    public partial class Registration : System.Web.UI.Page
    {

        SecurityObject objSecurityObject = new SecurityObject();
        SessionConstant sc = new SessionConstant();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if ((Session["LOGOUT"] as string) == "logout")
                //{
                //    MessageHelper.ShowAlertMessage("You Should Be Log Out.");
                //    // Session["ShowLogOutMessage"] = "You are successfully Log Out.";
                //    // Response.Redirect("~/Home.aspx",false);
                //    // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You are successfully Log Out.')</script>");

                //}

                //else if ((Session["LOGOUT"] as string) == "login")
                //{

                //}
            }
        }

        protected string GetvisitorIPAddress()
        {

            bool GetLan = false;
            string visitorIPAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (String.IsNullOrEmpty(visitorIPAddress))
                visitorIPAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];

            if (string.IsNullOrEmpty(visitorIPAddress))
                visitorIPAddress = HttpContext.Current.Request.UserHostAddress;

            if (string.IsNullOrEmpty(visitorIPAddress) || visitorIPAddress.Trim() == "::1")
            {
                GetLan = true;
                visitorIPAddress = string.Empty;
            }

            if (GetLan && string.IsNullOrEmpty(visitorIPAddress))
            {
                NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
                String sMacAddress = string.Empty;
                foreach (NetworkInterface adapter in nics)
                {
                    if (sMacAddress == String.Empty)// only return MAC Address from first card  
                    {
                        IPInterfaceProperties properties = adapter.GetIPProperties();
                        sMacAddress = adapter.GetPhysicalAddress().ToString();
                    }
                }
                // To Get IP Address


                string IPHost = Dns.GetHostName();
                visitorIPAddress = Dns.GetHostByName(IPHost).AddressList[0].ToString();
            }


            return visitorIPAddress;
            //lblipaddress.Text = "Your IP is: " + visitorIPAddress;
        }


        private void SendActivationEmail(string activationCode) 
        { 
            //string activationCode = Guid.NewGuid().ToString();
            //UserActivationLink ual = new UserActivationLink();
            //ual.UserID=userId;
            //ual.ActivationCode=activationCode;
            //objSecurityObject.SaveActivationCode(ual);

            using(MailMessage mm = new MailMessage("shamim@uniquegroupbd.com", txtEmail.Value.Trim().ToString()))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + txtEmail.Value.Trim() + ",";
                body += "<br /><br />Please click the following link to activate your account";
               // body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "CS_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";

                body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Registration.aspx", "Feedback.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("it@uniquegroupbd.com", "uniqueit_2015");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

//sendEmail("shamim@uniquegroupbd.com", "", "m.rahman@uniquegroupbd.com", "saba@uniquegroupbd.com;atik@uniquegroupbd.com", "Client Feedback", body, "it@uniquegroupbd.com", "uniqueit_2015");
//   public static bool sendEmail(String fromAddr, String senderName, String toAddr, String ccAddr, String subject, String body, String _userName, String _password)
//    {

//        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

//        client.EnableSsl = true;

//        client.Credentials = new NetworkCredential(_userName, _password);

//        MailAddress from = new MailAddress(fromAddr, senderName);

//        MailAddress to = new MailAddress(toAddr);

//        MailMessage message = new MailMessage(from, to);

//        if (ccAddr.Trim() != "")
//        {

//            string[] strArray = ccAddr.Trim().Split(new char[] { ';' });

//            for (int i = 0; i < strArray.Length; i++)
//            {

//                message.CC.Add(strArray[i].Trim());

//            }

//        }

//        message.Subject = subject;

//        message.IsBodyHtml = true;

//        message.Body = body;

//        try
//        {

//            client.Send(message);

//            return true;

//        }

//        catch (Exception ex)
//        {

//            return false;

//        }

//    }
        }

        protected void btnTryAnotherCapcha_Click(object sender, EventArgs e)
        { 
        

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Captcha1.ValidateCaptcha(txtCapchaCode.Value.Trim().ToString());
            if (!Captcha1.UserValidated)
            {
                MessageHelper.ShowAlertMessage("Capcha Code is not valid.");
            }
            else
            {
                string visitorIPAddress = GetvisitorIPAddress();
                string userId = "";
                UserActivationLink lstUser = new UserActivationLink();
                lstUser.UserID = txtEmail.Value.Trim();
                lstUser.Address = txtAddress.Value.Trim();
                lstUser.Answer = txtAnswer.Value.Trim();
                lstUser.CapchaCode = txtCapchaCode.Value.Trim().ToString();
                lstUser.CompanyName = txtCompanyName.Value.Trim();
                lstUser.Email = txtEmail.Value.Trim();
                lstUser.FirstName = txtFirstName.Value.Trim();
                lstUser.LastName = txtLastName.Value.Trim();
                lstUser.Password = txtPassword.Value.Trim();
                lstUser.Phone = txtPhone.Value.Trim();
                lstUser.SecurityQuestion = txtSecurityQuestion.Value.Trim();
                lstUser.ActivationCode = Guid.NewGuid().ToString(); 
                lstUser.IPAddress = visitorIPAddress;

                // lstUser.ipad

                userId = objSecurityObject.SaveRegistrationInfo(lstUser);

                string message = string.Empty;
                if (userId == "1")
                {
                    message = "Supplied email address has already been used.";
                }
                else if (userId == "2")
                {
                    message = "We have already send email, Please check for active.";
                }
                else if (userId == "3")
                {
                    message = "Registration successful. Activation email has been sent, Please Confirm To Active.";
                    SendActivationEmail(lstUser.ActivationCode);
                    Session["RegistrationSuccess"] = message;
                    Response.Redirect("Feedback.aspx", false);
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }



            //try
            //{
            //   // var userProvider = new UserProvider();
            //   // UserProvider user = userProvider.GetByUserNameAndPassword(txtUserName.Value, txtPassword.Value); 
            //    User objUser = new User();
            //    objUser = objSecurityObject.GetByUserNameAndPassword(txtUserName.Value, txtPassword.Value);
            //    if (objUser!=null)
            //    { 
            //        Session[SessionConstant.User] = objUser.UserID;
            //        Session[SessionConstant.UserID] = objUser.UserID;
            //        Session["User"] = objUser.UserID;
            //        Session["UserName"] = objUser.UserID;
            //        Session["IsAdmin"] = objUser.IsAdmin;
            //        Session["ID"] = objUser.ID;
            //        Session["ShowLogInMessage"] = "You are successfully Login.";
            //        Response.Redirect("~/Home.aspx", false);
            //    }
            //    else if (objUser == null)
            //    {
            //        // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('LogIn Info is not correct.')</script>");
            //        MessageHelper.Alert("LogIn Info is not correct.");
            //        txtUserName.Attributes.Clear();
            //        txtPassword.Attributes.Clear();
            //       // Response.Redirect("~/LoginUI.aspx", false); 
            //    }  

            //    #region
            //    //String MyIp = "-";
            //    //var provider = new LogFileProvider();
            //    //DateTime dt = DateTime.Now;
            //    //provider.LogID = 0;
            //    //provider.UserID = user.UserID;
            //    //provider.LogInTime = dt;

            //    //IPHostEntry ipHost = Dns.GetHostEntry(Dns.GetHostName());

            //    //foreach (IPAddress ipAddress in ipHost.AddressList)
            //    //{
            //    //    if (ipAddress.AddressFamily.ToString() == "InterNetwork")
            //    //    {
            //    //        MyIp = ipAddress.ToString();
            //    //    }
            //    //}
            //    //provider.IPAddress = MyIp;
            //    //provider.LogOutTime = dt;
            //    //long LogID = provider.Save();
            //    //Session[SessionConstants.LogID] = LogID.ToString();
            //    #endregion  
                
            //}
            //catch (Exception ex)
            //{
            //    string excep = ex.Message.ToString();
            //    MessageHelper.ShowAlertMessage(ex.Message.ToString()); 
            //}
        }
  
    
}