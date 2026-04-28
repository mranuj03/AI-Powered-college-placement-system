<%@ Page Title="" Language="C#" 
    MasterPageFile="~/student.master" 
    AutoEventWireup="true"
    CodeBehind="student_profile_update.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.student_profile_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="assets/validation.js"></script>
    <script>
        function percent(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57) || (charCode == 46)) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<div class="card mb-12">
<div class="card-header"><strong>Update Profile</strong></div>

<div class="container">
<div class="row mt-2">

<!-- LEFT SIDE -->
<div class="col-sm-6">
<div class="row">

<div class="col-sm-4 mb-2">Student Name</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox1" runat="server"
    CssClass="form-control"
    required
    onkeypress="return letters(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Gender</div>
<div class="col-sm-8 mb-2">
<asp:DropDownList ID="DropDownList1"
    runat="server"
    CssClass="form-select">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
</div>

<div class="col-sm-4 mb-2">Date-Of-Birth</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox2"
    runat="server"
    CssClass="form-control"
    required>
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Contact Number</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox3"
    runat="server"
    CssClass="form-control"
    required
    ClientIDMode="Static"
    onkeypress="return contact(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">E-Mail ID</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox4"
    runat="server"
    CssClass="form-control"
    TextMode="Email"
    required>
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">SSLC %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox5"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return percent(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox6"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return number(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">HSC %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox7"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return percent(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox8"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return number(event)">
</asp:TextBox>
</div>

</div>
</div>

<!-- RIGHT SIDE -->
<div class="col-sm-6">
<div class="row">

<div class="col-sm-4 mb-2">UG %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox9"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return percent(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox10"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return number(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">PG %</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox11"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return percent(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Year of Passing</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox12"
    runat="server"
    CssClass="form-control"
    required
    onkeypress="return number(event)">
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Skill</div>
<div class="col-sm-8 mb-2">
<asp:TextBox ID="TextBox13"
    runat="server"
    CssClass="form-control"
    required>
</asp:TextBox>
</div>

<div class="col-sm-4 mb-2">Upload Resume</div>
<div class="col-sm-8 mb-2">
<asp:FileUpload ID="FileUpload1"
    runat="server"
    CssClass="form-f"
    required />
</div>

<div class="col-sm-4 mb-2">Upload Image</div>
<div class="col-sm-8 mb-2">
<asp:FileUpload ID="FileUpload2"
    runat="server"
    required />
</div>

<div class="col-sm-4 mb-2"></div>
<div class="col-sm-8 mb-2">
<asp:Button ID="Button1"
    runat="server"
    CssClass="btn-success btn"
    Text="Update"
    OnClick="Button1_Click" />
</div>

</div>
</div>

</div>
</div>
</div>

</asp:Content>
