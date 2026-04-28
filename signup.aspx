<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" 
    AutoEventWireup="true" CodeBehind="signup.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/validation.js"></script>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<div class="row">

    <div class="col-sm-6">
        <img class="img-fluid" src="img/1.jpg" />
    </div>

    <div class="col-sm-4">
        <div class="col-sm-12">
            <h4>Signup New Student</h4>
        </div>

        <div class="row">

            <div class="col-sm-4 mb-2">
                <label>Student Name</label>
            </div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"
                    required onkeypress="return letters(event)"></asp:TextBox>
            </div>

            <div class="col-sm-4 mb-2">
                <label>Gender</label>
            </div>
            <div class="col-sm-8 mb-2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-4 mb-2">
                <label>Date-Of-Birth</label>
            </div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                    TextMode="Date" required></asp:TextBox>
            </div>

            <div class="col-sm-4 mb-2">
                <label>Contact No</label>
            </div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                    required ClientIDMode="Static"
                    onkeypress="return contact(event)"></asp:TextBox>
            </div>

            <div class="col-sm-4 mb-2">
                <label>E-mail ID</label>
            </div>
            <div class="col-sm-8 mb-2">
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fa-solid fa-at"></i>
                    </span>
                    <asp:TextBox ID="TextBox4" runat="server"
                        CssClass="form-control" TextMode="Email" required></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-4 mb-2">
                <label>User Name</label>
            </div>
            <div class="col-sm-8 mb-2">
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fa-solid fa-user"></i>
                    </span>
                    <asp:TextBox ID="TextBox5" runat="server"
                        CssClass="form-control" required></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-4 mb-2">
                <label>Password</label>
            </div>
            <div class="col-sm-8 mb-2">
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fa-solid fa-key"></i>
                    </span>
                    <asp:TextBox ID="TextBox6" runat="server"
                        CssClass="form-control" TextMode="Password" required></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-4 mb-2"></div>

            <div class="col-sm-8 mb-2">
                <asp:Button ID="Button1"
                    runat="server"
                    Text="Signup"
                    CssClass="btn btn-success shadow-none"
                    OnClick="Button1_Click" />
            </div>

        </div>
    </div>
</div>

</asp:Content>
