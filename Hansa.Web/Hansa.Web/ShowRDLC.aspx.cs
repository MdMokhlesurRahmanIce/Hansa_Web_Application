using Hansa.Web.Repository;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class ShowRDLC : System.Web.UI.Page
    {
        SecurityObject objSecurityObject = new SecurityObject();

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!IsPostBack)
            {
                List<User> lstUser = new List<User>();

                lstUser = objSecurityObject.GetAllUser();

                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
                ReportDataSource datasource = new ReportDataSource("DataSet1", lstUser);
 
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(datasource);
            }
            
        }
    }
}