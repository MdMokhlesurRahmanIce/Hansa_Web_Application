using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class AskHansa : System.Web.UI.Page  
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SecurityObject objSecurityObject = new SecurityObject();

            string userID = Session["User"] as string;
            string pageName = "AskHansa";
            bool pageAthntctd = objSecurityObject.InduviduaPageLoadathentication(pageName, userID);
            if (!IsPostBack && (pageAthntctd == true))
            {

            }
            else if (IsPostBack && (pageAthntctd == true))
            {


                // PopulateddlMenuType();
                // GetAllPageControls();
                // LoadGridView2();
            }
            else if (pageAthntctd == false)
            {
                Response.Redirect("~/Home.aspx", false);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (MailMessage mm = new MailMessage("info@unique-hansa.com", "info@unique-hansa.com"))//new MailMessage("it@uniquegroupbd.com", "it@uniquegroupbd.com"))
                {
                    mm.Subject = "Visitor Comments";
                    string body = "Hello,";
                    body += "<br /><br />" + txtComments.Value.Trim().ToString() + "";
                    //SmtpClient smtpClient = new SmtpClient("mail.MyWebsiteDomainName.com", 25); for different SmtpClient
                    body += "<br /><br />Thanks";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient("smtp.zoho.com",587);
                   // smtp.Host = "smtp.zoho.com";//"smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("info@unique-hansa.com", "Shamimho_2015");//new NetworkCredential("m.rahman@uniquegroupbd.com", "uniqueice06");//new NetworkCredential("it@uniquegroupbd.com", "uniqueit_2015");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                   // smtp.Port = 465;//smtp.Port = 587;
                    smtp.Send(mm);
                }
                txtComments.Value = "";
                txtEmail.Value = "";
                MessageHelper.ShowAlertMessage("Submitted Successfully.");
            }
            catch(Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            
            }

        }
    }
} 