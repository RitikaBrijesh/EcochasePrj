    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="Ecochase.SignupPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        
        #form1{
            margin:2vw 0px;
            border:none;
            
        }
        .container{
            display:flex;
            margin-left:350px;
            background-color:white;
            width:790px;
            
            box-shadow: 0 30px 50px rgba(30, 21, 49, 0.3);
        }

        .side{
            /*background-color:forestgreen;*/
            border-radius:2px 2px 2px 2px;
            width:420px;
        }
        .card-body{
            
            padding: 30px 20px 20px 20px;
            border-radius: 0px 0px 0px 0px;
            border:none;
        
        }

        div #Button1{
            background-color:green;
            padding:5px;
        }

        div #Button1:hover{
            background-color:forestgreen;
        }

        .card-body a{
            color:black:
        }

        .arrow {
          border: solid black;
          border-width: 0 3px 3px 0;
          display: inline-block;
          padding: 3px;
        }
        a{
            color:black;
        }
        .left {
          transform: rotate(135deg);
          -webkit-transform: rotate(135deg);
        }

        .back{
            margin-left:0px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server" class="form-control">
        <center>
        <div class="container" style="border-radius:10px;">
            <div class="card text-white" style="width:400px;border:none;">
                    <div class="card-body">
                        
                        <a href="Login.aspx"><i class="arrow left"></i>Back To Login</a>
                        
                        <br />
                        <p>
                        <asp:Image ID="Image1" runat="server" Height="71px" ImageUrl="~/Images/usericon.png" Width="71px" />
                        </p>

                        <div class="form-group">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtName" ForeColor="Red">*Please Enter Name</asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" placeholder="User Name" OnTextChanged="txtUser_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter username" ControlToValidate="txtUser" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Address" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Email" CssClass="form-control" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Password" SetFocusOnError="True" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                            
                            
                                
                        </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Sign Up" Height="35px" Width="104px" class="btn btn-primary" OnClick="Button1_Click"/>
                        </div>

                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="side">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/sign.png" Height="500px" Width="400px" />
                </div>
            </div>
            </center>
    </form>
</body>
</html>
