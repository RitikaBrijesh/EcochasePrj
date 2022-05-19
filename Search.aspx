<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Ecochase.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .text-search{
            padding:5px;
            border:2px solid gray;
            border-radius:2px;
            margin-top:20px;
        }

        .button-search{
            background-color:green;
            padding:5px 5px;
            color:white;
            font-size:18px;
            border:none;
            border-radius:2px;
        }

        .button-search:hover{
            background-color:forestgreen;
        }

        .grid{
            text-align:center;
        }

        #user{
            background-color:green;
            font-size:18px;
            width:100px;
            padding:5px 5px;
            color:white;
            border-radius:2px;
        }
        #user:hover{
            background-color:forestgreen;
        }

        h2{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Search the user name to get their score</h2>
    <center>
    <asp:Panel ID="pnlSearch" runat="server" DefaultButton="btnSearch">
        <asp:TextBox ID="txtSearch" runat="server" CssClass="text-search" Height="30px" Width="318px" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="button-search" Text="Search" OnClick="Button1_Click" Height="43px" Width="120px" />
        <br />
        <br />
        
    </asp:Panel>
        <div>
            <asp:GridView ID="GridView1" runat="server" CssClass="grid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="164px" Width="437px" BorderStyle="Solid" CellPadding="8" HorizontalAlign="Center">
                <HeaderStyle BackColor="#006600" CssClass="headers" ForeColor="White" Height="20px" />
            
                <RowStyle CssClass="rows" BackColor="#F7F6F3"/>
            
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="sqldatasrc" runat="server" ConnectionString="Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True" OnSelecting="sqldatasrc_Selecting"></asp:SqlDataSource>
            <br />
            <p id="user">Top 5 user</p><br />
            <asp:GridView ID="GridView2" runat="server" CssClass="grid" CellPadding="8" Height="164px" Width="437px" BorderStyle="Solid"> 
                 
                <HeaderStyle BackColor="#006600" CssClass="headers" ForeColor="White" Height="20px" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:GridView>
        </div>
    </center>
    
    

</asp:Content>
