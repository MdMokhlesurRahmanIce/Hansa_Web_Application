
using Hansa.Web.Helper;
using Hansa.Web.Repository; 
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hansa.Web
{
    public partial class RegisterUI : System.Web.UI.Page 
    {
       // HansadbEntities context = new HansadbEntities();
       // HansaDBEntities context = new HansaDBEntities();
         
        SecurityObject objSecurityObject = new SecurityObject();
        User objUser = new User();

        string mode = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadData();

                // Gridload();

                //BindDdlData(); 
            }

        }

        //   private UserProvider provider = new UserProvider();

        public void LoadData()
        {

            //List<User> lstUser = new List<User>();
            //try
            //{
            //    lstUser = objSecurityObject.GetAllUser();
            //    GridView1.DataSource = null;
            //    GridView1.DataSource = lstUser;
            //    GridView1.DataBind();
            //}
            //catch(Exception ex)
            //{
            //    MessageHelper.ShowAlertMessage(ex.Message.ToString());
            //}

           
        }
 
        private void SetProviderValue()
        {
            //////holdID.Value = string.Empty;

            //if (btnSave.Text == "Update")
            //{
            //    objUser.ID = Convert.ToInt16(hfID.Value);
            //}

            //objUser.UserID = txtUser.Text;
            //objUser.Answer = txtAnswer.Text;
            //objUser.Email = txtEmail.Text;
            //objUser.IsAdmin = chkIsAdmin.Checked ? true : false;
            //objUser.Password = txtPassword.Text;
            //objUser.SecurityQuestion = txtSqrtyQ.Text;
            //objUser.StatusID = Convert.ToInt16(ddlStatus.SelectedValue);
            //objUser.EntryUserID = Convert.ToInt16(1);// login id
            //objUser.EntryDate = DateTime.Now;
            //////provider.DivisionID = ddlDivision.SelectedValue.ToInt();
            ////provider.ThanaID = ddlThana.SelectedValue.Toint();
            ////provider.DivisionID = ddlDivision.SelectedValue.Toint();


            ////// provider.EntryUserID = (Int32)HttpContext.Current.Session["ID"];
            ////// provider.UpdateUserID = (Int32)HttpContext.Current.Session["ID"];

        }
         

        private void Delete()
        {

            SetProviderValue();

        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            //if (btnSave.Text == "Save")
            //{
            //    try
            //    {
            //        string operation = "Save";
            //        SetProviderValue();
            //        objSecurityObject.SaveUpdateDeleteUser(objUser, operation);
            //        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Save Successfully.')", true);
            //        LoadData();
            //        ClearAll();

            //    }
            //    catch (Exception ex)
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Save Not Success.')", true);
            //        // throw ex;

            //    }
            //}

            //else if(btnSave.Text=="Update")
            //{
            //    string operation = "Update";
            //    try
            //    {
            //        SetProviderValue();
            //        objSecurityObject.SaveUpdateDeleteUser(objUser, operation); 
            //        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Update Successfully.')", true);
            //        LoadData();
            //        ClearAll();

            //    }
            //    catch (Exception ex)
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Update Not Success.')", true);
            //        // throw ex;

            //    }
            
            //} 
        }



        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
         

        protected void BindDdlData()
        {

            //ddlThana.DataSource = null;
            //ddlThana.DataSourceID = null;
            //ddlThana.DataBind();
            //ddlThana.DataSource = provider.GetAllThanaPageLoad();

            //ddlThana.DataTextField = "ThanaInBangla";
            //ddlThana.DataValueField = "ThanaID";
            //ddlThana.DataBind();
            //ddlThana.Items.Insert(0, new ListItem("----Select----", "0"));
        }
        protected void Select(object sender, EventArgs e)
        {
            //using (GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent)
            //{
            //    string id = row.Cells[1].Text;
            //    DataTable dt = new DataTable();
            //    dt = objSecurityObject.GetUserForUpdate(id);

            //    if (dt.Rows.Count > 0)
            //    {
            //        hfID.Value = dt.Rows[0]["ID"].ToString();
            //        txtEmail.Text = dt.Rows[0]["Email"].ToString();
            //        txtSqrtyQ.Text = dt.Rows[0]["SecurityQuestion"].ToString();
            //        // chkIsLocked.Text = dt.Rows[0]["IsLocked"].ToString();
            //        txtUser.Text = dt.Rows[0]["UserID"].ToString();
            //        txtAnswer.Text = dt.Rows[0]["Answer"].ToString();
            //        //chkIsAdmin.Text = dt.Rows[0]["IsAdmin"].ToString();
            //        //txtPassword.TextMode.ToString();
            //        //txtPassword.Text = dt.Rows[0]["Password"].ToString();
            //        //txtLockedDate.Text = dt.Rows[0]["LockedDate"].ToString();
            //        ddlStatus.SelectedValue = dt.Rows[0]["StatusID"].ToString();
            //        txtPassword.Text = dt.Rows[0]["Password"].ToString();
            //        if (dt.Rows[0]["IsAdmin"].ToString() == "True")
            //        {
            //            chkIsAdmin.Checked = true;
            //        }

            //        else if (dt.Rows[0]["IsAdmin"].ToString() == "False")
            //        {
            //            chkIsAdmin.Checked = false;
            //        }

            //        btnSave.Text = "Update";
            //    }
            //}

        }

        protected void ClearAll()
        {
            //hfID.Value = "";
            ////ddlDivision.SelectedValue=dt[0][""].ToString();
            ////ddlThana.DataSource = null;
            ////ddlThana.DataBind();
            //// ddlDivision.SelectedIndex = 0;
            //// ddlThana.SelectedIndex = 0;
            //ddlStatus.SelectedIndex = 0;
            //txtEmail.Text = "";
            //txtSqrtyQ.Text = "";
            //txtUser.Text = "";
            //txtAnswer.Text = "";
            //chkIsAdmin.Checked = false;
            //txtPassword.Text = "";
            //btnSave.Text = "Save";

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
           // if (hfID.Value != "")
           // {
           //     objUser.ID = Convert.ToInt16(hfID.Value);
           //     string operation = "Delete";
           //     try
           //     {
           //         SetProviderValue();
           //         objSecurityObject.SaveUpdateDeleteUser(objUser, operation);
           //         ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Delete Successfully.')", true);
           //         LoadData();
           //         ClearAll();

           //     }
           //     catch (Exception ex)
           //     {
           //         ScriptManager.RegisterStartupScript(this, GetType(), "", "alert ('Delete Not Success.')", true);
           //         // throw ex;

           //     }
           // }

           //// txtUser.Text = "delete";
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
    }
}