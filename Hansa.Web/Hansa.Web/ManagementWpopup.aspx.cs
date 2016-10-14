using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class ManagementWpopup : System.Web.UI.Page  
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void btnManagingDirector_Click(object sender, EventArgs e)
        {

        }

        protected void btnBoardOfDirector_Click(object sender, EventArgs e)
        {

        }

        protected void btnCheifExecutiveOfficer_Click(object sender, EventArgs e)
        {

        }

        protected void btnChairman_Click(object sender, EventArgs e)
        {
           // managementImg.Visible = false;
            
           // chairmanProfile.Visible = true;
        }

        protected void btnChairmanProfile_Click(object sender, EventArgs e)
        {
            //chairmanProfile.Visible = true;
           // managementImg.Visible = false;
           // chairmanMessage.Visible = false;
           // ManagingDirectorMessage.Visible = false;
           // ManagingDirectorProfile.Visible = false;


        }

        protected void btnChairmanMessage_Click(object sender, EventArgs e)
        {

          
            //chairmanMessage.Visible = true; 
           // managementImg.Visible = false;
           // chairmanProfile.Visible = false;
          //  ManagingDirectorMessage.Visible = false;
          //  ManagingDirectorProfile.Visible = false;
        }

        protected void btnManagingDirectorProfile_Click(object sender, EventArgs e)
        {
           // chairmanMessage.Visible = false;
           // managementImg.Visible = false;
           // chairmanProfile.Visible = false;
          //  ManagingDirectorMessage.Visible = false;
          //  ManagingDirectorProfile.Visible = true;


        }

        protected void btnManagingDirectorMessage_Click(object sender, EventArgs e)
        {
            // chairmanMessage.Visible = false;
            // managementImg.Visible = false;
            // chairmanProfile.Visible = false;
            // ManagingDirectorMessage.Visible = true;
           // ManagingDirectorProfile.Visible = false;

        } 
    }
}