<%@ Page Title="" Language="C#" 
    MasterPageFile="~/admin.master" 
    AutoEventWireup="true"
    CodeBehind="placement_applied_list.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.placement_applied_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card mb-12">
<div class="card-header">
<strong>Placement Applied List</strong>
</div>

<asp:Repeater ID="Repeater1" runat="server"
    OnItemCommand="Repeater1_ItemCommand">

<HeaderTemplate>
<table class="table">
<thead>
<tr>
<th>#</th>
<th>Student Name</th>
<th>Gender</th>
<th>Date-Of-Birth</th>
<th>Contact Number</th>
<th>E-Mail ID</th>
<th>Company Name</th>
<th>Date</th>
<th>Time</th>
<th>Action</th>
</tr>
</thead>
</HeaderTemplate>

<ItemTemplate>
<tbody>
<tr>

<td>
<asp:Label ID="Label1"
    runat="server"
    Text='<%# Eval("id") %>'>
</asp:Label>
</td>

<td>
<asp:LinkButton ID="LinkButton3"
    runat="server"
    CommandName="student"
    CommandArgument='<%# Eval("id") %>'
    ForeColor="green"
    Font-Size="13"
    Text='<%# Eval("sname") %>'>
</asp:LinkButton>
</td>

<td>
<asp:Label ID="Label3"
    CssClass="ccc"
    runat="server"
    Text='<%# Eval("gender") %>'>
</asp:Label>
</td>

<td><%# Eval("dob") %></td>
<td><%# Eval("cno") %></td>
<td><%# Eval("email") %></td>

<asp:HiddenField ID="HiddenField1"
    runat="server"
    Value='<%# Eval("sid") %>' />

<td>
<asp:LinkButton ID="LinkButton2"
    runat="server"
    CommandName="company"
    CommandArgument='<%# Eval("id") %>'
    ForeColor="green"
    Font-Size="13"
    Text='<%# Eval("cname") %>'>
</asp:LinkButton>
</td>

<td><%# Eval("dt") %></td>
<td><%# Eval("tm") %></td>

<td>
<asp:LinkButton ID="LinkButton1"
    runat="server"
    CommandName="delete"
    CommandArgument='<%# Eval("id") %>'
    ForeColor="red"
    Font-Size="16">
<i class="fa-solid fa-trash-can"></i>
</asp:LinkButton>
</td>

</tr>
</tbody>
</ItemTemplate>

</asp:Repeater>

</table>
</div>

</asp:Content>
