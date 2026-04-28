<%@ Page Title="" Language="C#" 
    MasterPageFile="~/admin.master" 
    AutoEventWireup="true"
    CodeBehind="placement_applied_list1.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.placement_applied_list1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card mb-12">
<div class="card-header">
<strong>Student Profile Details</strong>
</div>

<div class="container">
<div class="row mt-2">

<!-- LEFT SIDE -->
<div class="col-sm-6">
<div class="row">

<div class="col-sm-4 mb-2">Student Name</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox1" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Gender</div>
<div class="col-sm-8 mb-2">
<asp:DropDownList ID="DropDownList1"
    runat="server"
    CssClass="form-select"
    Enabled="false">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
</div>

<div class="col-sm-4 mb-2">Date-Of-Birth</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox2" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Contact Number</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox3" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">E-Mail ID</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox4" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">SSLC %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox5" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox6" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">HSC %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox7" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox8" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

</div>
</div>

<!-- RIGHT SIDE -->
<div class="col-sm-6">
<div class="row">

<div class="col-sm-4 mb-2">UG %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox9" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox10" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">PG %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox11" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox12" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Skill</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox13" runat="server"
    CssClass="form-control"
    ReadOnly="true">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Resume Link</div>
<div class="col-sm-8 mb-2">
<asp:HyperLink ID="HyperLink1"
    runat="server">
Click CV
</asp:HyperLink>
</div>

<div class="col-sm-4 mb-2">
<asp:Image ID="Image1"
    runat="server"
    Width="100" />
</div>

<div class="col-sm-8 mb-2"></div>

</div>
</div>

</div>
</div>
</div>

</asp:Content>
