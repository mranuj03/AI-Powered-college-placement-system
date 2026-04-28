using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace CollegePlacementManagementSystem
{
    public partial class placement_applied_list1 : Page
    {
        string connectionString = ConfigurationManager
                                    .ConnectionStrings["ConString"]
                                    .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection db = new SqlConnection(connectionString))
                {
                    db.Open();

                    string s = "select * from student";
                    SqlCommand cmd = new SqlCommand(s, db);
                    SqlDataReader r = cmd.ExecuteReader();

                    if (r.Read())
                    {
                        try
                        {
                            TextBox1.Text = r[1].ToString();
                            DropDownList1.Text = r[2].ToString();
                            TextBox2.Text = r[3].ToString();
                            TextBox3.Text = r[4].ToString();
                            TextBox4.Text = r[5].ToString();
                            TextBox5.Text = r[6].ToString();
                            TextBox6.Text = r[7].ToString();
                            TextBox7.Text = r[8].ToString();
                            TextBox8.Text = r[9].ToString();
                            TextBox9.Text = r[10].ToString();
                            TextBox10.Text = r[11].ToString();
                            TextBox11.Text = r[12].ToString();
                            TextBox12.Text = r[13].ToString();
                            TextBox13.Text = r[14].ToString();

                            HyperLink1.NavigateUrl = r[15].ToString();
                        }
                        catch (Exception)
                        {
                        }

                        Image1.ImageUrl = r[16].ToString();
                    }

                    db.Close();
                }
            }
        }
    }
}
