using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace CollegePlacementManagementSystem
{
    public partial class student_profile_update : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string q = "UPDATE student SET uname=@u, pass=@p WHERE id=@id";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@u", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p", TextBox2.Text);
                cmd.Parameters.AddWithValue("@id", Session["id"]);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Profile Updated');</script>");
            }
        }
    }
}