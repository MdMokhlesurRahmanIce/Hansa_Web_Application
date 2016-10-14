using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DomainClass
{
   public class RoleDetailGetSP
    {
       public int MenuID { get; set; }
       public int? ParentID { get; set; }
       public string Caption { get; set; }

       public bool? CanSelect { get; set; }
       public bool? CanInsert { get; set; }
       public bool? CanUpdate { get; set; }
       public bool? CanDelete { get; set; }
       public bool? CanSend { get; set; }
       public bool? CanCheck { get; set; }
       public bool? CanApprove { get; set; }

       public bool? CanPreview { get; set; }
       public bool? AllChk { get; set; }

    }
}
