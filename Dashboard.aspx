<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Ecochase.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                
        /*.lblScore {
            background-image:url("~/Images/Score.png");
        }*/

        .score{
            width:200px;
            height:40px;
            background-color:#087322;
            color:white;
            text-align:center;
            box-shadow: 0 20px 50px rgba(30, 21, 49, 0.3);
            margin:0px 450px;
            border-radius:10px;
        }

        /*Carpooling*/
        .carpool{
            display:flex;
        }

        .carpool #car{
            background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
        }

        .carpool #car:hover{
            /*background-color:forestgreen;*/
            width:510px;
        }
        
        #activity{
            font-size:20px; 
            padding:5px; 
            text-shadow: 2px 2px 4px #000000;
        }

        /*Thrift*/
        .thrift{
            display:flex;
        }
        .thrift #desc2{
            background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
        }

        .thrift #desc2:hover{
            /*background-color:#294C01;*/
            width:510px;
        }
        /*Planting a tree*/
        .planting{
            display:flex;
        }

        .planting #plant{
            background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
        }

        .planting #plant:hover{
            /*background-color:#294C01;*/
            width:510px;
        }

       /* Purchase Organic Products*/
        .purchase{
            display:flex;
        }

        .purchase #desc4{
            background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
        }

        .purchase #desc4:hover{
            /*background-color:#294C01;*/
            width:510px;
        }

        /*Separate Waste*/
        .waste{
            display:flex;
        }

        .waste #desc5{
            background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
        }

        .waste #desc5:hover{
            /*background-color:#294C01;*/
            width:510px;
        }

       /* Cleaning*/
       .clean{
           display:flex;
       }

       .clean #desc6{
           background-color:green;
            color:white;
            font-size:18px;
            width:500px;
            height:130px;
            padding:5px;
            margin-left:20px;
            border-radius:5px;
            box-shadow: 0 20px 20px rgba(30, 21, 49, 0.3);
            text-align:center;
            justify-content:space-around;
       }

       .clean #desc6:hover{
           
            width:510px;
       }
    </style>

      <script src= "https://code.jquery.com/jquery-3.6.0.min.js" integrity= "sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"> 

      </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <marquee><asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Arial Black" ForeColor="#000099"></asp:Label></marquee>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
    <div class="score">
    <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Score: "></asp:Label>
    <strong>&nbsp;</strong><asp:Label ID="lblScore" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label></div>
    <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
        
        <div class="carpool">
            <asp:ImageButton ID="act1" runat="server" Height="159px" ImageUrl="~/Images/opt1.png" OnClick="imgbtncarpool_Click" Width="159px" ImageAlign="Middle" />
                <br />
                <br />
                <br />
                <br />
        &nbsp;
            <p id="car"><br/> <span id="activity">Carpooling (3 Points)</span> <br/><br/>Arrangment between people to make a regular<br/>
                journey in a single vehicle. 
            </p>        
        </div>
    

    <div class="thrift">
        <asp:ImageButton ID="act2" runat="server" Height="159px" Width="159px" ImageUrl="~/Images/opt3.png" OnClick="act2_Click" />
    
        <p id="desc2"><br/><span id="activity">Thrift (2 Points)</span><br/><br/>
            Using second hand items, reusing them.
        </p>
    </div>
    
    
    <div class="planting">
        <asp:ImageButton ID="act3" runat="server" Height="159px" ImageUrl="~/Images/opt2.png" Width="159px" OnClick="act3_Click"/>
        <p id="plant"><br/><span id="activity">Plant a Tree (5 Points)</span><br/><br/>
            Planting a Tree/Seedlings to reduce deforestration.
        </p>
    </div>

    <div class="purchase">
        <asp:ImageButton ID="act4" runat="server" Height="159px" ImageUrl="~/Images/opt4.png" OnClick="act4_Click" Width="159px" />
        <p id="desc4"><br/><span id="activity">Purchase Organic Products (2 Points)</span><br/><br/>
                Reduce use of artificial Reagents, support organic agriculture.
        </p>
    </div>

    <div class="waste">
        <asp:ImageButton ID="act5" runat="server" Height="159px" ImageUrl="~/Images/opt5.png" OnClick="act5_Click" Width="159px" />
        <p id="desc5"><br/><span id="activity">Separate Waste (1 Points)<br/><br/>
            Separate Dry & Wet Waste
        </p>
    </div>


    <div class="clean">
        <asp:ImageButton ID="act6" runat="server" Height="159px" ImageUrl="~/Images/opt6.png" OnClick="act6_Click" Width="159px" />
        <p id="desc6"><br/><span id="activity">Volunteering Cleaning (5 Points)</span><br/><br/>
            Participate/Volunteer in cleaning programs around <br/> and beyond your locality.
        </p>
    </div>

</asp:Content>
