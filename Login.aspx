<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecochase.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <title></title>

    <style>
        
        body {
            color: #000;
            overflow-x: hidden;
            height: 100%;
            background-color: #B0BEC5;
            background-repeat: no-repeat
        }

        #form1{
            position: absolute;
            width: 347px;
            height: 406px;
            left: 466px;
            top: 157px;

        }
        #btnLogin {
            position: absolute;
            width: 500px;
            height: 45px;
            left: 570px;
            top: 260px;

            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.3);
            border-radius: 4px;
        }

        #txtPass{
            position: absolute;
            width: 300px;
            height: 40px;
            left: 490px;
            top: 190px;

            position: absolute;
            border: 1px solid #FFFFFF;
            box-sizing: border-box;
            border-radius: 4px;
        }

        #txtUser{
            position: absolute;
            width: 300px;
            height: 40px;
            left: 490px;
            top: 130px;

            border: 1px solid #FFFFFF;
            box-sizing: border-box;
            border-radius: 4px;
        }

        #Image1{
            width: 360px;
            height: 280px

            
        }

        #LinkButton2 {
            position: absolute;
            width: 146px;
            height: 20px;
            left: 644px;
            top: 320px;
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 500;
            font-size: 12px;
            line-height: 20px;
            color:white;
        }
        #LinkButton1 {
            position: absolute;
            width: 146px;
            height: 20px;
            left: 500px;
            top: 320px;
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 500;
            font-size: 12px;
            line-height: 20px;
        }
/* identical to box height */


        .auto-style1 {
            width: 100%;
            height: 582px;
        }
        

        .auto-style3 {
            left: 580px;
            top: 0px;
            }


        .auto-style4 {
            left: 466px;
            top: 157px;
            width: 314px;
            height: 349px;
        }
        .auto-style5 {
            width: 270px;
        }


        .auto-style6 {
            bottom: 172px;
        }


    </style>
    
    </head>
<body>
    <form id="form1" runat="server" class="auto-style4">
    <center>

        <table class="auto-style1">
            <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
                <div class="card card0 border-0">
                    <div class="row d-flex">
                        <div class="col-lg-6">
                            <div class="card1 pb-5">
                                        <tr>
                                            <td class="row px-3 justify-content-center mt-4 mb-5 border-line" rowspan="10">
                                                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" ImageUrl="~/Images/envion.png" Height="338px" Width="454px" /></td>
                                            <td class="auto-style5">Sign in </td>
                                        </tr>
                            </div>
                       
                                        <tr>
                                            <td class="auto-style5">
                                                
                                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5 mb-0 text-sm">username</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" mb-0 text-sm>password</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtPass" runat="server" CssClass="auto-style6"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                        </tr>
                                </div>
                            </div>
                        </div>
                     </div>       
                </div>                
            </div>
        </table>

    </center>
       
    </form>
</body>
</html>
