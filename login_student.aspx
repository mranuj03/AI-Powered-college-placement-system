<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master"
AutoEventWireup="true"
CodeBehind="login_student.aspx.cs"
Inherits="CollegePlacementManagementSystem.login_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.login-box{
max-width:420px;
margin:auto;
margin-top:50px;
background:white;
padding:30px;
border-radius:12px;
box-shadow:0 8px 25px rgba(0,0,0,0.12);
}

.login-title{
font-size:28px;
font-weight:bold;
text-align:center;
margin-bottom:25px;
color:#0f172a;
}

.form-label{
font-weight:600;
margin-bottom:6px;
display:block;
}

.btn-login{
width:100%;
padding:12px;
font-size:18px;
font-weight:bold;
border:none;
border-radius:8px;
background:#16a34a;
color:white;
cursor:pointer;
transition:0.3s;
}

.btn-login:hover{
background:#15803d;
}

.signup-link{
display:block;
text-align:center;
margin-top:15px;
font-weight:600;
text-decoration:none;
}

.left-img{
margin-top:40px;
}

</style>

</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div class="container">

<div class="row">

<div class="col-md-6 left-img">
<img src="img/3.jpg" class="img-fluid" />
</div>

<div class="col-md-6">

<div class="login-box">

<div class="login-title">
Student Login
</div>

<div class="mb-3">
<label class="form-label">Email</label>

<asp:TextBox ID="TextBox1"
runat="server"
CssClass="form-control"
placeholder="Enter Email">
</asp:TextBox>
</div>

<div class="mb-3">
<label class="form-label">Password</label>

<asp:TextBox ID="TextBox2"
runat="server"
CssClass="form-control"
TextMode="Password"
placeholder="Enter Password">
</asp:TextBox>
</div>

<div class="mt-4">

<asp:Button ID="Button1"
runat="server"
Text="Login"
CssClass="btn-login"
OnClick="Button1_Click" />

</div>

<asp:HyperLink ID="HyperLink1"
runat="server"
NavigateUrl="~/signup.aspx"
CssClass="signup-link">
Create New Account
</asp:HyperLink>

</div>

</div>

</div>

</div>

</asp:Content>