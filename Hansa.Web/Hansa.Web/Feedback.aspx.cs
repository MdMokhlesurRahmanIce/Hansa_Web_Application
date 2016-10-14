
using AjaxControlToolkit;
using DomainClass;
using Hansa.Web.Helper;
using Hansa.Web.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class Feedback : System.Web.UI.Page 
    {
       // HansadbEntities context = new HansadbEntities();
       // HansaDBEntities context = new HansaDBEntities();
         
        SecurityObject objSecurityObject = new SecurityObject();
        UserRatings objUserRating = new UserRatings();
        GroupUserProvider provider = new GroupUserProvider();
        private RoleDetailGetSP aRoleDetailGetSP = new RoleDetailGetSP();

        string mode = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            string userIDforPageAt = Session["User"] as string;
            string pageName = "Feedback";
            bool pageAthntctd = objSecurityObject.InduviduaPageLoadathentication(pageName, userIDforPageAt);
            //chck for is it render when activation code from email if not  then allow the InduviduaPageLoadathentication
            string activationCodeForPageLoadWhenNotRegisteredAtFirstLoad = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : "";

            if (activationCodeForPageLoadWhenNotRegisteredAtFirstLoad != "")
            {
                pageAthntctd = true;
            }

            if(!IsPostBack && (pageAthntctd==true))
            {

                ////NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
                ////String sMacAddress = string.Empty;
                ////foreach (NetworkInterface adapter in nics)
                ////{
                ////    if (sMacAddress == String.Empty)// only return MAC Address from first card  
                ////    {
                ////        IPInterfaceProperties properties = adapter.GetIPProperties();
                ////        sMacAddress = adapter.GetPhysicalAddress().ToString();
                ////    }
                ////}
                ////// To Get IP Address


                ////string IPHost = Dns.GetHostName();
                ////string IP = Dns.GetHostByName(IPHost).AddressList[0].ToString();

                //bool GetLan = false;                   
                //string visitorIPAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

                //if (String.IsNullOrEmpty(visitorIPAddress))
                //    visitorIPAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];

                //if (string.IsNullOrEmpty(visitorIPAddress))
                //    visitorIPAddress = HttpContext.Current.Request.UserHostAddress;

                //if (string.IsNullOrEmpty(visitorIPAddress) || visitorIPAddress.Trim() == "::1")
                //{
                //    GetLan = true;
                //    visitorIPAddress = string.Empty;
                //}

                //if (GetLan && string.IsNullOrEmpty(visitorIPAddress))
                //{
                //    NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
                //    String sMacAddress = string.Empty;
                //    foreach (NetworkInterface adapter in nics)
                //    {
                //        if (sMacAddress == String.Empty)// only return MAC Address from first card  
                //        {
                //            IPInterfaceProperties properties = adapter.GetIPProperties();
                //            sMacAddress = adapter.GetPhysicalAddress().ToString();
                //        }
                //    }
                //    // To Get IP Address


                //    string IPHost = Dns.GetHostName();
                //    visitorIPAddress = Dns.GetHostByName(IPHost).AddressList[0].ToString(); 
                //}



                //lblipaddress.Text = "Your IP is: " + visitorIPAddress;

                string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : "";

               // if ((Session["User"] as string) == "Admin")
                if ((Session["User"] as string) == objSecurityObject.GetIsAdmin())
                {
                    LoadData();
                    GridView1.Visible = true;
                    btnDelete.Visible = true;
                    btnRefresh.Visible = true;
                    gvForNotAdmin.Visible = false;
                }

               // else if (((Session["User"] as string) != "Admin") && (activationCode == "") && (((Session["RegistrationSuccess"] as string) == "") || ((Session["RegistrationSuccess"] as string) == null)))
                else if (((Session["User"] as string) != objSecurityObject.GetIsAdmin()) && (activationCode == "") && (((Session["RegistrationSuccess"] as string) == "") || ((Session["RegistrationSuccess"] as string) == null)))
                {

                    GridView1.Visible = false;
                    btnRefresh.Visible = false;
                    btnDelete.Visible = false;
                    gvForNotAdmin.Visible = true;
                    gvForNotAdminLoad();
                }
                //else if (((Session["User"] as string) != "Admin") && (activationCode == "") && (((Session["RegistrationSuccess"] as string) != "") && ((Session["RegistrationSuccess"] as string) != null)))
                else if (((Session["User"] as string) != objSecurityObject.GetIsAdmin()) && (activationCode == "") && (((Session["RegistrationSuccess"] as string) != "") && ((Session["RegistrationSuccess"] as string) != null)))
                {

                    GridView1.Visible = false;
                    btnRefresh.Visible = false;
                    btnDelete.Visible = false;
                    gvForNotAdmin.Visible = true;
                    gvForNotAdminLoad();
                    MessageHelper.ShowAlertMessage((Session["RegistrationSuccess"] as string).ToString());
                    Session["RegistrationSuccess"] = "";
                }

                // else if ((Session["User"] as string) != "Admin" && activationCode != "")
                else if (((Session["User"] as string) != objSecurityObject.GetIsAdmin()) && (activationCode != ""))
                {
                    GridView1.Visible = false;
                    btnRefresh.Visible = false;
                    btnDelete.Visible = false;
                   // gvForNotAdmin.Visible = true;
                    gvForNotAdminLoad();
                    //int rowsAffected = SetactivationNdeleteCode(activationCode);
                    string userID = SetactivationNdeleteCode(activationCode);
                    bool msg = false;
                    if (userID != "")
                    {
                       // msg = saveUpdateGroupNRoleNewregistretedCommonUser(userID); //  set role deatils for new registrated user 
                       // MessageHelper.ShowAlertMessage("Activation successful.");
                        Session["User"] = userID;
                        // method for IsActive==true then insert into GroupUser tbl  with same GroupCode (of defaultCommonViewers)
                        msg = objSecurityObject.setroupNRoleNewregistreted(userID);
                    }
                    else
                    {
                        MessageHelper.ShowAlertMessage("Invalid Activation code.");
                    }

                    gvForNotAdmin.Visible = true;

                    if (msg)
                    {
                        MessageHelper.ShowAlertMessage("Activation successful.");
                    }

                    else if(!msg)
                    {
                        MessageHelper.ShowAlertMessage("Activation not successful.");
                    }



                }

                // Gridload();

                //BindDdlData(); 
            }
            else if(pageAthntctd==true)
            {
                LoadData();
                gvForNotAdminLoad();
                ltMessage.Text = "";
            }

            else if (pageAthntctd == false)
            {
                Response.Redirect("~/Home.aspx", false);
            }
                
                
        }

        //   private UserProvider provider = new UserProvider();

        protected string SetactivationNdeleteCode(string activationCode)
        {
            return objSecurityObject.SetactivationNdeleteCode(activationCode);
        
        }

        public void LoadData()
        {

            List<UserRatings> lstUserRatings = new List<UserRatings>();
            try
            {
                lstUserRatings = objSecurityObject.GetAllUserRatings();
                GridView1.DataSource = null;
                GridView1.DataSource = lstUserRatings;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            } 
        }

        public void gvForNotAdminLoad()
        {
            List<UserRatings> lstUserRatings = new List<UserRatings>();
            try
            {
                lstUserRatings = objSecurityObject.GetAllUserRatings();
                gvForNotAdmin.DataSource = null;
                gvForNotAdmin.DataSource = lstUserRatings;
                gvForNotAdmin.DataBind();
            }
            catch (Exception ex)
            {
                MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
        
        }

        private void SetProviderValue()
        {
            ////holdID.Value = string.Empty;

            if (btnSave.Text == "Update")
            {
                objUserRating.ID = Convert.ToInt16(hfID.Value);
                objUserRating.UserID = hfUserID.Value.ToString();
            }
            objUserRating.Rating=Convert.ToSByte(Rating1.CurrentRating);
            objUserRating.Comments = txtComments.Text;
           
            ////provider.DivisionID = ddlDivision.SelectedValue.ToInt();
            //provider.ThanaID = ddlThana.SelectedValue.Toint();
            //provider.DivisionID = ddlDivision.SelectedValue.Toint();


            //// provider.EntryUserID = (Int32)HttpContext.Current.Session["ID"];
            //// provider.UpdateUserID = (Int32)HttpContext.Current.Session["ID"];

        }

        private void Delete()
        {

            SetProviderValue(); 
        }
         

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Select(object sender, EventArgs e)
        {
            using (GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent)
            {
                Int32 id =Convert.ToInt32(row.Cells[1].Text);
               // DataTable dt = new DataTable();
               // dt = objSecurityObject.GetUserForUpdate(id);

                try
                {
                    UserRatings lstUserRatings = new UserRatings();
                    lstUserRatings = objSecurityObject.GetUserRatingsForUpdate(id);
                    if(lstUserRatings.Comments!="")
                    {

                        Rating1.CurrentRating = Convert.ToInt16(lstUserRatings.Rating);
                        txtComments.Text = lstUserRatings.Comments;
                        btnSave.Text = "Update";
                        hfID.Value = lstUserRatings.ID.ToString();
                        hfUserID.Value = lstUserRatings.UserID.ToString();
                    }
                }
                catch(Exception ex)
                {
                    MessageHelper.ShowAlertMessage(ex.ToString());
                }

                //if (dt.Rows.Count > 0)
                //{
                //    hfID.Value = dt.Rows[0]["ID"].ToString();
                //    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                //    txtSqrtyQ.Text = dt.Rows[0]["SecurityQuestion"].ToString();
                //    // chkIsLocked.Text = dt.Rows[0]["IsLocked"].ToString();
                //    txtUser.Text = dt.Rows[0]["UserID"].ToString();
                //    txtAnswer.Text = dt.Rows[0]["Answer"].ToString();
                //    //chkIsAdmin.Text = dt.Rows[0]["IsAdmin"].ToString();
                //    //txtPassword.TextMode.ToString();
                //    //txtPassword.Text = dt.Rows[0]["Password"].ToString();
                //    //txtLockedDate.Text = dt.Rows[0]["LockedDate"].ToString();
                //    ddlStatus.SelectedValue = dt.Rows[0]["StatusID"].ToString();
                //    txtPassword.Text = dt.Rows[0]["Password"].ToString();
                //    if (dt.Rows[0]["IsAdmin"].ToString() == "True")
                //    {
                //        chkIsAdmin.Checked = true;
                //    }

                //    else if (dt.Rows[0]["IsAdmin"].ToString() == "False")
                //    {
                //        chkIsAdmin.Checked = false;
                //    }

                //    btnSave.Text = "Update";
                //}
            }

        }

        protected string  checkValidUserForCommentRating(string user)
        {
            try
            {

                string userID = string.Empty;
                userID = objSecurityObject.checkValidUserForCommentRating(user);

                return userID;
            }
            catch(Exception ex)
            {
              throw(ex);
            }
            
        }

        protected void ClearAll()
        {
            hfID.Value = "";
            hfUserID.Value = ""; 
            Rating1.CurrentRating = 0;
            txtComments.Text = "";
            //ddlDivision.SelectedValue=dt[0][""].ToString();
            //ddlThana.DataSource = null;
            //ddlThana.DataBind();
            // ddlDivision.SelectedIndex = 0;
            // ddlThana.SelectedIndex = 0;
            
            btnSave.Text = "Save";

        }

        #region button click

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string user = (string)((Session["User"]) as string) == null ? "" : (string)((Session["User"]) as string);
           // if (user == "" || user=="alluser")
            if ((user == "" )|| (user == objSecurityObject.GetDefaultUser()))
            {
                MessageHelper.ShowAlertMessage("Please Login First, Then Try Again.");

            }
 
            else
            {
                string userID = checkValidUserForCommentRating(user);
                if (userID == "")
                {
                   
                    //Response.Redirect("~/Registration.aspx",false);
                    MessageHelper.ShowAlertMessage("Please Register First.");
                }
                else
                {
                    if (Rating1.CurrentRating != 0 && txtComments.Text != "" && userID != "")
                    {
                        if (btnSave.Text == "Save")
                        {
                            try
                            {
                                string operation = "Save";
                                SetProviderValue();
                                objUserRating.UserID = Session["User"].ToString();
                                objSecurityObject.SaveUpdateDeleteUserFeedback(objUserRating, operation);
                                //ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Save Successfully.')", true);
                                MessageHelper.ShowAlertMessage(MessageConstants.Saved);
                                LoadData();
                                ClearAll();

                            }
                            catch (Exception ex)
                            {
                                //ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Save Not Success.')", true);
                                // throw ex;
                                MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);

                            }
                        }

                        else if (btnSave.Text == "Update")
                        {
                            string operation = "Update";
                            try
                            {
                                SetProviderValue();
                                objSecurityObject.SaveUpdateDeleteUserFeedback(objUserRating, operation);
                                // ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Update Successfully.')", true);
                                MessageHelper.ShowAlertMessage(MessageConstants.Updated);
                                LoadData();
                                ClearAll();

                            }
                            catch (Exception ex)
                            {
                                //ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Update Not Success.')", true);
                                // throw ex;
                                MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);

                            }

                        }
                    }
                    //else if (userID != "")
                    //{
                    //    MessageHelper.ShowAlertMessage("Please Login First, Then Try Again.");
                    //}

                    else if (Rating1.CurrentRating == 0)
                    {

                        MessageHelper.ShowAlertMessage("Please Provide Rating.");

                    }

                    else if (txtComments.Text == "")
                    {
                        MessageHelper.ShowAlertMessage("Please Provide Comments.");
                    }

                    else if (Rating1.CurrentRating == 0 && txtComments.Text == "")
                    {
                        MessageHelper.ShowAlertMessage("Please Provide Rating and Comments.");
                    }
                }
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (hfID.Value != "")
            {
                objUserRating.ID = Convert.ToInt16(hfID.Value);
                objUserRating.UserID = hfUserID.Value;
                string operation = "Delete";
                try
                {
                    SetProviderValue();
                    objSecurityObject.SaveUpdateDeleteUserFeedback(objUserRating, operation);
                    //ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Delete Successfully.')", true);
                    MessageHelper.ShowAlertMessage(MessageConstants.Deleted);
                    LoadData();
                    ClearAll();

                }
                catch (Exception ex)
                {
                    MessageHelper.ShowAlertMessage(MessageConstants.DeletedWarning);
                    //ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Delete Not Success.')", true);
                    // throw ex;

                }
            }

           // txtUser.Text = "delete";
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        #endregion

        #region Rating
        protected void OnRatingChanged(object sender, RatingEventArgs e)
        {

        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        if (Rating1.CurrentRating != 0 && txtComments.Text!="")
        //        {
        //            //string ratingVal = Rating1.CurrentRating.ToString();
        //            //string comments = txtComments.Text;
        //            //string userID = Session["User"].ToString();
        //            UserRatings objUserRatings = new UserRatings();
        //            objUserRatings.Rating = Convert.ToSByte(Rating1.CurrentRating);
        //            objUserRatings.UserID = Session["User"].ToString();
        //            objUserRatings.Comments = txtComments.Text;
        //            objSecurityObject.SaveUserFeedback(objUserRatings);
        //            MessageHelper.ShowAlertMessage(MessageConstants.Saved);
        //            Rating1.CurrentRating = 0;
        //            txtComments.Text = "";
        //        }
        //        else if (Rating1.CurrentRating==0)
        //        {

        //            MessageHelper.ShowAlertMessage("Please Provide Rating With Star Symbols.");
        //        }

        //        else if (txtComments.Text == "")
        //        {

        //            MessageHelper.ShowAlertMessage("Please Enter  Comments.");
        //        }

        //    }
        //    catch(Exception ex)
        //    {
        //        MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);
        //    }
        //}
        #endregion

        #region Role Assign

        private GroupUserProvider GenerateGroupUserProvider(Group objGroup) 
        {
            GroupUserProvider gUPObj = new GroupUserProvider();
            if (!string.IsNullOrEmpty(objGroup.GroupName))
            {
                gUPObj.GroupCode = objGroup.GroupCode.ToString();
                gUPObj.GroupName = objGroup.GroupName;
                gUPObj.Description = objGroup.Description;
            }
            else if(string.IsNullOrEmpty(objGroup.GroupName))
            {
                gUPObj.GroupName = "NewRegistrationCommonUserGroup";
                gUPObj.Description = "Only For NewRegistrationCommonUserGroup";
            }
            return gUPObj;
        }
        private List<GroupUserProvider> GenerateUserList( string userID)
        {
            List<GroupUserProvider> userList = new List<GroupUserProvider>();
           // foreach (GridViewRow row in gvUser.Rows)
           // {
              //  CheckBox chkSelected = (CheckBox)row.FindControl("ChkUser");
            if(userID!="")
                {
                    GroupUserProvider user = new GroupUserProvider();
                    //Label userID = (Label)row.FindControl("lblUserID");
                    user.UserID = userID.ToString();
                    userList.Add(user);
                }
           // }
            return userList;
        }
        private List<GroupUserProvider> GenerateRoleList(Role objRole)
        {
            List<GroupUserProvider> RoleList = new List<GroupUserProvider>();
            //foreach (GridViewRow row in gvRole.Rows)
            //{
              //  CheckBox chkSelected = (CheckBox)row.FindControl("ChkRole");
                if (!string.IsNullOrEmpty(objRole.RoleName))
                {
                    GroupUserProvider role = new GroupUserProvider();
                    //Label roleCode = (Label)row.FindControl("lblRoleCode");
                    role.SecurityRoleCode = objRole.RoleCode.ToString();
                    RoleList.Add(role);
                }
                else if(string.IsNullOrEmpty(objRole.RoleName))
                {
                    Role roleMasterList = GenerateRoleMaster();
                    List<RoleDetailGetSP> roleDetailsList = PageControlsProviders();

                    objSecurityObject.Save(roleMasterList, roleDetailsList);
                    
                    GroupUserProvider role = new GroupUserProvider(); //because role  is  not assign for  pages
                    Role objRoleAfterIsert  = new Role();
                    objRoleAfterIsert = objSecurityObject.GetRoleForNewRegistrationCommonUser();
                    role.SecurityRoleCode = objRoleAfterIsert.RoleCode.ToString();
                    RoleList.Add(role);
                }
           // }
            return RoleList;
        }

        private Role GenerateRoleMaster()
        {
            Role provider = new Role();
            try
            {
               // provider.RoleCode = hfRoleCode.Value == "" ? 0 : Convert.ToInt16(hfRoleCode.Value);
                provider.RoleName = "NewRegistrationCommonUserRole";//roleNameTextBox.Text.ToString();
                provider.RoleDescription = "Only For NewRegistrationCommonUserRole";//descriptionTextBox.Text.ToString();
            }
            catch (Exception ex)
            {
                //throw (ex);
               // MessageHelper.ShowAlertMessage(ex.Message.ToString());
            }
            return provider;
        }
        private List<RoleDetailGetSP> PageControlsProviders()
        {
            //.......... Get All From RoleDetails as allUser and set the same properties for  all NewRegistrationCommonUserRole........ becouse gridview is not here....//
            List<RoleDetailGetSP> roleDetailList = new List<RoleDetailGetSP>();
            roleDetailList =objSecurityObject.GetAllUserRoleToAssignNewRegistrationUserRole();
            //bool isSelected = false;
            var alist = new List<RoleDetailGetSP>();
            try
            {
                #region by pre dev
                

                //GetwithCaption();
               // DataTable aTable = (DataTable)(Session["pageControlsTable"]);
                foreach (RoleDetailGetSP  aRow in roleDetailList)
                {
                    aRoleDetailGetSP = new RoleDetailGetSP
                    {
                        CanSelect = aRow.CanSelect,
                        CanInsert = aRow.CanInsert,
                        CanUpdate = aRow.CanUpdate,
                        CanDelete = aRow.CanDelete,
                        CanSend = aRow.CanSend,
                        CanCheck = aRow.CanCheck,
                        CanApprove = aRow.CanApprove,
                        CanPreview = aRow.CanPreview,
                        //AllChk = Convert.ToBoolean(aRow[8].ToString()),
                        MenuID = aRow.MenuID
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
            return alist; 
        }

        protected bool saveUpdateGroupNRoleNewregistretedCommonUser(string userID)
        { 
            Group objGroup = new Group();
            Role objRole = new Role();
            objGroup = objSecurityObject.GetGroupForNewRegistrationCommonUser();
            objRole = objSecurityObject.GetRoleForNewRegistrationCommonUser();

            string mode = "";
            if (string.IsNullOrEmpty(objGroup.GroupName) || string.IsNullOrEmpty(objRole.RoleName)) //if (string.IsNullOrEmpty(objGroup.GroupName) && string.IsNullOrEmpty(objRole.RoleName))  // original ok
            {
                mode = "Save";
                // CheckUserAuthentication(mode);
            }
            else if (!(string.IsNullOrEmpty(objGroup.GroupName)) && !(string.IsNullOrEmpty(objRole.RoleName))) // else original 
            {
                mode = "Update";
                // CheckUserAuthentication(mode);
            }
            bool msg = false;
            //string message = string.Empty;
            try
            {
                GroupUserProvider groupUserProvider = GenerateGroupUserProvider(objGroup);
                List<GroupUserProvider> UserList = GenerateUserList(userID);
                List<GroupUserProvider> RoleList = GenerateRoleList(objRole);
                msg = objSecurityObject.SaveUpdateDeleteForUserRoleassaign(groupUserProvider, UserList, RoleList, mode);
                return msg;
            }
            catch (Exception ex)
            {
                //// message = ex.Message;
                //// MessageHelper.ShowAlertMessage(message);
                //if (mode == "Save")
                //{
                //    MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);
                //}
                //else if (mode == "Update")
                //{
                //    MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
                //}
                msg = false;
            }
            return msg;
            //if (msg)
            //{
                 
            //    //if (mode == "Save")
            //    //{
            //    //    MessageHelper.ShowAlertMessage(MessageConstants.Saved);
            //    //}
            //    //else if (mode == "Update")
            //    //{
            //    //    MessageHelper.ShowAlertMessage(MessageConstants.Updated);
            //    //}

            //   // Clear();
            //}

            //else
            //{
            //    //MessageHelper.ShowAlertMessage(message);
            //    if (mode == "Save")
            //    {
            //        MessageHelper.ShowAlertMessage(MessageConstants.SavedWarning);
            //    }
            //    else if (mode == "Update")
            //    {
            //        MessageHelper.ShowAlertMessage(MessageConstants.UpdateWarning);
            //    }
            //}
        }

        #endregion
    }
}