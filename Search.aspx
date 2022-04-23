<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Ecochase.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>This is Search Page</h2>
    <center>
    <asp:Panel ID="pnlSearch" runat="server" DefaultButton="btnSearch">
        <asp:TextBox ID="txtSearch" runat="server" CssClass="text-search" Height="30px" Width="318px" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="button-search" Text="Search" OnClick="Button1_Click" Height="35px" Width="113px" />
        <br />
        <br />
        
    </asp:Panel>
        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="164px" Width="437px">
            
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="sqldatasrc" runat="server" ConnectionString="Data Source=DESKTOP-2AJ3R13\SQLEXPRESS;Initial Catalog=ecochasePrj;Integrated Security=True" OnSelecting="sqldatasrc_Selecting"></asp:SqlDataSource>
            <br />
            Top 5 user<br />
            <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover "> 
                 
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:GridView>
        </div>
    </center>
    
    

</asp:Content>
