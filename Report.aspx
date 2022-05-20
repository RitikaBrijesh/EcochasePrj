<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Ecochase.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
    <style>
        
        .container{
            margin-left:400px;
            margin-top:40px;
        }
        .getRecords{
            background-color:green;
            padding:5px 5px;
            color:white;
            font-size:18px;
            border:none;
            border-radius:2px;
            height:40px;
            width:150px;
            margin-top:20px;
            margin-left:130px;
        }

        .getRecords:hover{
            background-color:forestgreen;
        }

        #date{
            font-size:20px;
        }

        #days{
            font-size:20px;
            
        }
        .grid{
            margin-left:0px;
        }
        .form-control{
            border:1px solid gray;
            width:200px;
            padding:5px 5px;
            border-radius:2px;
            height:30px;
        }

        
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
        <br />
        </p>
        <p id="date">
            <span id="days">Start Date :</span>
            <asp:TextBox ID="stDate" runat="server" CssClass="form-control"  TextMode="Date"></asp:TextBox>
        </p>
        <p id="date">
            <span id="days">End Date : &nbsp</span>
            <asp:TextBox ID="endDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </p>

        <asp:Button ID="btnFilter" CssClass="getRecords" runat="server" Text="Get Records" OnClick="btnFilter_Click" />

        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>

    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" CssClass="grid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="164px" Width="437px" BorderStyle="Solid" CellPadding="8" HorizontalAlign="Center">
            <HeaderStyle BackColor="#006600" CssClass="headers" ForeColor="White" Height="20px" />
            <RowStyle CssClass="rows" BackColor="#F7F6F3"/>
        <EmptyDataTemplate>
            <div align="center" CssClass="noFound"> No Records Found</div>
        </EmptyDataTemplate>
        </asp:GridView>

    </div>

</asp:Content>
