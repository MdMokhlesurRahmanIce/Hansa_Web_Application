using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class Ongoing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SecurityObject objSecurityObject = new SecurityObject();

            string userID = Session["User"] as string;
            string pageName = "Ongoing";
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
    }
}