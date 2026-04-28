<%@ Page Title="" Language="C#" 
    MasterPageFile="~/student.master" 
    AutoEventWireup="true"
    CodeBehind="student_placement_applied_list.aspx.cs" 
    Inherits="CollegePlacementManagementSystem.student_placement_applied_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .job-card {
            background: #ffffff;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .job-card:hover {
            transform: translateY(-5px);
        }

        .job-title {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .company-name {
            font-size: 16px;
            color: #777;
        }

        .apply-date {
            font-size: 14px;
            color: #999;
        }

        h2 {
            margin-bottom: 25px;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>🚀 Applied Placements</h2>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <div class="job-card">
                    <div class="job-title">
                        <%# Eval("title") %>
                    </div>

                    <div class="company-name">
                        🏢 <%# Eval("cname") %>
                    </div>

                    <div class="apply-date">
                        📅 Applied on: <%# Eval("apply_date") %>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>