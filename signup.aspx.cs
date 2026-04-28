using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace CollegePlacementManagementSystem
{
    public partial class signup : Page
    {
        string connectionString = ConfigurationManager
                                    .ConnectionStrings["ConString"]
                                    .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // VB me db.Open() tha
            // C# me hum connection button click par open karenge (better practice)
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection db = new SqlConnection(connectionString))
            {
                db.Open();

                string s = "select * from student where uname='" + TextBox5.Text + "'";
                SqlCommand cmd1 = new SqlCommand(s, db);
                SqlDataReader r = cmd1.ExecuteReader();

                if (r.Read())
                {
                    Response.Write("<script>alert('Username Already Found');</script>");
                }
                else
                {
                    r.Close();

                    s = "insert into student (sname,gender,dob,cno,email,uname,pass,st) values('"
                        + TextBox1.Text + "','"
                        + DropDownList1.Text + "','"
                        + TextBox2.Text + "','"
                        + TextBox3.Text + "','"
                        + TextBox4.Text + "','"
                        + TextBox5.Text + "','"
                        + TextBox6.Text + "','No')";

                    SqlCommand cmd = new SqlCommand(s, db);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Signup Successfully');</script>");
                }

                db.Close();
            }
        }
    }
}
