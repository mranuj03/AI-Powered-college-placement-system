using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegePlacementManagementSystem
{
    public partial class login_student : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            if (email == "" || password == "")
            {
                Response.Write("<script>alert('Please enter Email and Password');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                string q = "SELECT id,name FROM student WHERE email=@email AND password=@password";

                SqlCommand cmd = new SqlCommand(q, con);

                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@password", password);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["id"] = dr["id"].ToString();
                    Session["name"] = dr["name"].ToString();

                    Response.Redirect("~/student_home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password');</script>");
                }

                dr.Close();
            }
        }
    }
}