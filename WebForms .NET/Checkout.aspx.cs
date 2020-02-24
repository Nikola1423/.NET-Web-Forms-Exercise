using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.NET
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Text = Session["Username"]+ " you selected the following items: " + (string)Session["CheckoutList"] + ". Your full price will be: "+ Session["Price"] + " .";
        }

       
    }
}