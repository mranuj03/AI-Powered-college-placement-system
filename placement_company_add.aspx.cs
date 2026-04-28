using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CollegePlacementManagementSystem
{
    public partial class placement_company_add : Page
    {
        string connectionString = ConfigurationManager
                                    .ConnectionStrings["ConString"]
                                    .ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "INSERT INTO placement(title,cname,location,email,cno,pos,pro,date1,sal) " +
                       "VALUES(@t,@c,@l,@e,@cn,@p,@pr,@d,@s)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(q, con);

                cmd.Parameters.AddWithValue("@t", TextBox1.Text);
                cmd.Parameters.AddWithValue("@c", TextBox2.Text);
                cmd.Parameters.AddWithValue("@l", TextBox3.Text);
                cmd.Parameters.AddWithValue("@e", TextBox4.Text);
                cmd.Parameters.AddWithValue("@cn", TextBox5.Text);
                cmd.Parameters.AddWithValue("@p", TextBox6.Text);
                cmd.Parameters.AddWithValue("@pr", TextBox7.Text);
                cmd.Parameters.AddWithValue("@d", TextBox8.Text);
                cmd.Parameters.AddWithValue("@s", TextBox9.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Write("<script>alert('Placement Added Successfully');</script>");
        }
    }
}