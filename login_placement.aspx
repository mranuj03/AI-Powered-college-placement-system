<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="login_placement.aspx.cs"
    Inherits="CollegePlacementManagementSystem.login_placement" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Placement Officer</title>

    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/all.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="container" style="margin-top:80px;">
            <div class="row">

                <div class="col-sm-6">
                    <img class="img-fluid" src="img/4.jpg" />
                </div>

                <div class="col-sm-4">
                    <h4>Login Placement Officer</h4>

                    <div class="form-group pt-3">
                        <label>User Name</label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group pt-3">
                        <label>Password</label>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group pt-3">
                       <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        <br /><br />

<a href="placement_signup.aspx" style="font-weight:bold;color:#2563eb;">
Create Placement Officer Account
</a>
                    </div>
                </div>

            </div>
        </div>

    </form>
</body>
</html>