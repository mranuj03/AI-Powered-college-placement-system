<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>

<head>

<title>Placement Officer Signup</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:linear-gradient(135deg,#667eea,#764ba2);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
font-family:Arial;
}

.card{
width:420px;
border:none;
border-radius:15px;
box-shadow:0 10px 30px rgba(0,0,0,0.3);
}

.card-header{
background:#2563eb;
color:white;
text-align:center;
font-size:22px;
border-radius:15px 15px 0 0;
}

</style>

</head>

<body>

<form runat="server">

<div class="card">

<div class="card-header">
Placement Officer Signup
</div>

<div class="card-body">

<label>Username</label>

<asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<label>Password</label>

<asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

<br>

<label>Date Of Birth</label>

<asp:TextBox ID="dob" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

<br>

<label>Upload Photo</label>

<asp:FileUpload ID="photo" runat="server" CssClass="form-control"/>

<br>

<asp:Button ID="Button1"
runat="server"
Text="Create Account"
CssClass="btn btn-success w-100"
OnClick="RegisterUser"/>

<br><br>

<asp:Label ID="msg" runat="server"></asp:Label>

</div>

</div>

</form>

</body>
</html>


<script runat="server">

protected void RegisterUser(object sender,EventArgs e)
{

string u = username.Text;
string p = password.Text;
string d = dob.Text;

string photoName = "";

if(photo.HasFile)
{
photoName = photo.FileName;

photo.SaveAs(Server.MapPath("upload/")+photoName);
}

string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(cs);

con.Open();

/* auto create table */

string tableQuery = @"
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='placement_officer')
CREATE TABLE placement_officer(
id INT IDENTITY(1,1) PRIMARY KEY,
username VARCHAR(50),
password VARCHAR(50),
dob DATE,
photo VARCHAR(200)
)";

System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(tableQuery,con);
cmd1.ExecuteNonQuery();

/* insert data */

string q = "insert into placement_officer(username,password,dob,photo) values(@u,@p,@d,@ph)";

System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(q,con);

cmd.Parameters.AddWithValue("@u",u);
cmd.Parameters.AddWithValue("@p",p);
cmd.Parameters.AddWithValue("@d",d);
cmd.Parameters.AddWithValue("@ph",photoName);

cmd.ExecuteNonQuery();

msg.Text="<span style='color:green'>Account Created Successfully</span>";

con.Close();

}

</script>