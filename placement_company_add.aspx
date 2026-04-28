<%@ Page Title="" Language="C#" 
    MasterPageFile="~/admin.master" 
    AutoEventWireup="true"
    CodeBehind="placement_company_add.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.placement_company_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card mb-12">
<div class="card-header">
<strong>Add New Company</strong>
</div>

<div class="container">
<div class="row mt-2">

<div class="col-sm-6">
<div class="row">

<div class="col-sm-4 mb-2">Company Name</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox1"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Place</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox2"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Street</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox3"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Pincode</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox4"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">District</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox5"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Contact No</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox6"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">E-Mail Id</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox7"
    runat="server"
    CssClass="form-control">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2"></div>
<div class="col-sm-8 mb-2">
<asp:Button ID="Button1"
    runat="server"
    CssClass="btn-success btn"
    Text="Save"
    OnClick="Button1_Click" />
</div>

</div>
</div>

<div class="col-sm-6"></div>

</div>
</div>
</div>

</asp:Content>
