using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegePlacementManagementSystem
{
    public partial class login_placement : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string q = "SELECT COUNT(*) FROM placement_officer WHERE username=@u AND password=@p";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@u", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@p", TextBox2.Text.Trim());

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    Response.Redirect("admin_dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Login');</script>");
                }
            }
        }
    }
}