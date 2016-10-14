

using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class UserRoleAssaign : System.Web.UI.Page
    {
        //string mode = ""; 
        //private UserProvider providerUser = new UserProvider();
        //private GroupUserProvider provider = new GroupUserProvider();
        SecurityObject objSecurityObject = new SecurityObject();
        GroupUserProvider provider = new GroupUserProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = Session["User"] as string;
            string pageName = "UserRoleAssaign";
            bool pageAthntctd = objSecurityObject.InduviduaPageLoadathentication(pageName, userID);
            if (!IsPostBack && (pageAthntctd == true))
            {
                LoadGrids();
                LoadGridsView2();
            }
            else if (pageAthntctd == false)
            {
                Response.Redirect("~/Home.aspx", false);
            }

        }
        #region All Methods
        private void LoadGrids()
        {
            try
            {
                ////User
                //DataSet dsUser = objSecurityObject.GetAll();
                //gvUser.DataSource = dsUser;
                //gvUser.DataBind();

                ////Role
                //DataTable dsPageControls = objSecurityObject.GetAllRole(); 
                //gvRole.DataSource = dsPageControls;
                //gvRole.DataBind();
                List<User> lstUser = new List<User>();
                List<Role> lstRole = new List<Role>();
                lstUser = objSecurityObject.GetAllUserFGrid();
                lstRole = objSecurityObject.GetAllRoleFGrid();
                gvUser.DataSource = lstUser;
                gvUser.DataBind();
                gvRole.DataSource = lstRole;
                gvRole.DataBind();

            }
            catch (Exception ex)
            {
                //throw (ex);
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
        }

        protected void LoadGridsView2()
        {
            List<Group> lstGroup = new List<Group>();
            try
            {
                lstGroup = objSecurityObject.GetGroupAllForPopup();
                if (lstGroup.Count > 0)
                {
                    GridView2.DataSource = null;
                    GridView2.DataBind();
                    GridView2.DataSource = lstGroup;
                    GridView2.DataBind();
                    lblPopUpData.Text = "";
                }
                else if (lstGroup.Count <= 0)
                {
                    lblPopUpData.Text = "No Data Found.";

                }
            }
            catch(Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
            
        }
        private GroupUserProvider GenerateGroupUserProvider()
        {
            GroupUserProvider gUPObj = new GroupUserProvider();
            if (hfUserCode.Value!="")
            {
                gUPObj.GroupCode = hfUserCode.Value;
            }
            gUPObj.GroupName = txtGroupName.Text;
            gUPObj.Description = txtDescription.Text;
            return gUPObj;
        }
        private List<GroupUserProvider> GenerateUserList()
        {
            List<GroupUserProvider> userList = new List<GroupUserProvider>();
            foreach (GridViewRow row in gvUser.Rows)
            {
                CheckBox chkSelected = (CheckBox)row.FindControl("ChkUser");
                if (chkSelected.Checked)
                {
                    GroupUserProvider user = new GroupUserProvider();
                    Label userID = (Label)row.FindControl("lblUserID");
                    user.UserID = userID.Text;
                    userList.Add(user);
                }
            }
            return userList;
        }
        private List<GroupUserProvider> GenerateRoleList()
        {
            List<GroupUserProvider> RoleList = new List<GroupUserProvider>();
            foreach (GridViewRow row in gvRole.Rows)
            {
                CheckBox chkSelected = (CheckBox)row.FindControl("ChkRole");
                if (chkSelected.Checked)
                {
                    GroupUserProvider role = new GroupUserProvider();
                    Label roleCode = (Label)row.FindControl("lblRoleCode");
                    role.SecurityRoleCode = roleCode.Text;
                    RoleList.Add(role);
                }
            }
            return RoleList;
        }
        private void Clear()
        {
            try
            {
                hfUserCode.Value = String.Empty;
                txtGroupName.Text = String.Empty;
                txtDescription.Text = String.Empty;
                btnSave.Text = "Save";
                gvUser.DataSource = null;
                gvUser.DataBind();
                gvRole.DataSource = null;
                gvRole.DataBind();
                GridView2.DataSource = null;
                GridView2.DataBind();
                LoadGrids();
                LoadGridsView2();
            }
            catch (Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
                //throw (ex);
            }
        }
        #endregion
        #region Button Event
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string mode = "";
            if (btnSave.Text == "Save")
            {
                 mode = "Save";
               // CheckUserAuthentication(mode);
            }
            else
            {
                mode = "Update";
               // CheckUserAuthentication(mode);
            }
            bool msg = false;
            string message = string.Empty;
            try
            {
                GroupUserProvider groupUserProvider = GenerateGroupUserProvider();
                List<GroupUserProvider> UserList = GenerateUserList();
                List<GroupUserProvider> RoleList = GenerateRoleList();
                msg = objSecurityObject.SaveUpdateDeleteForUserRoleassaign(groupUserProvider, UserList, RoleList, btnSave.Text); 
            }
            catch (Exception ex)
            {
               // message = ex.Message;
               // MessageHelper.ShowAlertMessage(message);
                if (mode == "Save")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);
                }
                else if (mode == "Update")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
                }
            }
            if (msg)
            {
                if (mode == "Save")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.Saved);
                }
                else if(mode=="Update")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.Updated);
                }
                 
                Clear();
            }

            else
            {
                //MessageHelper.ShowAlertMessage(message);
                if (mode == "Save")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);
                }
                else if (mode == "Update")
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
                }
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                Clear();
            }
            catch (Exception ex)
            {
               // throw (ex);
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
                    string groupCode = row.Cells[0].Text;
                    //hfUserCode.Value = Request["__EVENTARGUMENT"];
                    hfUserCode.Value = row.Cells[0].Text;
                    txtGroupName.Text = row.Cells[1].Text;
                    txtDescription.Text = row.Cells[2].Text;
                    LoadGrids();

                    //DataTable dtUser = provider.GetAllByGroupCode(groupCode);
                    //foreach (GridViewRow rowGVuser in gvUser.Rows)
                    //{
                    //    Label UserID = (Label)rowGVuser.FindControl("lblUserID");
                    //    foreach (DataRow aRowobj in dtUser.Rows.Cast<DataRow>().Where(aRow => aRow[0].ToString() == UserID.Text))
                    //    {
                    //        CheckBox chkUser = (CheckBox)rowGVuser.FindControl("chkUser");
                    //        chkUser.Checked = true;
                    //    }
                    //}
                    //DataTable dtRole = provider.GetAllRoleByGroupCode(groupCode);
                    //foreach (GridViewRow rowGVrole in gvRole.Rows)
                    //{
                    //    Label RoleCode = (Label)rowGVrole.FindControl("lblRoleCode");
                    //    foreach (DataRow aRowobj in dtRole.Rows.Cast<DataRow>().Where(aRow => aRow[1].ToString() == RoleCode.Text))
                    //    {
                    //        CheckBox chkRole = (CheckBox)rowGVrole.FindControl("ChkRole");
                    //        chkRole.Checked = true;
                    //    }
                    //}
                    //btnSave.Text = "Update";

                    List<GroupUsers> lstGruopUsers = new List<GroupUsers>();
                    List<GroupRole> lstGroupRole = new List<GroupRole>();
                    lstGruopUsers = objSecurityObject.GetAllGroupUsersByGroupCode(groupCode);
                    lstGroupRole = objSecurityObject.GetAllGroupRoleByGroupCode(groupCode);
                    foreach (GridViewRow rowGVuser in gvUser.Rows)
                    {
                        Label UserID = (Label)rowGVuser.FindControl("lblUserID");
                        foreach (GroupUsers gu in lstGruopUsers.Where(lgu => lgu.UserID == UserID.Text))
                        {
                            CheckBox chkUser = (CheckBox)rowGVuser.FindControl("chkUser");
                            chkUser.Checked = true;
                        }
                    }

                    foreach (GridViewRow rowGVrole in gvRole.Rows)
                    {
                        Label RoleCode = (Label)rowGVrole.FindControl("lblRoleCode");
                        foreach (GroupRole gr in lstGroupRole.Where(lgr => lgr.RoleCode == RoleCode.Text))
                        {
                            CheckBox chkRole = (CheckBox)rowGVrole.FindControl("ChkRole");
                            chkRole.Checked = true;
                        }
                    }
                    btnSave.Text = "Update";
                }

                catch(Exception ex)
                {
                    MessageHelper.ShowAlertMessage(ex.Message.ToString());
                }
            } 
        }


        #endregion 

        [WebMethod(EnableSession = true)] 
        protected static void findRoleDetails(string rt)
        { 
            GridView applications = new GridView(); 
            Page masspage = HttpContext.Current.CurrentHandler as Page;
            foreach (Control GridView2 in masspage.Controls)
            {
                if (GridView2 is GridView)
                {
                    applications = GridView2 as GridView;
                }
            } 
            // applications.DataSource = dt;
            // applications.DataBind(); 
            SecurityObject staticSecurityObject = new SecurityObject();
            List<Role> lstRole = new List<Role>();
            lstRole = staticSecurityObject.findRole();
            applications.DataSource = null;
            applications.DataBind();
            applications.DataSource = lstRole;
            applications.DataBind(); 
            //try
            //{
            //    GridView2.DataSource = null;
            //    GridView2.DataBind();
            //    lblNoDataFound.Text = "";
            //    string strConnString = ConfigurationManager.ConnectionStrings["dmpConnectionString"].ConnectionString;//@"Data Source=(local); database=TechnoDrugsDevelopmentVersion; user id=sa; password=1234;Integrated Security=true";

            //    string qurStrng = "SELECT * FROM [UserAccess].[Role]";

            //    SqlConnection con1 = new SqlConnection(strConnString);
            //    con1.Open();
            //    SqlCommand cmd = new SqlCommand(qurStrng, con1);
            //    DataTable dt = new DataTable();
            //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //    sda.Fill(dt);
            //    GridView2.DataSource = dt;
            //    GridView2.DataBind();

            //    popup1.Show();
            //}

            //catch (Exception ex)
            //{
            //    MessageHelper.ShowAlertMessage(ex.ToString());
            //}
        } 
    }
}