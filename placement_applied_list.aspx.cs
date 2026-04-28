using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegePlacementManagementSystem
{
    public partial class placement_applied_list : Page
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
            Label t2 = (Label)e.Item.FindControl("Label3");
            LinkButton l1 = (LinkButton)e.Item.FindControl("LinkButton2");
            HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");

            string s = "";
            string tm = DateTime.Now.ToString("hh:mm:ss");

            switch (e.CommandName)
            {
                case "student":
                    Session["sid"] = h1.Value;
                    Response.Redirect("placement_applied_list1.aspx");
                    break;

                case "company":
                    Session["cname"] = l1.Text;
                    Response.Redirect("placement_applied_list2.aspx");
                    break;

                case "delete":

                    s = "delete from apply1 where id=" + t1.Text;

                    using (SqlConnection db = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(s, db);
                        db.Open();
                        cmd.ExecuteNonQuery();
                        db.Close();
                    }

                    Response.Write("<script>alert('Placement Declained');</script>");
                    break;
            }

            display();
        }

        public void display()
        {
            using (SqlConnection db = new SqlConnection(connectionString))
            {
                string query = "select * from apply1";

                SqlDataAdapter adp = new SqlDataAdapter(query, db);
                DataSet ds = new DataSet();

                adp.Fill(ds, "apply1");

                Repeater1.DataSource = ds.Tables["apply1"];
                Repeater1.DataBind();
            }
        }
    }
}
