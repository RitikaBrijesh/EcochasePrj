<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecochase.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body { 
            
        } 

        .container{
            display:flex;
            margin-left:350px;
            background-color:white;
            width:790px;
            
            box-shadow: 0 30px 50px rgba(30, 21, 49, 0.3);
        }

        .side{
            /*background-color:green;*/
            border-radius:2px 2px 2px 2px;
        }

        div #Image2{
            
        }
        #form1{
            margin:8vw 0px;
            border:none;
            
        }

        .card-body{
            padding: 30px 20px 20px 20px;
            border-radius: 0px 0px 0px 0px;
            border:none;
        }
        
        p #btnLogin{
            background-color:green;
            padding:5px;  
            width:244px;
        }

        p #btnLogin:hover{
            background-color:#087322 ;
        }
        
    </style>
    
    </head>
<body>
    <form id="form1" runat="server" class="form-control">
        <center>
            <div class="container">
                <div class="card text-white" style="width:25vw;border:none;">
                    <div class="card-body">
                        <p style="font-size:20px; color:black; font-weight:bold;">
                            Welcome Back</p>
                        <p>
                            <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/usericon.png" Width="112px" />
                        </p>

                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                        
                            <div class="form-group">
                                <asp:TextBox ID="txtUser" runat="server" Height="35px" Width="244px" placeholder="Username" CssClass="form-control"></asp:TextBox>
                            </div>
                        
                            <div class="form-group">
                                <asp:TextBox ID="txtPass" runat="server" Height="35px" TextMode="Password" Width="241px" placeholder="Password" CssClass="form-control"></asp:TextBox>
                            </div>

                        <%--<asp:CheckBox ID="CheckBox1" Text="Show Password" runat="server" onchange="document.getElementById('CheckBox1').type=this.checked ? 'text' : 'password'"/>--%>
                            <p>
                                <asp:Button ID="btnLogin" runat="server" Height="40px" Text="Login" Width="104px" class="btn btn-primary" OnClick="btnLogin_Click"/>
                            </p>

                        
                            <p>
                                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignupPage.aspx" ForeColor="#003300" OnClick="LinkButton1_Click">Don't have account? Register here</asp:LinkButton>
                             </p>
                    </div>
                </div>

                <div class="side">
                    <asp:Image ID="Image2" runat="server" CssClass="img" Height="420px" ImageUrl="~/Images/graphic.png" Width="400px" />
                </div>
            </div>
        </center>
    </form>
</body>
</html>