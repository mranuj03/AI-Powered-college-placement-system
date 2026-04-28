using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CollegePlacementManagementSystem
{
    public partial class student_placement_applied_list : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("login_student.aspx");
            }
            Response.Write("SESSION SID = " + Session["id"]);
            LoadAppliedJobs();   
        }

        void LoadAppliedJobs()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string q = @"SELECT p.title, p.cname, a.apply_date, a.status
                             FROM apply1 a
                             INNER JOIN placement p ON a.pid = p.id
                             WHERE a.sid = @sid
                             ORDER BY a.id DESC";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@sid", Convert.ToInt32(Session["id"]));

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}