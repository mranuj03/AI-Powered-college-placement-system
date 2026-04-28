using System;
using System.Web;
using System.Web.UI;

namespace CollegePlacementManagementSystem
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ADMIN LOGIN SESSION CHECK
            if (Session["admin"] == null)
            {
                // User NOT logged in → redirect to login page
                Response.Redirect("login_placement.aspx");
            }
        }
    }
}