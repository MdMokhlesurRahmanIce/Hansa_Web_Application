using DomainClass;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Transactions;
using System.Web;

namespace Hansa.Web.Repository
{
    public class Repository : IRepository, IDisposable
    {
        HansaDBEntities context;
        //HansadbEntities context;
        string constrng;
        public Repository()
        {
            //  context = new HansadbEntities();
            context = new HansaDBEntities();
            constrng = ConfigurationManager.ConnectionStrings["HansaDBConnectionString"].ConnectionString;
        }

        // HansadbEntities context = new HansadbEntities();
        // string constrng = ConfigurationManager.ConnectionStrings["HansaDBConnectionString"].ConnectionString;

        public string GetDefaultUser()
        {
            string dfusr = "";
            //try
            //{
            //    var defaultAllUser = (from dfau in context.User.Where(d => d.UserID == "alluser") select dfau).FirstOrDefault();
            //    dfusr = defaultAllUser.UserID.ToString();
            //    return dfusr;
            //}
            //catch(Exception ex)
            //{
            //    throw ex;
            //}

            try
            {
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
               // SqlCommand cmd = new SqlCommand("SELECT [UserID] FROM  [UserAccess].[User] where UserID='alluser'", con);
                SqlCommand cmd = new SqlCommand("SELECT [UserID] FROM  [UserAccess].[User] where DefaultAllViwerForCommon='True'", con);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                dfusr = dt.Rows[0]["UserID"].ToString();

                // var defaultAllUser = (from dfau in context.User.Where(d => d.UserID == "alluser") select dfau).FirstOrDefault();
                // dfusr = defaultAllUser.UserID.ToString();
                return dfusr;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public string GetIsAdmin()
        {
            string IsAdmin = "";
            try
            {
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                // SqlCommand cmd = new SqlCommand("SELECT [UserID] FROM  [UserAccess].[User] where UserID='alluser'", con);
                SqlCommand cmd = new SqlCommand("SELECT [UserID] FROM  [UserAccess].[User] where IsAdmin='True'", con);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                IsAdmin = dt.Rows[0]["UserID"].ToString();

                // var defaultAllUser = (from dfau in context.User.Where(d => d.UserID == "alluser") select dfau).FirstOrDefault();
                // dfusr = defaultAllUser.UserID.ToString();
                return IsAdmin;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public User GetByUserNameAndPassword(string userName, string password)
        {
            try
            {
                var user = (from usr in context.User.Where(m => m.UserID == userName && m.Password == password) select usr).FirstOrDefault();
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<User> GetAllUser()
        {
            // List<User> lstUser = new List<User>(); 
            var user = from usr in context.User select usr;
            return user.ToList();
        }

        public List<GroupUsers> GetAllGroupUsersByGroupCode(string groupCode)
        {
            var lstGroup = from grpUsr in context.GroupUsers.Where(gr => gr.GroupCode == groupCode) select grpUsr;
            return lstGroup.ToList();
        }

        public List<GroupRole> GetAllGroupRoleByGroupCode(string groupCode)
        {
            var lstGroupRole = from grpRole in context.GroupRole.Where(gr => gr.GroupCode == groupCode) select grpRole;
            return lstGroupRole.ToList();
        }
        public List<Group> GetGroupAllForPopup()
        {
            var group = from grp in context.Group select grp;
            return group.ToList();

        }

        public User SaveUpdateDeleteUser(User objUser, string operation)
        {
            try
            {
                User objGetUsr = new User();
                if (objUser.ID == 0 && operation == "Save")
                {
                    context.User.Add(objUser);
                    context.SaveChanges();
                } 
                else if (objUser.ID != 0 && operation == "Update")
                {
                    var forUpdateUser = (from upusr in context.User.Where(m => m.ID == objUser.ID) select upusr).First();
                    if (forUpdateUser.ID > 0)
                    {
                        // foreach (User usr in forUpdateUser)
                        // {
                        forUpdateUser.ID = objUser.ID;
                        forUpdateUser.Answer = objUser.Answer;
                        forUpdateUser.Email = objUser.Email;
                        forUpdateUser.EntryDate = objUser.EntryDate;
                        forUpdateUser.EntryUserID = objUser.EntryUserID;
                        forUpdateUser.IsAdmin = objUser.IsAdmin;
                        forUpdateUser.Password = objUser.Password;
                        forUpdateUser.SecurityQuestion = objUser.SecurityQuestion;
                        forUpdateUser.StatusID = objUser.StatusID;
                        forUpdateUser.UpdateDate = objUser.UpdateDate;
                        forUpdateUser.UpdateUserID = objUser.UpdateUserID;
                        forUpdateUser.UserID = objUser.UserID;
                        forUpdateUser.DefaultAllViwerForCommon = objUser.DefaultAllViwerForCommon;
                        // } 
                        // context.User.Add(objUser);
                        context.SaveChanges();
                    }
                }

                else if (objUser.ID != 0 && operation == "Delete")
                {
                    var forDeleteUser = (from delUsr in context.User.Where(m => m.ID == objUser.ID) select delUsr).First();
                    if (forDeleteUser.ID > 0)
                    {
                        context.User.Remove(forDeleteUser);
                        context.SaveChanges();
                    }
                }

                return objUser;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Menu> GetAllMenuType()
        {
            try
            {
                var getAllMenu = from mn in context.Menu.Where(m => m.ParentID == 0) select mn;

                return getAllMenu.ToList(); ;
            }

            catch (Exception ex)
            {
                throw ex;

            }
        }

        public List<RoleDetailGetSP> RoleDetailGetSPForGrid()
        {
            try
            {
                int option = 1;
                string filterExpression = "";
                string sqlQry = "exec [UserAccess].[RoleDetailGet] '" + option + "','" + filterExpression + "'";
                var results = context.Database.SqlQuery<RoleDetailGetSP>(sqlQry);
                return results.ToList();

            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable RoleDetailGetSPForGridWithDataTable()
        {
            try
            {
                int option = 1;
                string filterExpression = "";
                string sqlQry = "exec [UserAccess].[RoleDetailGet] '" + option + "','" + filterExpression + "'";
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlQry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                return dt;
            }

            catch (Exception ex)
            {
                throw ex;
            }

        }

        public List<RoleDetailGetSP> RoleDetailGetSPForGridWithroleCode(string roleCode)
        {
            try
            {
                int option = 2;
                string filterExpression = roleCode;
                string sqlQry = "exec [UserAccess].[RoleDetailGet] '" + option + "','" + filterExpression + "'";
                var results = context.Database.SqlQuery<RoleDetailGetSP>(sqlQry);
                return results.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable RoleDetailGetSPForGridWithroleCodeForDT(string roleCode)
        {
            try
            {
                int option = 2;
                string filterExpression = roleCode;
                string sqlQry = "exec [UserAccess].[RoleDetailGet] '" + option + "','" + filterExpression + "'";
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlQry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                return dt;
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetAll()
        {
            try
            {
                DataSet ds = new DataSet();
                int option = 1;
                string filterExpression = "";
                string sqlQry = "exec [UserAccess].[UserGet] '" + option + "','" + filterExpression + "'";
                // DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlQry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                con.Close();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<User> GetAllUserFGrid()
        {
            var allUser = from alusr in context.User select alusr;
            return allUser.ToList();
        }


        public DataTable GetAllRole()
        {
            try
            {
                DataTable dt = new DataTable();
                string sqlQry = "Select RoleCode, RoleName From [UserAccess].Role ";
                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlQry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Role> GetAllRoleFGrid()
        {
            var allRole = from alrl in context.Role select alrl;

            return allRole.ToList();
        }

        public DataTable GetUserForUpdate(string id)
        {

            try
            {
                DataTable dt = new DataTable();

                string qurStrng = "Select * from  [UserAccess].[User] where ID='" + id + "'";

                SqlConnection con = new SqlConnection(constrng);
                con.Open();
                SqlCommand cmd = new SqlCommand(qurStrng, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                con.Close();
                return dt;
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool Save(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList)
        {
            int roleCode = 0;
            bool isSave;
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    // this.ConnectionOpen();
                    SqlConnection con = new SqlConnection(constrng);
                    command.Connection = con;
                    con.Open();
                    // this.BeginTransaction(true);
                    // command.Transaction = this.Transaction;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "[UserAccess].[RoleSet]"; 
                    SqlParameter RoleCode = new SqlParameter("@RoleCode", SqlDbType.Int);
                    RoleCode.Direction = ParameterDirection.Output;
                    command.Parameters.Add(RoleCode); 
                    command.Parameters.Add("@RoleName", SqlDbType.NVarChar).Value = roleMasterList.RoleName;
                    command.Parameters.Add("@RoleDescription", SqlDbType.NVarChar).Value = roleMasterList.RoleDescription;
                    command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;//DBConstants.DataModificationOption.Insert;
                    command.ExecuteNonQuery(); 
                    roleCode = (int)command.Parameters["@RoleCode"].Value;
                    con.Close(); 
                    foreach (RoleDetailGetSP objList in roleDetailsList)
                    {
                        command = new SqlCommand();
                        //command.Connection = Connection;
                        // command.Transaction = Transaction;
                        // SqlConnection con = new SqlConnection(constrng);
                        command.Connection = con;
                        con.Open();
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "[UserAccess].[RoleDetailSet]";
                        command.Parameters.Add("@MenuID", SqlDbType.Int).Value = objList.MenuID;
                        command.Parameters.Add("@RoleCode", SqlDbType.Int).Value = roleCode;
                        command.Parameters.Add("@CanSelect", SqlDbType.Bit).Value = objList.CanSelect;
                        command.Parameters.Add("@CanInsert", SqlDbType.Bit).Value = objList.CanInsert;
                        command.Parameters.Add("@CanUpdate", SqlDbType.Bit).Value = objList.CanUpdate;
                        command.Parameters.Add("@CanDelete", SqlDbType.Bit).Value = objList.CanDelete;
                        command.Parameters.Add("@CanSend", SqlDbType.Bit).Value = objList.CanSend;
                        command.Parameters.Add("@CanCheck", SqlDbType.Bit).Value = objList.CanCheck;
                        command.Parameters.Add("@CanApprove", SqlDbType.Bit).Value = objList.CanApprove;
                        command.Parameters.Add("@CanPreview", SqlDbType.Bit).Value = objList.CanPreview;
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;//DBConstants.DataModificationOption.Insert;
                        command.ExecuteNonQuery();
                        con.Close();
                    }
                    transactionScope.Complete();
                    transactionScope.Dispose();
                    //this.CommitTransaction();
                    // this.ConnectionClosed();
                    con.Close();
                    isSave = true;
                }
                catch (Exception exp)
                {
                    transactionScope.Dispose();
                    // this.RollbackTransaction();
                    throw new Exception(exp.Message);
                }

                return isSave;
            }
        }

        public bool Update(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList)
        {
            bool isUpdate = false;
            using (TransactionScope transactionscope = new TransactionScope())
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    //this.ConnectionOpen();
                    // command.Connection = Connection;
                    // this.BeginTransaction(true);
                    // command.Transaction = this.Transaction;
                    SqlConnection con = new SqlConnection(constrng);
                    command.Connection = con;
                    con.Open();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "[UserAccess].[RoleSet]"; 
                    command.Parameters.Add("@RoleCode", SqlDbType.Int).Value = roleMasterList.RoleCode;
                    command.Parameters.Add("@RoleName", SqlDbType.NVarChar).Value = roleMasterList.RoleName;
                    command.Parameters.Add("@RoleDescription", SqlDbType.NVarChar).Value = roleMasterList.RoleDescription;
                    command.Parameters.Add("@Option", SqlDbType.Int).Value = 2; //DBConstants.DataModificationOption.Update;
                    command.ExecuteNonQuery();
                    con.Close();
                    foreach (RoleDetailGetSP objList in roleDetailsList)
                    {
                        command = new SqlCommand();
                        //ConnectionOpen();
                        command.Connection = con;
                        //command.Transaction = Transaction;
                        con.Open();
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "[UserAccess].[RoleDetailSet]";
                        command.Parameters.Add("@MenuID", SqlDbType.Int).Value = objList.MenuID;
                        command.Parameters.Add("@RoleCode", SqlDbType.Int).Value = roleMasterList.RoleCode;
                        command.Parameters.Add("@CanSelect", SqlDbType.Bit).Value = objList.CanSelect;
                        command.Parameters.Add("@CanInsert", SqlDbType.Bit).Value = objList.CanInsert;
                        command.Parameters.Add("@CanUpdate", SqlDbType.Bit).Value = objList.CanUpdate;
                        command.Parameters.Add("@CanDelete", SqlDbType.Bit).Value = objList.CanDelete;
                        command.Parameters.Add("@CanSend", SqlDbType.Bit).Value = objList.CanSend;
                        command.Parameters.Add("@CanCheck", SqlDbType.Bit).Value = objList.CanCheck;
                        command.Parameters.Add("@CanApprove", SqlDbType.Bit).Value = objList.CanApprove;
                        command.Parameters.Add("@CanPreview", SqlDbType.Bit).Value = objList.CanPreview;
                        //command.Parameters.Add("@CanReceive", SqlDbType.Bit).Value = objList.CanReceive;
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 2;//DBConstants.DataModificationOption.Update;
                        command.ExecuteNonQuery();
                        con.Close();
                    }
                    transactionscope.Complete();
                    transactionscope.Dispose();
                    con.Close();
                    //CommitTransaction();
                    // ConnectionClosed();

                    isUpdate = true;
                }
                catch (Exception exp)
                {
                    transactionscope.Dispose();
                    //this.RollbackTransaction();
                    throw new Exception(exp.Message);
                }
                //finally
                //{
                //    // this.ConnectionClosed();
                //}
                return isUpdate;
            }
        }
        public bool SaveUpdateDeleteForUserRoleassaign(GroupUserProvider groupUserProvider, List<GroupUserProvider> UserList, List<GroupUserProvider> RoleList, string btnSave)
        {
            bool IsSave = false;
            String GroupCode = string.Empty;
            using (TransactionScope transactionScope = new TransactionScope())
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    //ConnectionOpen();
                    //command.Connection = Connection;
                    //this.BeginTransaction(true);
                    //command.Transaction = this.Transaction;
                    SqlConnection con = new SqlConnection(constrng);
                    con.Open();
                    command.Connection = con;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "[UserAccess].[GroupSet]";
                    if (btnSave == "Save")
                    {
                        SqlParameter t = new SqlParameter("@GroupCode", SqlDbType.VarChar);
                        t.Direction = ParameterDirection.Output;
                        t.Size = 16;
                        command.Parameters.Add(t);
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;//DBConstants.DataModificationOption.Insert;
                    }
                    else
                    {
                        command.Parameters.Add("@GroupCode", SqlDbType.VarChar, 100).Value = groupUserProvider.GroupCode;
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 2;//DBConstants.DataModificationOption.Update;
                    }
                    command.Parameters.Add("@GroupName", SqlDbType.VarChar, 100).Value = groupUserProvider.GroupName;
                    command.Parameters.Add("@Description", SqlDbType.VarChar, 200).Value = groupUserProvider.Description;
                    command.ExecuteNonQuery();
                    con.Close(); 
                    if (btnSave == "Save")
                    {
                        GroupCode = (string)command.Parameters["@GroupCode"].Value;
                    }
                    else
                    {
                        GroupCode = groupUserProvider.GroupCode;
                    }
                    //-------------------------------------Group User--------------------------------------
                    int update = 1;
                    foreach (GroupUserProvider groupUser in UserList)
                    {
                        command = new SqlCommand();
                        command.Connection = con;
                        con.Open();
                        //command.Transaction = this.Transaction;
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "[UserAccess].[GroupUserSet]";//StoredProcedureNames.GroupUserSet;
                        command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = groupUser.UserID;
                        command.Parameters.Add("@GroupCode", SqlDbType.VarChar).Value = GroupCode; 
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;//DBConstants.DataModificationOption.Insert;
                        command.Parameters.Add("@Update", SqlDbType.Int).Value = update;
                        command.ExecuteNonQuery();
                        con.Close();
                        update++;
                    }
                    update = 1;
                    foreach (GroupUserProvider groupRole in RoleList)
                    {
                        command = new SqlCommand();
                        command.Connection = con;
                        con.Open();
                        // command.Transaction = this.Transaction;
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "[UserAccess].[GroupRoleSet]";//StoredProcedureNames.GroupRoleSet;
                        command.Parameters.Add("@GroupCode", SqlDbType.VarChar).Value = GroupCode;
                        command.Parameters.Add("@RoleCode", SqlDbType.VarChar).Value = groupRole.SecurityRoleCode; 
                        command.Parameters.Add("@Option", SqlDbType.Int).Value = 1;//DBConstants.DataModificationOption.Insert;
                        command.Parameters.Add("@Update", SqlDbType.Int).Value = update;
                        command.ExecuteNonQuery();
                        con.Close();
                        update++;
                    }
                    //  this.CommitTransaction();
                    // this.ConnectionClosed();

                    transactionScope.Complete();
                    transactionScope.Dispose();
                    con.Close();
                    IsSave = true;
                }
                catch (Exception exp)
                {
                    // this.RollbackTransaction();
                    transactionScope.Dispose();
                    throw new Exception(exp.Message);
                }

                return IsSave;
            }
        }

        public List<Role> findRole()
        {
            // List<Role> lstRole = new List<Role>(); 
            var role = from rl in context.Role select rl;
            return role.ToList();
        }

        public UserRatings SaveUpdateDeleteUserFeedback(UserRatings objUserRatings,string operation)
        {
            try
            {
                //User objGetUsr = new User();
                if (objUserRatings.ID == 0 && operation == "Save")
                {
                    context.UserRatings.Add(objUserRatings);
                    context.SaveChanges();
                }
                else if (objUserRatings.ID != 0 && operation == "Update")
                {
                    var forUpdateUserRating = (from upusr in context.UserRatings.Where(m => m.ID == objUserRatings.ID) select upusr).First();
                    if (forUpdateUserRating.ID > 0)
                    {
                        // foreach (User usr in forUpdateUser)
                        // {
                        forUpdateUserRating.ID = objUserRatings.ID;
                        forUpdateUserRating.UserID = objUserRatings.UserID;
                        forUpdateUserRating.Comments = objUserRatings.Comments;
                        forUpdateUserRating.Rating = objUserRatings.Rating;
                        // } 
                        // context.User.Add(objUser);
                        context.SaveChanges();
                    }
                }

                else if (objUserRatings.ID != 0 && operation == "Delete")
                {
                    var forDeleteUser = (from delUsr in context.UserRatings.Where(m => m.ID == objUserRatings.ID) select delUsr).First();
                    if (forDeleteUser.ID > 0)
                    {
                        context.UserRatings.Remove(forDeleteUser);
                        context.SaveChanges();
                    }
                }

                return objUserRatings;
            }
            catch (Exception ex)
            {
                throw ex;
            } 
        }

        public List<UserRatings> GetAllUserRatings()
        {
            try
            {
                var allUserRatings = from alusrRatings in context.UserRatings select alusrRatings;
                return allUserRatings.ToList();
            }
            catch(Exception ex)
            {
                throw (ex);
            } 
        }

        public UserRatings GetUserRatingsForUpdate(Int32 id)
        {
            try 
            {
                var lstUserRatings = (from usrRatings in context.UserRatings.Where(m=>m.ID==id) select usrRatings ).FirstOrDefault(); 
                return lstUserRatings;
            }
            catch(Exception ex)
            {
                throw(ex);
            } 
        }

        public string checkValidUserForCommentRating(string user)
        {
            try
            {
                string getUserID = string.Empty;
                var getValidCommentRatingUser = (from usr in context.User.Where(m => m.IsActive == true && m.UserID == user) select usr.UserID).FirstOrDefault();

                return getUserID = getValidCommentRatingUser == null ? "" : getValidCommentRatingUser.ToString();
            }

            catch(Exception ex)
            {
             throw(ex);
            }
           
        
        }

        public string SaveRegistrationInfo(UserActivationLink lstUser)
        {
             string usd = string.Empty;
             SqlCommand command = new SqlCommand();
             SqlConnection con = new SqlConnection(constrng);
                try
                {
                    command.Connection = con;
                    con.Open();
                    // command.Transaction = this.Transaction;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "select UserID from [UserAccess].[User]  where UserID='" + lstUser.UserID + "'";
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable(); 
                    sda.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {
                        usd = "1"; // show user already exists from user table

                    }

                    else if (dt.Rows.Count <= 0)
                    {
                        command.Connection = con;
                        con.Open();
                        // command.Transaction = this.Transaction;
                        command.CommandType = CommandType.Text;
                        command.CommandText = "select UserID from UserActivationLink  where UserID='" + lstUser.UserID + "'";
                        SqlDataAdapter sdaUsrActLink = new SqlDataAdapter(command);
                        DataTable dtUsrActLink = new DataTable();
                        sdaUsrActLink.Fill(dtUsrActLink);
                        con.Close();

                        if (dtUsrActLink.Rows.Count > 0)
                        {
                            usd = "2"; // show user mail already send for active account  from UserActivationLink table

                        }

                        else if (dtUsrActLink.Rows.Count<=0)
                        {
                            command.Connection = con;
                            con.Open();

                            // command.Transaction = this.Transaction;
                            command.CommandType = CommandType.StoredProcedure;
                            command.CommandText = "Insert_UserActivationLink";
                            command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = lstUser.UserID;
                            command.Parameters.Add("@Email", SqlDbType.VarChar).Value = lstUser.Email;
                            command.Parameters.Add("@Password", SqlDbType.VarChar).Value = lstUser.Password;
                            command.Parameters.Add("@SecurityQuestion", SqlDbType.VarChar).Value = lstUser.SecurityQuestion;

                            command.Parameters.Add("@Answer", SqlDbType.VarChar).Value = lstUser.Answer;
                            command.Parameters.Add("@ActivationCode", SqlDbType.VarChar).Value = lstUser.ActivationCode;
                            command.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = lstUser.FirstName;
                            command.Parameters.Add("@LastName", SqlDbType.VarChar).Value = lstUser.LastName;

                            command.Parameters.Add("@CapchaCode", SqlDbType.VarChar).Value = lstUser.CapchaCode;
                            command.Parameters.Add("@Phone", SqlDbType.VarChar).Value = lstUser.Phone;
                            command.Parameters.Add("@Address", SqlDbType.VarChar).Value = lstUser.Address;
                            command.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = lstUser.CompanyName;
                            command.Parameters.Add("@IPAddress", SqlDbType.VarChar).Value = lstUser.IPAddress;

                            //command.Parameters.Add("@OutPutForDuplicate", SqlDbType.VarChar, 200).Direction = ParameterDirection.Output;
                            command.ExecuteNonQuery();
                            con.Close();
                            usd = "3";// show successfull message for insert into UserActivationLink table //command.Parameters["@OutPutForDuplicate"].Value.ToString();

                        
                        }
                    }
                     
                    return usd;

                }
                catch (Exception ex)
                {
                    throw (ex);
                }
        }

        public void SaveActivationCode( UserActivationLink ual)
        {
            try
            {
                //Int32 userID = 0;
                SqlCommand command = new SqlCommand();
                SqlConnection con = new SqlConnection(constrng);
                command.Connection = con;
                con.Open(); 
                command.CommandType = CommandType.Text;
                command.CommandText = "INSERT INTO UserActivationLink VALUES(@UserId, @ActivationCode)";
                command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = ual.UserID;
                command.Parameters.Add("@ActivationCode", SqlDbType.VarChar).Value = ual.ActivationCode; 
                command.ExecuteNonQuery();
                con.Close();
                 
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }

        public string SetactivationNdeleteCode(string activationCode)
        {
            string userIDForSession = "";
            SqlCommand command = new SqlCommand();
            SqlConnection con = new SqlConnection(constrng);
                try
                {
                    command.Connection = con;
                    con.Open();
                    // command.Transaction = this.Transaction;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "Select * from UserActivationLink  where ActivationCode ='"+activationCode+"'";
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable(); 
                    sda.Fill(dt);
                    con.Close();
                    if(dt.Rows.Count>0)
                    {
                        command.Connection = con;
                        con.Open();
                        // command.Transaction = this.Transaction;
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "Insert_User";
                        command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = dt.Rows[0]["UserID"].ToString();
                        command.Parameters.Add("@Email", SqlDbType.VarChar).Value = dt.Rows[0]["Email"].ToString();
                        command.Parameters.Add("@Password", SqlDbType.VarChar).Value = dt.Rows[0]["Password"].ToString();
                        command.Parameters.Add("@SecurityQuestion", SqlDbType.VarChar).Value = dt.Rows[0]["SecurityQuestion"].ToString();

                        command.Parameters.Add("@Answer", SqlDbType.VarChar).Value = dt.Rows[0]["Answer"].ToString();
                        command.Parameters.Add("@IsActive", SqlDbType.Bit).Value = true;
                        command.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = dt.Rows[0]["FirstName"].ToString();
                        command.Parameters.Add("@LastName", SqlDbType.VarChar).Value = dt.Rows[0]["LastName"].ToString();

                        command.Parameters.Add("@CapchaCode", SqlDbType.VarChar).Value = dt.Rows[0]["CapchaCode"].ToString();
                        command.Parameters.Add("@Phone", SqlDbType.VarChar).Value = dt.Rows[0]["Phone"].ToString();
                        command.Parameters.Add("@Address", SqlDbType.VarChar).Value = dt.Rows[0]["Address"].ToString();
                        command.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = dt.Rows[0]["CompanyName"].ToString();
                        command.Parameters.Add("@IPAddress", SqlDbType.VarChar).Value = dt.Rows[0]["IPAddress"].ToString();

                        //command.Parameters.Add("@OutPutForDuplicate", SqlDbType.VarChar, 200).Direction = ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        con.Close();
                       // usd = command.Parameters["@OutPutForDuplicate"].Value.ToString();

                    }
                    //command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = lstUser.UserID;
                    //using (SqlConnection con = new SqlConnection(constr))
                    //{
                    //    using (SqlCommand cmd = new SqlCommand("DELETE FROM UserActivation WHERE ActivationCode = @ActivationCode"))
                    //    {
                    //        using (SqlDataAdapter sda = new SqlDataAdapter())
                    //        {
                    //            cmd.CommandType = CommandType.Text;
                    //            cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                    //            cmd.Connection = con;
                    //            con.Open();
                    //            int rowsAffected = cmd.ExecuteNonQuery();
                    //            con.Close();
                    //            if (rowsAffected == 1)
                    //            {
                    //                ltMessage.Text = "Activation successful.";
                    //            }
                    //            else
                    //            {
                    //                ltMessage.Text = "Invalid Activation code.";
                    //            }
                    //        }
                    //    }
                    //}
                    ////Int32 userID = 0;
                    
                    //string sqlQuery =     "  select UserID from USerActivationLink where ActivationCode='"+activationCode+"' "
                    //                    + "  update [UserAccess].[User]  set IsActive='true'   where UserID=(select UserID from USerActivationLink "
                    //                    + "  where ActivationCode='"+activationCode+"' )"
                    //                    + "  DELETE from USerActivationLink where ActivationCode='"+activationCode+"'";

                    string sqlQuery = "  select UserID from USerActivationLink where ActivationCode='" + activationCode + "' " 
                                      + "  DELETE from USerActivationLink where ActivationCode='" + activationCode + "'";
                    command.Connection = con;
                    con.Open();
                    command.CommandType = CommandType.Text;
                    command.CommandText = sqlQuery;
                    SqlDataAdapter sdap = new SqlDataAdapter(command);
                    DataTable dtTbl = new DataTable();
                    sdap.Fill(dtTbl);
                    con.Close();
                    if (dtTbl.Rows.Count > 0)
                    {
                        userIDForSession = dtTbl.Rows[0]["UserID"].ToString();
                    }

                    //Int32 rowsAffected = command.ExecuteNonQuery();



                    return userIDForSession;

                }
                catch (Exception ex)
                {
                    throw (ex);
                } 
        }


        public Group GetGroupForNewRegistrationCommonUser()
        {
            Group objGroup = new Group();
            try
            {
                var group = (from grp in context.Group.Where(m => m.GroupName == "NewRegistrationCommonUserGroup") select grp).FirstOrDefault();

                if (group==null)
                {
                    group = objGroup;
                   // return objGroup;
                }
                else if (group!= null)
                {
                    return group;
                }
                return group;
            }
            catch (Exception ex)
            {
                throw (ex);
            }

        }

        public Role GetRoleForNewRegistrationCommonUser()
        {
            Role objRole = new Role();
            try
            {
                var role = (from rl in context.Role.Where(m => m.RoleName == "NewRegistrationCommonUserRole") select rl).FirstOrDefault();

                if (role == null)
                {
                    role = objRole;
                    // return objGroup;
                }
                else if (role!= null)
                {
                    return role;
                }
                return role;
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }

        public List<RoleDetailGetSP> GetAllUserRoleToAssignNewRegistrationUserRole()
        {
            //string sqlQuery =  " select rd.AllChk,rd.CanApprove,rd.CanCheck,rd.CanDelete,rd.CanInsert,rd.CanPreview,rd.CanSelect, 0 ParentID, '' Caption , "
            //                  + " rd.CanSend,rd.CanUpdate, CAST(rd.MenuID as int) MenuID from [UserAccess].[RoleDetail] rd inner join [UserAccess].[Role]  "
            //                  +" r on    r.RoleCode = rd.RoleCode where r.RoleName='AllUser' "; // original ok

            string sqlQuery = " select rd.AllChk,rd.CanApprove,rd.CanCheck,rd.CanDelete,rd.CanInsert,rd.CanPreview,rd.CanSelect, 0 ParentID, '' Caption , "
                              + " rd.CanSend,rd.CanUpdate, CAST(rd.MenuID as int) MenuID from [UserAccess].[RoleDetail] rd inner join [UserAccess].[Role]  "
                              + " r on    r.RoleCode = rd.RoleCode where r.RoleName='AllUser'";

            return context.Database.SqlQuery<RoleDetailGetSP>(sqlQuery).ToList(); 
        }


        public bool InduviduaPageLoadathentication(string pageName, string userID)
        {
            bool isAtntctd = false;
            string userid = "";
            if (userID == "" || userID == null)
            {
                userid = "0";
            }
            else
            {
                userid = userID;
            }

            SqlCommand command = new SqlCommand();
            SqlConnection con = new SqlConnection(constrng);

            con.Open(); 
            command.Connection = con;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "GetMenuByUserID";//StoredProcedureNames.MenuGet;
            command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = userid;
            //command.Parameters.Add("@Option", SqlDbType.Int).Value = DBConstants.DataLoadingOption.LoadWithSpecialFilter;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt); 
            con.Close();
            if(dt.Rows.Count>0)
            {
                for (int k = 0; k < dt.Rows.Count;k++)
                {
                    string[] captionArr = dt.Rows[k]["Location"].ToString().Split('.');
                    if (captionArr[0] == pageName)
                    {
                        isAtntctd = true;
                    }
                }
            }

            return isAtntctd;
        
        }


        public bool setroupNRoleNewregistreted(string userID)
        {
            bool msg = false; 
            string groupCode = "";

            SqlCommand command = new SqlCommand();
            SqlConnection con = new SqlConnection(constrng);

            con.Open();
            command.Connection = con;
            command.CommandType = CommandType.Text;
            command.CommandText = "select gu.GroupCode from  [UserAccess].[GroupUsers] gu inner join  [UserAccess].[User] u   on u.UserID=gu.UserID where u.DefaultAllViwerForCommon='true'";//StoredProcedureNames.MenuGet;
           // command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = userid;
            //command.Parameters.Add("@Option", SqlDbType.Int).Value = DBConstants.DataLoadingOption.LoadWithSpecialFilter;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                for (int k = 0; k < dt.Rows.Count; k++)
                {
                    groupCode = dt.Rows[k]["GroupCode"].ToString();  
                }

                con.Open();
                command.Connection = con;
                command.CommandType = CommandType.Text;
                command.CommandText = "Insert into [UserAccess].[GroupUsers] (UserID,GroupCode) values('" + userID + "','" + groupCode + "'); select UserID from [UserAccess].[GroupUsers] where UserID='"+userID+"'";
                SqlDataAdapter sqlDataAdapterUsr = new SqlDataAdapter(command);
                DataTable dtUsr = new DataTable();
                sqlDataAdapterUsr.Fill(dtUsr);
                con.Close();
                if (dtUsr.Rows.Count > 0)
                {

                    msg = true;
                }

                else
                {
                    msg = false;
                }

            }

            return msg;
        }


        /*----- Used For IDospsale-----*/

        private bool disposed = false; 
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}