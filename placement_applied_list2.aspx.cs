using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegePlacementManagementSystem
{
    public partial class placement_applied_list2 : Page
    {
        string connectionString = ConfigurationManager
                                    .ConnectionStrings["ConString"]
                                    .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label t1 = (Label)e.Item.FindControl("Label1");

            string s = "";

            switch (e.CommandName)
            {
                case "delete":

                    Session["id"] = t1.Text;

                    s = "delete from company where id=" + t1.Text;

                    using (SqlConnection db = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(s, db);
                        db.Open();
                        cmd.ExecuteNonQuery();
                        db.Close();
                    }

                    Response.Write("<script>alert('Drop Company Successfully');</script>");
                    break;
            }

            display();
        }

        public void display()
        {
            using (SqlConnection db = new SqlConnection(connectionString))
            {
                string s = "select * from company where cname='" + Session["cname"] + "'";

                SqlDataAdapter adp = new SqlDataAdapter(s, db);
                DataSet ds = new DataSet();

                adp.Fill(ds, "company");

                Repeater1.DataSource = ds.Tables["company"];
                Repeater1.DataBind();
            }
        }
    }
}
