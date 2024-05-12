using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SweetAlert
{
    public partial class Alert : System.Web.UI.Page
    {
        public enum MessageType { success,danger,info,warning};
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowMessage(string Title,string message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "AlertMessage('" + Title + "','" + message + "','" + type + "');", true);
        }

        protected void BtnClick_ServerClick(object sender, EventArgs e)
        {
            ShowMessage("Hi Guys", "Some Error Occured", MessageType.warning);
        }

        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            ShowMessage("Hi Guys", "Welcome to my blog.", MessageType.success);
        }

        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            ShowMessage("Hi Guys", "Welcome to my blog. You Can Search whatever you want.", MessageType.info);
        }

        protected void Button3_ServerClick(object sender, EventArgs e)
        {
            ShowMessage("Hi Guys", "Please try Again", MessageType.danger);
        }
    }
}