using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegePlacementManagementSystem
{
    public partial class placement_display : Page
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

                    s = "delete from placement where id=" + t1.Text;

                    using (SqlConnection db = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(s, db);
                        db.Open();
                        cmd.ExecuteNonQuery();
                        db.Close();
                    }

                    Response.Write("<script>alert('Drop Placement Successfully');</script>");
                    break;
            }

            display();
        }

        public void display()
        {
            using (SqlConnection db = new SqlConnection(connectionString))
            {
                string query = "select * from placement";

                SqlDataAdapter adp = new SqlDataAdapter(query, db);
                DataSet ds = new DataSet();

                adp.Fill(ds, "placement");

                Repeater1.DataSource = ds.Tables["placement"];
                Repeater1.DataBind();
            }
        }
    }
}
