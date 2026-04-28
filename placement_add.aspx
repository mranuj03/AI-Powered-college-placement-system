<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placement_company_add.aspx.cs" Inherits="CollegePlacementManagementSystem.placement_company_add" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Placement</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<form id="form1" runat="server">

<div class="container mt-5">

<h2>Add Placement</h2>

<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control mb-2" placeholder="Title"></asp:TextBox>
<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control mb-2" placeholder="Company Name"></asp:TextBox>
<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control mb-2" placeholder="Location"></asp:TextBox>
<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control mb-2" placeholder="Email"></asp:TextBox>
<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control mb-2" placeholder="Contact"></asp:TextBox>
<asp:TextBox ID="TextBox6" runat="server" CssClass="form-control mb-2" placeholder="Position"></asp:TextBox>
<asp:TextBox ID="TextBox7" runat="server" CssClass="form-control mb-2" placeholder="Profile"></asp:TextBox>
<asp:TextBox ID="TextBox8" runat="server" CssClass="form-control mb-2" placeholder="Date"></asp:TextBox>
<asp:TextBox ID="TextBox9" runat="server" CssClass="form-control mb-2" placeholder="Salary"></asp:TextBox>

<asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" />

</div>

</form>

</body>
</html>