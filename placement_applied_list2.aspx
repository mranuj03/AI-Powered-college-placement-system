<%@ Page Title="" Language="C#" 
    MasterPageFile="~/admin.master" 
    AutoEventWireup="true"
    CodeBehind="placement_applied_list2.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.placement_applied_list2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card mb-12">
<div class="card-header">
<strong>Company Address</strong>
</div>

<asp:Repeater ID="Repeater1" runat="server">

<HeaderTemplate>
<table class="table">
<thead>
<tr>
<th>#</th>
<th>Company Name</th>
<th>Place</th>
<th>Street</th>
<th>Pincode</th>
<th>District</th>
<th>Contact Number</th>
<th>E-Mail ID</th>
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
<asp:Label ID="Label2"
    runat="server"
    CssClass="ccc"
    Text='<%# Eval("cname") %>'>
</asp:Label>
</td>

<td><%# Eval("place") %></td>
<td><%# Eval("street") %></td>
<td><%# Eval("pcode") %></td>
<td><%# Eval("dist") %></td>
<td><%# Eval("cno") %></td>
<td><%# Eval("email") %></td>

</tr>
</tbody>
</ItemTemplate>

</asp:Repeater>

</table>
</div>

</asp:Content>
