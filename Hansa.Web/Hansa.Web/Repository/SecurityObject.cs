using DomainClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Hansa.Web.Repository
{
    public class SecurityObject
    {
        private IRepository objRepository;

        public SecurityObject()
        {
            this.objRepository = new Repository();
        }

        public SecurityObject(IRepository objRepository)
        {
            this.objRepository = objRepository;
        }
        // Repository objRepository = new Repository();

        public string GetDefaultUser()
        {
            return objRepository.GetDefaultUser();
        }

        public string GetIsAdmin()
        {
            return objRepository.GetIsAdmin();
        }
        public User GetByUserNameAndPassword(string userName, string password)
        {
            return objRepository.GetByUserNameAndPassword(userName, password);
        }
        public List<User> GetAllUser()
        {
            return objRepository.GetAllUser();
        }

        public List<Group> GetGroupAllForPopup()
        {
            return objRepository.GetGroupAllForPopup();
        }

        public User SaveUpdateDeleteUser(User objUser, string operation)
        {
            return objRepository.SaveUpdateDeleteUser(objUser, operation);
        }

        public List<Menu> GetAllMenuType()
        {
            return objRepository.GetAllMenuType();
        }

        public List<RoleDetailGetSP> RoleDetailGetSPForGrid()
        {
            return objRepository.RoleDetailGetSPForGrid();

        }

        public List<GroupUsers> GetAllGroupUsersByGroupCode(string groupCode)
        {
            return objRepository.GetAllGroupUsersByGroupCode(groupCode);
        }

        public List<GroupRole> GetAllGroupRoleByGroupCode(string groupCode)
        {
            return objRepository.GetAllGroupRoleByGroupCode(groupCode);
        }
        public DataTable RoleDetailGetSPForGridWithDataTable()
        {

            return objRepository.RoleDetailGetSPForGridWithDataTable();
        }

        public DataTable RoleDetailGetSPForGridWithroleCodeForDT(string roleCode)
        {
            return objRepository.RoleDetailGetSPForGridWithroleCodeForDT(roleCode);

        }
        public List<RoleDetailGetSP> RoleDetailGetSPForGridWithroleCode(string roleCode)
        {
            return objRepository.RoleDetailGetSPForGridWithroleCode(roleCode);
        }

        public DataSet GetAll()
        {
            return objRepository.GetAll();
        }
        public List<User> GetAllUserFGrid()
        {
            return objRepository.GetAllUserFGrid();
        }
        public List<Role> GetAllRoleFGrid()
        {
            return objRepository.GetAllRoleFGrid();
        }

        public DataTable GetAllRole()
        {
            return objRepository.GetAllRole();
        }

        public DataTable GetUserForUpdate(string id)
        {
            return objRepository.GetUserForUpdate(id);
        }

        public bool Update(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList)
        { 
            return objRepository.Update(roleMasterList, roleDetailsList);
        }

        public bool Save(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList)
        { 
            return objRepository.Save(roleMasterList, roleDetailsList);
        }

        public bool SaveUpdateDeleteForUserRoleassaign(GroupUserProvider groupUserProvider, List<GroupUserProvider> UserList, List<GroupUserProvider> RoleList, string btnSave)
        {
            return objRepository.SaveUpdateDeleteForUserRoleassaign(groupUserProvider, UserList, RoleList, btnSave);
        }
        public List<Role> findRole()
        {
            return objRepository.findRole(); 
        }
        public UserRatings SaveUpdateDeleteUserFeedback(UserRatings objUserRatings, string operation)
        {
            return objRepository.SaveUpdateDeleteUserFeedback(objUserRatings,operation);
        }

        public List<UserRatings> GetAllUserRatings()
        {
            return objRepository.GetAllUserRatings();
        }

        public UserRatings GetUserRatingsForUpdate(Int32 id)
        {
            return objRepository.GetUserRatingsForUpdate(id);
        }

        public string checkValidUserForCommentRating(string user)
        {
           return  objRepository.checkValidUserForCommentRating(user);
        }

        public string SaveRegistrationInfo(UserActivationLink lstUser)
        {

            return objRepository.SaveRegistrationInfo(lstUser);
        }

        public void SaveActivationCode(UserActivationLink ual)
        {
             objRepository.SaveActivationCode(ual);
        }

        public string SetactivationNdeleteCode(string activationCode)
        {
            return objRepository.SetactivationNdeleteCode(activationCode);
        }

        public Group GetGroupForNewRegistrationCommonUser()
        {
            return objRepository.GetGroupForNewRegistrationCommonUser();
        }

        public Role GetRoleForNewRegistrationCommonUser()
        {
            return objRepository.GetRoleForNewRegistrationCommonUser();
        }

        public List<RoleDetailGetSP> GetAllUserRoleToAssignNewRegistrationUserRole()
        {
            return objRepository.GetAllUserRoleToAssignNewRegistrationUserRole();
        }

        public bool InduviduaPageLoadathentication(string pageName, string userID)
        {
            return objRepository.InduviduaPageLoadathentication(pageName,userID);
        }

        public bool setroupNRoleNewregistreted(string userID)
        {
            return objRepository.setroupNRoleNewregistreted(userID);
        
        }
    }
}