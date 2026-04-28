<%@ Page Title="" Language="C#" 
    MasterPageFile="~/admin.master" 
    AutoEventWireup="true"
    CodeBehind="placement_company_display.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.placement_company_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card mb-12">
<div class="card-header">
<strong>Display Company Details</strong>
</div>

<asp:Repeater ID="Repeater1" runat="server"
    OnItemCommand="Repeater1_ItemCommand">

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

<td>
<asp:LinkButton ID="LinkButton1"
    runat="server"
    CommandName="delete"
    CommandArgument='<%# Eval("id") %>'
    ForeColor="red"
    Font-Size="18">
<i class="fa-solid fa-trash"></i>
</asp:LinkButton>
</td>

</tr>
</tbody>
</ItemTemplate>

</asp:Repeater>

</table>
</div>

</asp:Content>
