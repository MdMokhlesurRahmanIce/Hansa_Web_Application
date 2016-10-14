
using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
 

namespace Hansa.Web
{
    public partial class RoleSetup : System.Web.UI.Page  
    {
        SecurityObject objSecurityObject = new SecurityObject();
        // RoleDetailGetSP aRoleDetailGetSP;
        //string mode = "";
        //public RoleSetup()
        //{
        //    RequiresAuthorization = true;
        //}
        //private PageControlsProvider aProviders;
        private RoleDetailGetSP aRoleDetailGetSP;
        //private DataTable aTable;
        private DataTable aTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            //aProviders = new PageControlsProvider();
            string userID = Session["User"] as string;
            string pageName = "RoleSetup";
            bool pageAthntctd=objSecurityObject.InduviduaPageLoadathentication(pageName, userID);
            if (!IsPostBack && (pageAthntctd==true)) 
            {
                //PopulateddlMenuType();
                //GetAllPageControls();
                PopulateddlMenuType();
                GetAllPageControls();
                LoadGridView2();
            }
            else if ( IsPostBack && (pageAthntctd == true))
            {
                 

               // PopulateddlMenuType();
               // GetAllPageControls();
               // LoadGridView2();
            }
            else if (pageAthntctd == false)
            {
                Response.Redirect("~/Home.aspx", false);
            }

            //// start  before changes for Back pages Validate  in page load
            ////aProviders = new PageControlsProvider();
            //if (IsPostBack)
            //{
            //    //PopulateddlMenuType();
            //    //GetAllPageControls();
            //}
            //else
            //{
            //    //  PopulateddlMenuType();
            //    //    GridView1.DataSource = null;
            //    //    Session["pageControlsTable"] = string.Empty;
            //    //    aTable = aProviders.GetAllPageControls();
            //    //    GridView1.DataSource = aTable;
            //    //    GridView1.DataBind();
            //    //    Session["pageControlsTable"] = aTable;

            //    PopulateddlMenuType();
            //    GetAllPageControls();
            //    LoadGridView2();

            //}
            //// end 

        } 

        protected void LoadGridView2()
        {
           // SecurityObject staticSecurityObject = new SecurityObject();
            List<Role> lstRole = new List<Role>();
            lstRole = objSecurityObject.findRole();
            GridView2.DataSource = null;
            GridView2.DataBind();
            GridView2.DataSource = lstRole;
            GridView2.DataBind(); 
        }

        //private RoleProvider GenerateRoleMaster()
        //{
        //    RoleProvider provider = new RoleProvider();
        //    try
        //    {
        //        provider.RoleCode = hfRoleCode.Value.IsNullOrEmpty() ? 0 : hfRoleCode.Value.ToInt();
        //        provider.RoleName = roleNameTextBox.Text.ToString();
        //        provider.RoleDescription = descriptionTextBox.Text.ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw (ex);
        //    }
        //    return provider;
        //}
        //private List<PageControlsProvider> PageControlsProviders()
        //{
        //    List<PageControlsProvider> roleDetailList = new List<PageControlsProvider>();
        //    //bool isSelected = false;
        //    try
        //    {
        //        #region by pre dev
        //        var alist = new List<PageControlsProvider>();
        //        GetwithCaption();
        //        DataTable aTable = (DataTable)(Session["pageControlsTable"]);
        //        foreach (DataRow aRow in aTable.Rows)
        //        {
        //            aProviders = new PageControlsProvider
        //            {
        //                CanSelect = Convert.ToBoolean(aRow[3].ToString()),
        //                CanInsert = Convert.ToBoolean(aRow[4].ToString()),
        //                CanUpdate = Convert.ToBoolean(aRow[5].ToString()),
        //                CanDelete = Convert.ToBoolean(aRow[6].ToString()),
        //                CanSend = Convert.ToBoolean(aRow[7].ToString()),
        //                CanCheck = Convert.ToBoolean(aRow[8].ToString()),
        //                CanApprove = Convert.ToBoolean(aRow[9].ToString()),
        //                CanPreview = Convert.ToBoolean(aRow[10].ToString()),
        //                //AllChk = Convert.ToBoolean(aRow[8].ToString()),
        //                MenuId = aRow[0].ToString()
        //            };
        //            alist.Add(aProviders);
        //        }
        //        return alist;
        //        #endregion
        //    }
        //    catch
        //    {
        //        throw;
        //    }
        //    //return roleDetailList;
        //}

