
using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class SiteHome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SecurityObject objSecurityObject = new SecurityObject();

            if (!IsPostBack)
            {
                int conStatus = getConnectionStatus();

                if (conStatus == 1)
                { 
                    var userID = "";
                    var UserID = "";

                    /*start for all wiewers no need session */

                   // if (string.IsNullOrEmpty(Session["User"] as string) || (Session["User"] as string) == "alluser")

                    if ((string.IsNullOrEmpty(Session["User"] as string)) || ((Session["User"] as string) == objSecurityObject.GetDefaultUser()))
                    {
                        try
                        {
                            string defaultUser = objSecurityObject.GetDefaultUser();
                            userID = defaultUser;//"alluser";
                            UserID = defaultUser;//"alluser";

                            //start for new add  for handling user session
                            //Session["User"] = userID;
                            // loginP.InnerText = "LOGIN";
                            Session["ForWhenUserInLogged"] = "";
                            Session["User"] = UserID;
                            //end for new add  for handling user session

                        }
                        catch (Exception ex)
                        {
                            MessageHelper.ShowAlertMessage(ex.Message.ToString());
                        }
                    }
                    /*end for all wiewers no need session*/

                    /*start for login user/admin */
                   // else if ((Session["User"] as string) != "" && (Session["User"] as string) != null && (Session["User"] as string)!="alluser") //altime alluser for viwers
                    else if (((Session["User"] as string) != "") && ((Session["User"] as string) != null) && ((Session["User"] as string) != objSecurityObject.GetDefaultUser())) //altime alluser for viwers
                    {
                        userID = Session["User"].ToString();
                        UserID = Session["User"].ToString();
                        Session["ForWhenUserInLogged"] = "ForWhenUserInLogged";// not need any webservice or web method for logout just session  and conditions.
                        loginP.InnerText = "LOG OUT";

                    }
                    /*end for login user/admin */


                    //"eastuser";//(bool)Session["IsAdmin"];
                    // var provider = new MenuProvider();
                    // var UserID = Session["User"].ToString(); //"eastuser";//(string)HttpContext.Current.Session[SessionConstants.User];



                    DataTable menuTable = GetAllByUserGroupID(UserID);

                    // DataTable menuTable =repository.GetAllByUser(UserID); 

                    // nav.InnerHtml = GetHtml(menuTable, "ID", "ParentId", "Caption", "Location", "myMenu");

                    bs_example_navbar_collapse_2.InnerHtml = GetHtml(menuTable, "ID", "ParentId", "Caption", "Location", "collapse navbar-collapse");
                }
            }

            //<div class="collapse navbar-collapse" id="bs_example_navbar_collapse_2" runat="server">
            //                    <ul class="nav navbar-nav navbar-right">

            //                        <li><a href="Home.aspx" title="Home">HOME</a></li>


            //                        <li><a href="About.aspx" title="ABOUT">ABOUT</a></li>

            //                        <li class="dropdown"><a href="#" title="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">SERVICES</a>
            //                            <ul class="dropdown-menu">
            //                                <li><a href="SoftServicesWithSecondMaster.aspx">SOFT SERVICES</a></li>
            //                                <li><a href="HardServicesWithSecondMaster.aspx">HARD SERVICES</a></li>
            //                                <li><a href="PayPerUseWithSecondMaster.aspx">PAY PER USE</a></li>
            //                                <li><a href="RiskManagementWithSecondMaster.aspx">RISK MANAGEMENT</a></li>
            //                            </ul>
            //                        </li>

            //                        <li class="dropdown"><a href="#" title="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">CUSTOMER CORNER</a>
            //                            <ul class="dropdown-menu">
            //                                <li><a href="blog.html">USER ID</a></li>
            //                                <li><a href="blog-post.html">PROJECT NAME</a></li>
            //                                <li><a href="blog.html">OBSERVATIONS</a></li>
            //                                <li><a href="blog-post.html">FEEDBACK</a></li>
            //                            </ul>
            //                        </li>

            //                        <li class="dropdown"><a href="#" title="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" onclick=" setHeightOfContact();">CONTACT US</a>
            //                            <ul class="dropdown-menu">
            //                                <li><a href="blog.html">FAQ</a></li>
            //                                <li><a href="blog-post.html">E-MAIL</a></li>

            //                            </ul>
            //                        </li>


            //                        <li class="dropdown">
            //                            <a href="#" title="" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-search"></span></a>
            //                            <div class="dropdown-menu search-dropdown">
            //                                <form action="">
            //                                    <div class="input-group search-form">
            //                                        <input type="text" class="form-control" placeholder="Search">
            //                                        <span class="input-group-btn">
            //                                            <button class="btn btn-theme" type="button"><span class="fa fa-search"></span></button>
            //                                        </span>
            //                                    </div>
            //                                </form>
            //                            </div>
            //                        </li>
            //                    </ul>
            //                </div>

        }

        protected int getConnectionStatus()
        {
            int status = 0;
            string strConnString = ConfigurationManager.ConnectionStrings["HansaDBConnectionString"].ConnectionString;
            //string qurStrng = "Select * from  Traffic.OfficerServingTrafficZone OSTZ inner join Traffic.OfficerServingTrafficZoneDetail OSTZD ON OSTZ.ID = OSTZD.ParentID  inner join Traffic.TrafficZoneOnDutyDescription TZDD ON OSTZD.DescriptionID = TZDD.DescriptionID where OSTZ.ID = " + id + ""; ///Use stored procedurt
            string mess = "";
            SqlConnection con = new SqlConnection(strConnString);
            try
            {
                con.Open();
                //con.Close();
                if(con.State==ConnectionState.Open)
                {
                     status = 1;
                }
            }
            catch (SqlException ex)
            {
                mess = ex.Message.ToString();
                MessageHelper.ShowAlertMessage(ex.Message);
            }

            finally 
            {
                con.Close();
                this.Dispose();
                if (status == 0)
                {
                    MessageHelper.ShowAlertMessage(mess);
                }
            }

            return status;
        }

        public DataTable GetAll()
        {
            DataSet ds;
            SqlDataAdapter sqlDataAdapter;
            try
            {
                string strConnString = ConfigurationManager.ConnectionStrings["HansaDBConnectionString"].ConnectionString;

                //string qurStrng = "Select * from  Traffic.OfficerServingTrafficZone OSTZ inner join Traffic.OfficerServingTrafficZoneDetail OSTZD ON OSTZ.ID = OSTZD.ParentID  inner join Traffic.TrafficZoneOnDutyDescription TZDD ON OSTZD.DescriptionID = TZDD.DescriptionID where OSTZ.ID = " + id + ""; ///Use stored procedurt

                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                SqlCommand command = new SqlCommand();
                ds = new DataSet();
                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "[UserAccess].[MenuGet]";
                command.Parameters.Add("@FilterExpression", SqlDbType.VarChar).Value = string.Empty;
                command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;
                sqlDataAdapter = new SqlDataAdapter(command);
                sqlDataAdapter.Fill(ds);
                con.Close();
            }
            catch (Exception exp)
            {
                throw new Exception(exp.Message);
            }
            return ds.Tables[0];
        }
        public DataTable GetAllByUserGroupID(String userID)
        {
            SqlDataAdapter sqlDataAdapter;
            DataSet ds = new DataSet(); 
            try
            { 
                string strConnString = ConfigurationManager.ConnectionStrings["HansaDBConnectionString"].ConnectionString;
                //string qurStrng = "Select * from  Traffic.OfficerServingTrafficZone OSTZ inner join Traffic.OfficerServingTrafficZoneDetail OSTZD ON OSTZ.ID = OSTZD.ParentID  inner join Traffic.TrafficZoneOnDutyDescription TZDD ON OSTZD.DescriptionID = TZDD.DescriptionID where OSTZ.ID = " + id + ""; ///Use stored procedurt

                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                SqlCommand command = new SqlCommand();
               // ds = new DataSet();

                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "GetMenuByUserID";//StoredProcedureNames.MenuGet;
                command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = userID.ToString();
                //command.Parameters.Add("@Option", SqlDbType.Int).Value = DBConstants.DataLoadingOption.LoadWithSpecialFilter;
                sqlDataAdapter = new SqlDataAdapter(command);
                sqlDataAdapter.Fill(ds);
                con.Close();
                return ds.Tables[0]; 
            }
            catch (Exception exp)
            {
                this.Dispose();
                throw new Exception(exp.Message);
               // MessageHelper.ShowAlertMessage(exp.Message.ToString()); 
            } 
               // return ds.Tables[0]; 
        }



        public static string GetHtml(DataTable menuTable, string menuIdColumn, string parentIdColumn, string textColumn, string urlColumn, string cssClass)
        {
            // add css class to menu
            #region Fields
            string root = ConfigurationManager.AppSettings["urlRoot"];

            #endregion
            string html = @"<ul class='nav navbar-nav navbar-right' style='font-family: Roboto Slab;' >"; //@"<ul class='nav navbar-nav navbar-right' style='font-family: Roboto Slab;' >";

            // get all parent menu items
            DataRow[] menuParents = menuTable.Select("[" + parentIdColumn + "]='0'");

            int countParentInUl = 0;

            foreach (DataRow parent in menuParents)
            {

                //countParentInUl = countParentInUl + 1;

                //if (countParentInUl % 2 != 0)
                //{
                //    html += "<li class='act first'>";
                //}

                //else if (countParentInUl % 2 == 0)
                //{
                //    html += "<li class='r-li'>";
                //}

                //  html += "<li class='r-li'>";

                // get parent menu id
                string menuId = parent[menuIdColumn].ToString();

                // get available child menu items(if any)
                DataRow[] menuChilds = menuTable.Select("[" + parentIdColumn + "]='" + menuId + "'");
                var href = parent[urlColumn].ToString() == "" ? "#" : parent[urlColumn].ToString();
                // generate sub menu if child menu items exists
                if (menuChilds.Length > 0)
                {
                    html += "<li class='dropdown'>";

                    //  <li class="dropdown"><a href="#" title="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">SERVICES</a>
                    //                            <ul class="dropdown-menu">
                    //                                <li><a href="SoftServicesWithSecondMaster.aspx">SOFT SERVICES</a></li>

                    string addButtonOnClickForContactUS = parent[textColumn].ToString();
                    if (addButtonOnClickForContactUS == "CONTACT US")
                    {
                        html += @"<a href=""" + href + @""" data-toggle='dropdown' aria-haspopup='true' aria-expanded='true' onclick=' setHeightOfContact();' >" + parent[textColumn].ToString() + "</a>";
                        html = html + "<ul class='dropdown-menu'>";
                    }
                    else if (addButtonOnClickForContactUS == "ABOUT")
                    {
                        html += @"<a href=""" + href + @""" data-toggle='dropdown' aria-haspopup='true' aria-expanded='true' onclick=' setLinkOfAbout();' >" + parent[textColumn].ToString() + "</a>";
                        html = html + "<ul class='dropdown-menu'>";
                    }
                    else
                    {

                        html += @"<a href=""" + href + @""" data-toggle='dropdown' aria-haspopup='true' aria-expanded='true' >" + parent[textColumn].ToString() + "</a>";
                        html = html + "<ul class='dropdown-menu'>";
                    }
                    //html += @"<a href=""" + href + @""">" + parent[textColumn].ToString() + "</a>";

                    //html += "<ul>";

                    int countChildUnderParent = 0;

                    //foreach (DataRow child in menuChilds)
                    //{
                    //    href = child[urlColumn].ToString() == "" ? "#" : child[urlColumn].ToString();
                    //    html += "<li>";
                    //    html += @"<a href=""" + root + href + @""">" + child[textColumn].ToString() + "</a>";
                    //    html += "</li>";
                    //}



                    foreach (DataRow child in menuChilds)
                    {
                        
                        if (child[urlColumn].ToString() == "OBJECTIVE")
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : "#";
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""" onclick=' setObjective();'>" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }

                        else if (child[urlColumn].ToString() == "GOALS")
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : "#";
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""" onclick=' setGoals();'>" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }

                        else if (child[urlColumn].ToString() == "VISION")
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : "#";
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""" onclick=' setVision();'>" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }

                        else if (child[urlColumn].ToString() == "MISSION")
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : "#";
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""" onclick=' setMission();'>" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }

                        else if (child[urlColumn].ToString() == "CSR")
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : "#";
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""" onclick=' setCSR();'>" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }

                        else
                        {
                            href = child[urlColumn].ToString() == "" ? "#" : child[urlColumn].ToString();
                            html += "<li>";
                            html += @"<a href=""" + root + href + @""">" + child[textColumn].ToString() + "</a>";
                            html += "</li>";
                        }
                    }
                    html += "</ul>";
                }
                // render parent menu item
                else if (menuChilds.Length <= 0)
                {
                    // <li><a href="Home.aspx" title="Home">HOME</a></li>

                    string addButtonOnClickForContactUS = parent[textColumn].ToString();
                    if (addButtonOnClickForContactUS == "CONTACT US")
                    {
                       // html += @"<a href=""" + href + @""" data-toggle='dropdown' aria-haspopup='true' aria-expanded='true' onclick=' setHeightOfContact();' >" + parent[textColumn].ToString() + "</a>";
                       // html = html + "<ul class='dropdown-menu'>";
                        html += "<li>";
                        html += @"<a href=""" + href + @""" onclick=' setHeightOfContact();' >" + parent[textColumn].ToString() + "</a>";
                    }
                    else if (addButtonOnClickForContactUS == "CAREER")
                    {
                        // html += @"<a href=""" + href + @""" data-toggle='dropdown' aria-haspopup='true' aria-expanded='true' onclick=' setHeightOfContact();' >" + parent[textColumn].ToString() + "</a>";
                        // html = html + "<ul class='dropdown-menu'>";
                        html += "<li>";
                        html += @"<a href=""" + href + @""" onclick=' setOfCareerPage();' >" + parent[textColumn].ToString() + "</a>";
                    }
                    else if (addButtonOnClickForContactUS != "CONTACT US" && addButtonOnClickForContactUS != "SECURITY") // only use for SECURITY menu thats not showing other users
                    {
                        html += "<li>";
                        html += @"<a href=""" + href + @""">" + parent[textColumn].ToString() + "</a>";
                    }
                }

                html += "</li>";
            }
            

            //........start for exceptional of search..............//

            //html += "<li class='dropdown'><a href='#' title='' class='dropdown-toggle' data-toggle='dropdown'><span class='fa fa-search'></span></a>";
            //html += " <div class='dropdown-menu search-dropdown'><form action=''><div class='input-group search-form'><input type='text' class='form-control' placeholder='Search'> ";
            //html += " <span class='input-group-btn'><button class='btn btn-theme' type='button'><span class='fa fa-search'></span></button></span></div></form></div></li>";


            //..............End for exceptional search...........................//

            html += "</ul>";
            return html;
        }


        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
    }
}



