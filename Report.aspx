<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Ecochase.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>

   

        <br />
    </p>
<p>
        Start Date :
        <asp:TextBox ID="stDate" runat="server" CssClass="form-control"  TextMode="Date"></asp:TextBox>
    </p>
    <p>
        End Date :&nbsp;
        <asp:TextBox ID="endDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </p>

    <asp:Button ID="btnFilter" runat="server" Text="Get Records" OnClick="btnFilter_Click" />

   

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <br />
    
   

</asp:Content>
