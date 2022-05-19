<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="Ecochase.Edit_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn{
            background-color:green;
            margin-left:220px;
            width:22%;
            padding:5px 5px;
            border:none;
            border-radius:2px;
            height:40px;
            color:white;
            font-size:17px;
            margin-top:20px;
        }
        .btn:hover{
            background-color:forestgreen;
        }

        .container{
            margin-left:250px;
            margin-top:40px;
        }

        .contents{
            background-color:aliceblue;
            width:70%;
            height:500px;
            box-shadow: 0 20px 30px rgba(30, 21, 49, 0.3);
        }

        h2{
            text-align:center;
            background-color:green;
            width:100%;
            color:white;
            padding:5px 0px 5px 0px;
        }

        .user{
            text-align:center;
            margin-left:200px;
        }
        /*Name*/
        .Name{
            margin-left:130px;
            font-size:18px;
            font-weight:bold;
        }

        .box1{
            border-radius:2px;
            /*padding:5px 5px;*/
            border:1px solid black;
            margin-left:50px;
        }

        /*username*/
        .userName{
            margin-left:130px;
            font-size:18px;
            font-weight:bold;
        }

        .box2{
            border-radius:2px;
            /*padding:5px 5px;*/
            border:1px solid black;
            margin-left:18px;
        }
        /*Address*/
        .add{
            margin-left:130px;
            font-size:18px;
            font-weight:bold;
        }

        .box3{
            border-radius:2px;
            /*padding:5px 5px;*/
            border:1px solid black;
            margin-left:32px;
        }

        /*Email*/
        .email{
            margin-left:130px;
            font-size:18px;
            font-weight:bold;
        }

        .box4{
            border-radius:2px;
            /*padding:5px 5px;*/
            border:1px solid black;
            margin-left:49px;
        }

        /*Password*/
        .pass{
            margin-left:130px;
            font-size:18px;
            font-weight:bold;
        }

        .box5{
            border-radius:2px;
            /*padding:5px 5px;*/
            border:1px solid black;
            margin-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="contents">
            <h2>Profile Page</h2>
            <p>
                <asp:Label ID="lblUpdate" CssClass="user" runat="server" Text="Label1" Visible="True" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
            &nbsp;</p>
            <p>
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
    
                &nbsp;</p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
        
            </p>
            <div class="Name">
                <span id="keys">Name </span> <asp:TextBox ID="txteName" runat="server" CssClass="box1" Height="34px" Width="192px" ViewStateMode="Enabled"></asp:TextBox>
            </div>
            <br/>
            <div class="userName">
                <span id="keys">Username </span><asp:TextBox ID="txteUser" runat="server" CssClass="box2" Height="34px" Width="193px" ViewStateMode="Enabled" ReadOnly="True"></asp:TextBox>
            </div>
            <br/>

            <div class="add">
                <span id="keys">Address </span><asp:TextBox ID="txteAdd" runat="server" CssClass="box3" Height="34px" Width="196px"></asp:TextBox>
            </div><br/>

            <div class="email">
                <span id="keys">Email </span><asp:TextBox ID="txteEmail" runat="server" CssClass="box4" Height="34px" Width="194px"></asp:TextBox>
            </div><br/>

            <div class="pass">
                <span id="keys">Password </span><asp:TextBox ID="txtePass" runat="server" CssClass="box5" Height="34px" Width="194px"></asp:TextBox>
            </div><br/>

            <div class="auto-style1">
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn" OnClick="btnUpdate_Click" Text="Update" />
            </div>
        </div>
    </div>


</asp:Content>