        private Role GenerateRoleMaster()
        {
            Role provider = new Role();
            try
            {
                provider.RoleCode = hfRoleCode.Value=="" ? 0 : Convert.ToInt16(hfRoleCode.Value);
                provider.RoleName = roleNameTextBox.Text.ToString();
                provider.RoleDescription = descriptionTextBox.Text.ToString();
            }
            catch (Exception ex)
            {
                //throw (ex);
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
            return provider;
        }
        private List<RoleDetailGetSP> PageControlsProviders()
        {
            List<RoleDetailGetSP> roleDetailList = new List<RoleDetailGetSP>();
            //bool isSelected = false;
            try
            {
                #region by pre dev
                var alist = new List<RoleDetailGetSP>();
                GetwithCaption();
                DataTable aTable = (DataTable)(Session["pageControlsTable"]);
                foreach (DataRow aRow in aTable.Rows)
                {
                    aRoleDetailGetSP = new RoleDetailGetSP
                    {
                        CanSelect = Convert.ToBoolean(aRow[3].ToString()),
                        CanInsert = Convert.ToBoolean(aRow[4].ToString()),
                        CanUpdate = Convert.ToBoolean(aRow[5].ToString()),
                        CanDelete = Convert.ToBoolean(aRow[6].ToString()),
                        CanSend = Convert.ToBoolean(aRow[7].ToString()),
                        CanCheck = Convert.ToBoolean(aRow[8].ToString()),
                        CanApprove = Convert.ToBoolean(aRow[9].ToString()),
                        CanPreview = Convert.ToBoolean(aRow[10].ToString()),
                        //AllChk = Convert.ToBoolean(aRow[8].ToString()),
                        MenuID =Convert.ToInt16(aRow[0])
                    };
                    alist.Add(aRoleDetailGetSP);
                }
                return alist;
                #endregion
            }
            catch (Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
                //throw;
            }
            return roleDetailList;
        }

        private void PopulateddlMenuType()
        {
            List<Repository.Menu> lstMenu = new List<Repository.Menu>();
            try
            {
                lstMenu = objSecurityObject.GetAllMenuType();
                ddlMenuType.DataSource = lstMenu;
                ddlMenuType.DataTextField = "Caption";
                ddlMenuType.DataValueField = "ID";
                ddlMenuType.DataBind();
                ddlMenuType.Items.Insert(0, new ListItem("---Select---", "0"));
                ddlMenuType.SelectedIndex = 0;
            }

            catch(Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            } 
        }

        private void GetAllPageControls()
        {

            List<RoleDetailGetSP> lstRoleDetailGetSP = new List<RoleDetailGetSP>();
            DataTable dt1 = new DataTable();
            try
            {
                // lstRoleDetailGetSP = objSecurityObject.RoleDetailGetSPForGrid();
                dt1 = objSecurityObject.RoleDetailGetSPForGridWithDataTable(); //lstRoleDetailGetSP.CopyToDataTable();
                // dt1.Rows.Add(lstRoleDetailGetSP); 

                GridView1.DataSource = null;
                GridView1.DataBind();
                Session["pageControlsTable"] = string.Empty;
                aTable = dt1;//aProviders.GetAllPageControls(); 
                GridView1.DataSource = aTable;
                GridView1.DataBind();
                Session["pageControlsTable"] = aTable;
            }
            catch(Exception ex)
            {

                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }

        } 
        protected void Select(object sender, EventArgs e)
        {
            using (GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent)
            {
                try
                {
                    string id = row.Cells[0].Text;
                    string roleCode = row.Cells[0].Text;
                    //hfUserCode.Value = Request["__EVENTARGUMENT"];
                    hfRoleCode.Value = row.Cells[0].Text;
                    roleNameTextBox.Text = row.Cells[1].Text;
                    descriptionTextBox.Text = row.Cells[2].Text;

                    if (roleCode != null)
                    {
                        // aProviders = new PageControlsProvider();
                        aRoleDetailGetSP = new RoleDetailGetSP();
                        GridView1.DataSource = null;

                        //  List<RoleDetailGetSP> lstRoleDetailGetSP = new List<RoleDetailGetSP>();
                        //  lstRoleDetailGetSP = objSecurityObject.RoleDetailGetSPForGridWithroleCode(roleCode);


                        // aTable = aRoleDetailGetSP.GetAllbyRoleCode(roleCode);
                        aTable = objSecurityObject.RoleDetailGetSPForGridWithroleCodeForDT(roleCode);
                        if (aTable.Rows.Count > 0)
                        {
                            GridView1.DataSource = aTable;
                            GridView1.DataBind();
                            Session["pageControlsTable"] = aTable;
                            btnSave.Text = "Update";
                        }
                        else
                        {
                            // this.AlertWarning(lblMsg, MessageConstants.DataNotFind);
                            // MessageHelper.ShowAlertMessage(MessageConstants.DataNotFind);
                            GridView1.DataSource = null;
                            GridView1.DataBind();
                            btnSave.Text = "Submit";
                        }
                        ddlMenuType.SelectedValue = "0";
                    }
                }

                catch(Exception ex)
                {
                    MessageHelper.ShowAlertMessage(ex.Message.ToString());
                }

            }
        }



        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (IsPostBack && roleNameTextBox.Text != string.Empty)
                {
                    if (e.Row.RowType == DataControlRowType.DataRow)
                    {
                        //Find the check boxes and assign the values from the data source
                        ((CheckBox)e.Row.FindControl("chkSelect")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[3]);
                        ((CheckBox)e.Row.FindControl("chkAdd")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[4]);
                        ((CheckBox)e.Row.FindControl("chkEdit")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[5]);
                        ((CheckBox)e.Row.FindControl("chkDelate")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[6]);
                        ((CheckBox)e.Row.FindControl("chkSend")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[7]);
                        ((CheckBox)e.Row.FindControl("chkCheck")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[8]);
                        ((CheckBox)e.Row.FindControl("chkApprove")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[9]);
                        ((CheckBox)e.Row.FindControl("chkPreview")).Checked = Convert.ToBoolean(((DataRowView)e.Row.DataItem)[10]);
                        //((CheckBox)e.Row.FindControl("chkAll")).Checked =
                        //    Convert.ToBoolean(((DataRowView)e.Row.DataItem)[8]);

                        //Find the checkboxes and assign the javascript function which should
                        //be called when the user clicks the checkboxes.
                        ((CheckBox)e.Row.FindControl("chkSelect")).Attributes.Add("onclick", "checkBoxClicked('" +
                                                                                   e.Row.FindControl("chkSelect").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkAdd").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkEdit")
                                                                                       .ClientID + "','" +
                                                                                   e.Row.FindControl("chkDelate").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkPreview").ClientID + "','" +
                            //e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                   "'SELECT')");
                        //    .ClientID + "','" +
                        //e.Row.FindControl("chkAll").
                        //    ClientID + "'," + "'SELECT')");
                        ((CheckBox)e.Row.FindControl("chkAdd")).Attributes.Add("onclick",
                                                                                "checkBoxClicked('" +
                                                                                e.Row.FindControl("chkSelect").
                                                                                    ClientID + "','" +
                                                                                e.Row.FindControl("chkAdd").
                                                                                    ClientID + "','" +
                                                                                e.Row.FindControl("chkEdit").
                                                                                    ClientID + "','" +
                                                                                e.Row.FindControl("chkDelate").
                                                                                    ClientID + "','" +
                                                                                      e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                e.Row.FindControl("chkPreview")
                                                                                    .ClientID + "','" +
                            //e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                "'ADD')");
                        //    ClientID + "','" +
                        //e.Row.FindControl("chkAll").
                        //    ClientID + "'," + "'ADD')");
                        ((CheckBox)e.Row.FindControl("chkEdit")).Attributes.Add("onclick",
                                                                                 "checkBoxClicked('" +
                                                                                 e.Row.FindControl("chkSelect")
                                                                                     .ClientID + "','" +
                                                                                 e.Row.FindControl("chkAdd").
                                                                                     ClientID + "','" +
                                                                                 e.Row.FindControl("chkEdit").
                                                                                     ClientID + "','" +
                                                                                 e.Row.FindControl("chkDelate")
                                                                                     .ClientID + "','" +
                                                                                       e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                 e.Row.FindControl("chkPreview")
                                                                                     .ClientID + "','" +
                            //   e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                 "'EDIT')");
                        //    ClientID + "','" +
                        //e.Row.FindControl("chkAll").
                        //    ClientID + "'," + "'EDIT')");
                        ((CheckBox)e.Row.FindControl("chkDelate")).Attributes.Add("onclick",
                                                                                   "checkBoxClicked('" +
                                                                                   e.Row.FindControl("chkSelect").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkAdd").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkEdit")
                                                                                       .ClientID + "','" +
                                                                                   e.Row.FindControl("chkDelate").
                                                                                       ClientID + "','" +
                                                                                         e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkPreview").
                                                                                       ClientID + "','" +
                            // e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                   "'DELATE')");


                        ((CheckBox)e.Row.FindControl("chkSend")).Attributes.Add("onclick", "checkBoxClicked('" +
                                                                                   e.Row.FindControl("chkSelect").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkAdd").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkEdit")
                                                                                       .ClientID + "','" +
                                                                                   e.Row.FindControl("chkDelate").
                                                                                       ClientID + "','" +
                                                                                         e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkPreview").
                                                                                       ClientID + "','" +
                            //   e.Row.FindControl("chkReceive").ClientID + "'," + 
                                                                                   "'SEND')");

                        ((CheckBox)e.Row.FindControl("chkCheck")).Attributes.Add("onclick", "checkBoxClicked('" +
                                                                                   e.Row.FindControl("chkSelect").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkAdd").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkEdit")
                                                                                       .ClientID + "','" +
                                                                                   e.Row.FindControl("chkDelate").
                                                                                       ClientID + "','" +
                                                                                         e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkPreview").
                                                                                       ClientID + "','" +
                            // e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                   "'CHECK')");

                        ((CheckBox)e.Row.FindControl("chkApprove")).Attributes.Add("onclick", "checkBoxClicked('" +
                                                                                   e.Row.FindControl("chkSelect").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkAdd").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkEdit")
                                                                                       .ClientID + "','" +
                                                                                   e.Row.FindControl("chkDelate").
                                                                                       ClientID + "','" +
                                                                                         e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                   e.Row.FindControl("chkPreview").
                                                                                       ClientID + "','" +
                            //e.Row.FindControl("chkReceive").ClientID + "'," + 
                                                                                   "'APPROVE')");
                        //    .ClientID + "','" +
                        //e.Row.FindControl("chkAll").
                        //    ClientID + "'," + "'DELATE')");
                        ((CheckBox)e.Row.FindControl("chkPreview")).Attributes.Add("onclick",
                                                                                    "checkBoxClicked('" +
                                                                                    e.Row.FindControl("chkSelect").
                                                                                        ClientID + "','" +
                                                                                    e.Row.FindControl("chkAdd")
                                                                                        .
                                                                                        ClientID + "','" +
                                                                                    e.Row.FindControl("chkEdit")
                                                                                        .
                                                                                        ClientID + "','" +
                                                                                    e.Row.FindControl("chkDelate").
                                                                                        ClientID + "','" +
                                                                                          e.Row.FindControl("chkSend").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkCheck").
                                                                                       ClientID + "','" +
                                                                                        e.Row.FindControl("chkApprove").
                                                                                       ClientID + "','" +
                                                                                    e.Row.FindControl("chkPreview").
                                                                                        ClientID + "','" +
                            //e.Row.FindControl("chkReceive").ClientID + "'," +
                                                                                        "'PREVIEW')");
                      
                    }
                }
            }
            catch (Exception ex)
            {
                 MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }

        }

        protected void ddlMenuType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            // RoleProvider provider = new RoleProvider();
            try
            {
                GetwithCaption();
                DataTable dt = new DataTable();
                dt = (DataTable)HttpContext.Current.Session["pageControlsTable"];
                DataTable filterSetDT = new DataTable();
                DataTable exFiltersetDT = new DataTable();

                string filterExpression = "ParentID=" + ddlMenuType.SelectedValue;
                DataRow[] dr;
                dr = dt.Select(filterExpression);
                if (dr.Length == 0)
                {
                    return;
                }
                filterSetDT = dr.CopyToDataTable();

                string filterExpression2 = "ParentID<>" + ddlMenuType.SelectedValue;
                dr = dt.Select(filterExpression2);
                exFiltersetDT = dr.CopyToDataTable();
                filterSetDT.Merge(exFiltersetDT);

                dt.Clear();
                dt = filterSetDT;

                //GridView1.DataSource = null;  
                //GridView1.DataBind();

                GridView1.DataSource = dt;
                GridView1.DataBind();
                Session["pageControlsTable"] = String.Empty;
                Session["pageControlsTable"] = dt;
            }
            catch (SqlException ex)
            {
                //throw ex;
                 MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
            catch (Exception ex)
            {
               // throw ex;
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
        }

        protected void chkEditAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkEditAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkEdit");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkInsertAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkInsertAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkAdd");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkSendAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkSendAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkSend");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkCheckAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkCheckAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkCheck");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkApproveAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkApproveAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkApprove");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkSelectAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkSelect");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkDelateAll_CheckedChanged(object sender, EventArgs e)
        {
            var chkEdit = GridView1.HeaderRow.FindControl("chkDelateAll") as CheckBox;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chkSelect = (CheckBox)row.FindControl("chkDelate");
                chkSelect.Checked = chkEdit.Checked;
                GetwithCaption();
            }
        }
        protected void chkPreviewAll_CheckedChanged(object sender, EventArgs e)
        {
            //var chkEdit = GridView1.HeaderRow.FindControl("chkPreviewAll") as CheckBox;
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    var chkSelect = (CheckBox)row.FindControl("chkPreview");
            //    chkSelect.Checked = chkEdit.Checked;
            //    GetwithCaption();
            //}
        }
        protected void newButton_Click(object sender, EventArgs e)
        {
            Clear();
            //HttpContext.Current.Session["pageControlsTable"] = string.Empty;
            //HttpContext.Current.Session["pageControlsTable"] = aProviders.GetAllPageControls();
            //GridView1.DataSource = HttpContext.Current.Session["pageControlsTable"];
            //GridView1.DataBind();
        }
        protected void Clear()
        {
            PopulateddlMenuType();
            GetAllPageControls();
            LoadGridView2();

            // this.AlertNone(lblMsg);
            ddlMenuType.SelectedValue = "0";
           // GridView1.DataSource = null;
           // GridView1.DataBind();
            roleNameTextBox.Text = string.Empty;
            descriptionTextBox.Text = string.Empty;
            btnSave.Text = "Submit";
            lblMsg.InnerText = string.Empty;
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GetwithCaption();
            GridView1.PageIndex = e.NewPageIndex;
            DataTable dt = (DataTable)HttpContext.Current.Session["pageControlsTable"];
            ////GridView1.DataSource = null;
            ////GridView1.DataBind();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void GetwithCaption()
        {
            try
            {
                aTable = new DataTable();
                DataTable aTableObj = (DataTable)(HttpContext.Current.Session["pageControlsTable"]);
                foreach (GridViewRow aRow in GridView1.Rows)
                {
                    // aProviders = new PageControlsProvider
                    aRoleDetailGetSP = new RoleDetailGetSP
                    {
                        CanSelect = ((CheckBox)aRow.FindControl("chkSelect")).Checked,
                        CanInsert = ((CheckBox)aRow.FindControl("chkAdd")).Checked,
                        CanUpdate = ((CheckBox)aRow.FindControl("chkEdit")).Checked,
                        CanDelete = ((CheckBox)aRow.FindControl("chkDelate")).Checked,
                        CanSend = ((CheckBox)aRow.FindControl("chkSend")).Checked,
                        CanCheck = ((CheckBox)aRow.FindControl("chkCheck")).Checked,
                        CanApprove = ((CheckBox)aRow.FindControl("chkApprove")).Checked,
                        CanPreview = ((CheckBox)aRow.FindControl("chkPreview")).Checked,
                        MenuID = Convert.ToInt16(aRow.Cells[0].Text)
                    };
                    // foreach (DataRow aRowobj in aTableObj.Rows.Cast<DataRow>().Where(aRowobj => aRowobj[0].ToString() == aRoleDetailGetSP.MenuID))
                    foreach (DataRow aRowobj in aTableObj.Rows.Cast<DataRow>().Where(aRowobj => Convert.ToInt16(aRowobj[0]) == aRoleDetailGetSP.MenuID))
                    {
                        aRowobj[3] = aRoleDetailGetSP.CanSelect;
                        aRowobj[4] = aRoleDetailGetSP.CanInsert;
                        aRowobj[5] = aRoleDetailGetSP.CanUpdate;
                        aRowobj[6] = aRoleDetailGetSP.CanDelete;
                        aRowobj[7] = aRoleDetailGetSP.CanSend;
                        aRowobj[8] = aRoleDetailGetSP.CanCheck;
                        aRowobj[9] = aRoleDetailGetSP.CanApprove;
                        aRowobj[10] = aRoleDetailGetSP.CanPreview;
                    }
                }
                HttpContext.Current.Session["pageControlsTable"] = aTableObj;
            }
            catch(Exception ex)
            {
                //throw;
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string text = btnSave.Text;

            try
            {
                Role roleMasterList = GenerateRoleMaster();
                List<RoleDetailGetSP> roleDetailsList = PageControlsProviders();

                //aProviders = new PageControlsProvider();
                
                string roleName = roleNameTextBox.Text;
                //var aList = PageControlsProviders();

                if (roleName != "" && text == "Submit")
                {
                    if (roleDetailsList.Count == 0)
                    {
                        throw new Exception("No item is selected.");
                    }

                    objSecurityObject.Save(roleMasterList,roleDetailsList);
                    //aProviders.SavePageControls(aList, text);
                    Clear();
                    //this.AlertSuccess(lblMsg, MessageConstants.Saved);
                    MessageHelper.ShowAlertMessage(MessageConstants.Saved);
                }
                else if (roleName != "" && text == "Update")
                {
                    objSecurityObject.Update(roleMasterList, roleDetailsList);
                    //aProviders.UpdatePageControls(aList, text);
                    Clear();
                    // this.AlertSuccess(lblMsg, MessageConstants.Updated);
                     MessageHelper.ShowAlertMessage(MessageConstants.Updated);
                }
                else
                {
                    // this.AlertWarning(lblMsg, MessageConstants.SavedWarning);
                    if(text=="Save")
                    {
                        MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);

                    }
                    else if (text == "Update")
                    {
                        MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
                    }
                }
            }
            catch (SqlException ex)
            {
                 MessageHelper.ShowAlertMessage(ex.Message.ToString());
               // throw ex;
            }
            catch (Exception ex)
            {
                if (text == "Save")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);

                }
                else if (text == "Update")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
                }
               // throw ex;
               // MessageHelper.ShowAlertMessage(ex.Message);
            }
        } 
    }
}