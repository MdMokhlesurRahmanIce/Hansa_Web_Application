using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class testReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void Page_Init(object sender, EventArgs e) 
        {
            if (!IsPostBack)
            {

                List<rptEntityMonthlyEmpDriverOTS> objrptEntityMonthlyEmpDriverOTS = new List<rptEntityMonthlyEmpDriverOTS>();

                string constring = "Data Source = UG-PC; User Id = sa; pwd = 1234; Initial Catalog = VMS_LIVE; Min Pool Size=5;Max Pool Size=60;Connect Timeout=30";


                string sql = "exec VMS_GetMonthlyEmpDriverOTReportForAllEmployee '7'";
                SqlConnection con = new SqlConnection(constring);
                con.Open();

                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        rptEntityMonthlyEmpDriverOTS lstrptEntityMonthlyEmpDriverOTS = new rptEntityMonthlyEmpDriverOTS();
                        lstrptEntityMonthlyEmpDriverOTS.Day = dt.Rows[i]["Day"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.Designation = dt.Rows[i]["Designation"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.DoM = dt.Rows[i]["DoM"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.EmpName = dt.Rows[i]["EmpName"].ToString();
                        // lstrptEntityMonthlyEmpDriverOTS.gTotal = Convert.ToDecimal(dt.Rows[i]["gTotal"]);
                        lstrptEntityMonthlyEmpDriverOTS.InTime = dt.Rows[i]["InTime"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.MStart = dt.Rows[i]["MStart"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.OutTime = dt.Rows[i]["OutTime"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.OverTimeHrs = Convert.ToDecimal(dt.Rows[i]["OverTimeHrs"]);
                        lstrptEntityMonthlyEmpDriverOTS.overTimeTK = Convert.ToDecimal(dt.Rows[i]["overTimeTK"]);
                        lstrptEntityMonthlyEmpDriverOTS.ratePHour = Convert.ToDecimal(dt.Rows[i]["ratePHour"]);
                        lstrptEntityMonthlyEmpDriverOTS.RegHour = dt.Rows[i]["RegHour"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.salaryPmonth = dt.Rows[i]["salaryPmonth"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.totaldayofMonth = dt.Rows[i]["totaldayofMonth"].ToString();
                        lstrptEntityMonthlyEmpDriverOTS.TotalHrs = Convert.ToDecimal(dt.Rows[i]["TotalHrs"]);
                        lstrptEntityMonthlyEmpDriverOTS.UnitName = dt.Rows[i]["UnitName"].ToString();

                        objrptEntityMonthlyEmpDriverOTS.Add(lstrptEntityMonthlyEmpDriverOTS);

                    }
                }

                //objrptEntityMonthlyEmpDriverOTS = DriverManager.GetrptEntityMonthlyEmpDriverOTS(ddlText, year, driverID, exceptionalCase);

                // string regHour = "";

                //foreach(rptEntityMonthlyEmpDriverOTS chkregHour in objrptEntityMonthlyEmpDriverOTS)
                //{

                //    regHour = chkregHour.RegHour;
                //    if (regHour=="0")
                //    {
                //        break; 
                //    }
                //}
                ReportDocument rpt = new ReportDocument();
                if (objrptEntityMonthlyEmpDriverOTS.Count > 0)
                {
                    rpt.Load(Server.MapPath("~/CrystalReport1.rpt"));
                    // rpt.SetDatabaseLogon("sa", "1234", "(Local)", "VMS");// required info at pdf 
                    rpt.SetDataSource(objrptEntityMonthlyEmpDriverOTS);
                    CrystalReportViewer1.ReportSource = rpt;
                    Session["RPT"] = rpt;
                    CrystalReportViewer1.DataBind();
                    CrystalReportViewer1.ToolPanelView = ToolPanelViewType.None;

                }

            }
            else 
            {
                ReportDocument nrpt = (ReportDocument)Session["RPT"];
                CrystalReportViewer1.ReportSource = nrpt;
            
            }

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}