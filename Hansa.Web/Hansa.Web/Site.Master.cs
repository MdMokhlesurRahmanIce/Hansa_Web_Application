using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
               // lblShowNavID.Text = bs_example_navbar_collapse_2.ClientID;
            }
        }
    }
}