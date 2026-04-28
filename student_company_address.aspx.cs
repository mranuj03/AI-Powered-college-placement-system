using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegePlacementManagementSystem
{
    public partial class student_company_address : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
        SqlConnection db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = new SqlConnection(connectionString);

            if (!IsPostBack)
            {
                db.Open();
                display();
                db.Close();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Label t1;
            string s;

            t1 = (Label)e.Item.FindControl("Label1");

            string tm = DateTime.Now.ToString("hh:mm:ss");

            switch (e.CommandName)
            {
                case "delete":

                    Session["id"] = t1.Text;

                    s = "delete from company where id=" + t1.Text;

                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(s, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }

                    Response.Write("<script>alert('Drop Company Successfully');</script>");
                    break;
            }

            display();
        }

        public void display()
        {
            string s;
            s = "select * from company where cname='" + Session["cname"] + "'";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlDataAdapter adp = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();

                adp.Fill(ds, "company");

                Repeater1.DataSource = ds.Tables["company"];
                Repeater1.DataBind();
            }
        }
    }
}
