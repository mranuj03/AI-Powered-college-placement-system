<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeBehind="student_placement_details.aspx.cs" Inherits="CollegePlacementManagementSystem.student_placement_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card">
<div class="card-header">
<strong>Placement List</strong>
</div>

<div class="card-body">

<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

<HeaderTemplate>
<table class="table table-bordered">
<thead>
<tr>
<th>ID</th>
<th>Title</th>
<th>Company</th>
<th>Location</th>
<th>Action</th>
</tr>
</thead>
<tbody>
</HeaderTemplate>

<ItemTemplate>
<tr>
<td><%# Eval("id") %></td>
<td><%# Eval("title") %></td>
<td><%# Eval("cname") %></td>
<td><%# Eval("location") %></td>

<td>
<asp:Button ID="btnApply" runat="server"
    Text="Apply"
    CommandName="apply"
    CommandArgument='<%# Eval("id") %>'
    CssClass="btn btn-primary" />
</td>

</tr>
</ItemTemplate>

<FooterTemplate>
</tbody>
</table>
</FooterTemplate>

</asp:Repeater>

</div>
</div>

</asp:Content>