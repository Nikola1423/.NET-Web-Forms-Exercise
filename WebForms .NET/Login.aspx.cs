using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.NET
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      

        protected void LoginB_Click1(object sender, EventArgs e)
        {
            Session["Username"] = UsernameInput.Text;
            Response.Redirect("SelectItems.aspx");

        }
    }
}