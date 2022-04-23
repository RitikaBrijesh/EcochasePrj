<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Ecochase.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                
        /*.lblScore {
            background-image:url("~/Images/Score.png");
        }*/
    </style>

      <script src= "https://code.jquery.com/jquery-3.6.0.min.js" integrity= "sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"> 

      </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <marquee><asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Arial Black" ForeColor="#000099"></asp:Label></marquee>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="Score: "></asp:Label>
    <strong>&nbsp;</strong><asp:Label ID="lblScore" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
    <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>
        
    
        <asp:ImageButton ID="act1" runat="server" Height="159px" ImageUrl="~/Images/opt1.png" OnClick="imgbtncarpool_Click" Width="159px" ImageAlign="Middle" />
        &nbsp;
        <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/Images/First.png" Width="427px" />
    </p>

    
     <%--<script type="text/javascript">

         $(document).ready(function () {
             $('#<%=act1.ClientID%>').click(function () {

            
            alert("You've got 3 points");
        });
         });
        </script>--%>     <%--    <script type="text/javascript">

             $(document).(function () {
                 $(document).keydown(function (e) {
                     return (e.which || e.keyCode) != 116;
                 });
             });
         });
         </script>--%>

    <p>
        <asp:ImageButton ID="act2" runat="server" Height="159px" Width="159px" ImageUrl="~/Images/opt3.png" OnClick="act2_Click" />
        <asp:Image ID="Image4" runat="server" Height="187px" ImageUrl="~/Images/thrift_desc.png" Width="427px" />
    </p>
    
    <%--<script type="text/javascript">

        $(document).ready(function () {
            $('#<%=act2.ClientID%>').click(function () {


                 alert("You've got 2 points");
             });
         });
    </script>--%>

    <p>
        <asp:ImageButton ID="act3" runat="server" Height="159px" ImageUrl="~/Images/opt2.png" Width="159px" OnClick="act3_Click"/>
        <asp:Image ID="Image5" runat="server" Height="187px" ImageUrl="~/Images/plant_desc.png" Width="427px" />
    </p>

    <%--<script type="text/javascript">

        $(document).ready(function () {
            $('#<%=act3.ClientID%>').click(function () {


                 alert("You've got 5 points");
             });
         });
    </script>--%>

    <p>&nbsp;</p>
    <p>
        <asp:ImageButton ID="act4" runat="server" Height="159px" ImageUrl="~/Images/opt4.png" OnClick="act4_Click" Width="159px" />
        <asp:Image ID="Image6" runat="server" Height="187px" ImageUrl="~/Images/organicproducts_desc.png" Width="424px" />
    </p>

    <%--<script type="text/javascript">

        $(document).ready(function () {
            $('#<%=act4.ClientID%>').click(function () {


                alert("You've got 2 points");
            });
        });
    </script>--%>

    <p>&nbsp;</p>
    <p>
        <asp:ImageButton ID="act5" runat="server" Height="159px" ImageUrl="~/Images/opt5.png" OnClick="act5_Click" Width="159px" />
        <asp:Image ID="Image7" runat="server" Height="200px" ImageUrl="~/Images/seperate_waste.desc.png" Width="424px" />
    </p>

    <%--<script type="text/javascript">

        $(document).ready(function () {
            $('#<%=act5.ClientID%>').click(function () {


                alert("You've got 1 points");
            });
        });
    </script>--%>
    <p>&nbsp;</p>
    <p>
        <asp:ImageButton ID="act6" runat="server" Height="159px" ImageUrl="~/Images/opt6.png" OnClick="act6_Click" Width="159px" />
        <asp:Image ID="Image8" runat="server" Height="187px" ImageUrl="~/Images/volunteer_cleaning.png" Width="424px" />
    </p>

    <%--<script type="text/javascript">

        $(document).ready(function () {
            $('#<%=act6.ClientID%>').click(function () {


                alert("You've got 5 points");
            });
        });--%></script>
</asp:Content>
