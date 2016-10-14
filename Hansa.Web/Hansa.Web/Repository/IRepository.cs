using DomainClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Hansa.Web.Repository
{
    public interface IRepository : IDisposable
    {
        List<User> GetAllUser();
        List<Menu> GetAllMenuType();
        string GetDefaultUser();
        string GetIsAdmin();
         
        User GetByUserNameAndPassword(string userName, string password);
        List<Group> GetGroupAllForPopup();
        User SaveUpdateDeleteUser(User objUser, string operation);
        List<RoleDetailGetSP> RoleDetailGetSPForGrid();
        List<GroupUsers> GetAllGroupUsersByGroupCode(string groupCode);
        List<GroupRole> GetAllGroupRoleByGroupCode(string groupCode);
        DataTable RoleDetailGetSPForGridWithDataTable();
        DataTable RoleDetailGetSPForGridWithroleCodeForDT(string roleCode);
        List<RoleDetailGetSP> RoleDetailGetSPForGridWithroleCode(string roleCode);
        DataSet GetAll();
        List<User> GetAllUserFGrid();
        List<Role> GetAllRoleFGrid();
        DataTable GetAllRole();
        DataTable GetUserForUpdate(string id);
        bool Update(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList);
        bool Save(Role roleMasterList, List<RoleDetailGetSP> roleDetailsList);
        bool SaveUpdateDeleteForUserRoleassaign(GroupUserProvider groupUserProvider, List<GroupUserProvider> UserList, List<GroupUserProvider> RoleList, string btnSave);
        List<Role> findRole();

        UserRatings SaveUpdateDeleteUserFeedback(UserRatings objUserRatings,string operation);
        List<UserRatings> GetAllUserRatings();
        UserRatings GetUserRatingsForUpdate(Int32 id);
        string checkValidUserForCommentRating(string user); 

        string SaveRegistrationInfo(UserActivationLink lstUser); 
        void SaveActivationCode(UserActivationLink ual);

        string SetactivationNdeleteCode(string activationCode);

        Group GetGroupForNewRegistrationCommonUser();
        Role GetRoleForNewRegistrationCommonUser();
        List<RoleDetailGetSP> GetAllUserRoleToAssignNewRegistrationUserRole();
        bool InduviduaPageLoadathentication(string pageName, string userID);
        bool setroupNRoleNewregistreted(string userID);

    }
}