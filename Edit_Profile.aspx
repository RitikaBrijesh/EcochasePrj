<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="Ecochase.Edit_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Profile Page</h2>
    <p>
        <asp:Label ID="lblUpdate" runat="server" Text="Label1" Visible="True" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
    &nbsp;</p>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
    
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
        
    </p>
    <p>Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txteName" runat="server" Height="34px" Width="192px" ViewStateMode="Enabled"></asp:TextBox>
    </p>
    <p>Username:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txteUser" runat="server" Height="30px" Width="193px" ViewStateMode="Enabled" ReadOnly="True"></asp:TextBox>
    </p>
    <p>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txteAdd" runat="server" Height="29px" Width="196px"></asp:TextBox>
    </p>
    <p>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txteEmail" runat="server" Height="26px" Width="194px"></asp:TextBox>
    </p>
    <p>Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtePass" runat="server" Height="25px" Width="194px"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
    </p>
    


</asp:Content>
