using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Hansa.Web.Helper
{
    public class MessageHelper
    {
        public static void ShowAlertMessage(string error)
        {
            var page = HttpContext.Current.Handler as Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }

        public static void Alert(string message)
        {
            var page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, typeof(Page), "Alert", "alert(' " + message + " ' )", true);
        }
    }
}