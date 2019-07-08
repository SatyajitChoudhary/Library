<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 1159px;
        }
        .auto-style10 {
            box-shadow: 2px 0px 2px #888888;
            width: 496px;
            height: 497px;
            position: absolute;
            top: 141px;
            left: 365px;
            border-radius: 8px/7px; 
            background-color: #E1DFDE;
            z-index: 1;
        }
    
        .auto-style12 {
            position: absolute;
            top: 143px;
            left: 199px;
            z-index: 1;
            width: 312px;
            padding-left:10px;
            padding-top:6px;
            height: 25px;
        }
        .auto-style13 {
            position: absolute;
            top: 229px;
            left: 198px;
            z-index: 1;
             padding-left:10px;
            padding-top:6px;
            width: 314px;
            height: 25px;
        }
        .auto-style15 {
            position: absolute;
            top: 232px;
            left: 168px;
            z-index: 1;
            width: 31px;
        }
        .auto-style16 {
            position: absolute;
            top: 146px;
            left: 169px;
            z-index: 1;
            width: 30px;
            height: 30px;
            bottom: 450px;
        }
        .auto-style17 {
            position: absolute;
            top: 318px;
            left: 169px;
            z-index: 1;
            width: 30px;
            height: 30px;
        }
        .auto-style19 {
            position: absolute;
            top: 315px;
            left: 198px;
            z-index: 1;
            padding-left:10px;
            padding-top:6px;
            width: 314px;
            height: 25px;
        }
        .auto-style21 {
            position: absolute;
            top: 418px;
            left: 171px;
            z-index: 1;
            height: 34px;
            width: 205px;
        }
        .auto-style22 {
            border-radius:2px;
            box-shadow: 2px 0px 2px #888888;
            position: absolute;
            top: 419px;
            left: 431px;
            z-index: 1;
            width: 97px;
            height: 37px;
        }
        .auto-style23 {
            position: absolute;
            top: 120px;
            left: 168px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 293px;
            left: 165px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 206px;
            left: 166px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 358px;
            left: 205px;
            z-index: 1;
            width: 279px;
        }
        .auto-style27 {
            position: absolute;
            top: 267px;
            left: 207px;
            z-index: 1;
            width: 202px;
            height: 17px;
        }
        .auto-style28 {
            position: absolute;
            top: 179px;
            left: 203px;
            z-index: 1;
            width: 202px;
        }
        .auto-style29 {
            height: 787px;
            position: absolute;
            top: 139px;
            left: 11px;
            z-index: 1;
            width: 100%;
           
        }
        .auto-style30 {
            box-shadow: 2px 0px 2px #888888;
            width: 659px;
            height: 491px;
            position: absolute;
            top: 0px;
            border-radius: 8px/7px;
            z-index: 1;
            left: 360px;
            background-color: #E1DFDE;
        }
        .auto-style31 {
            position: absolute;
            top: 34px;
            left: 151px;
            z-index: 1;
            width: 363px;
            height: 41px;
            font-size: 16px;
            font-weight: 300;
            color: #4c4c4c;
            text-align: center;
            font-family: "Open Sans", sans-serif;
            margin-bottom: 10px;
            padding-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style29">

        <div class="auto-style30">

            <asp:TextBox ID="user_password" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="Medium" ForeColor="#666666" TextMode="Password">Enter your password</asp:TextBox>

            <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text="Registration" Font-Size="XX-Large"></asp:Label>

            <asp:TextBox ID="user_mail" runat="server" CssClass="auto-style12" BackColor="White" Font-Bold="True" Font-Size="Medium"  ForeColor="Gray" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="user_name" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Size="Medium" ForeColor="Gray"></asp:TextBox>

            <asp:Image ID="Image3" runat="server" CssClass="auto-style15" ImageUrl="~/Images/Icons/newuser.png" />
            <asp:Image ID="Image4" runat="server" CssClass="auto-style16" ImageUrl="~/Images/Icons/mail.png" />
            <asp:Image ID="Image5" runat="server" CssClass="auto-style17" ImageUrl="~/Images/Icons/pass.png" />

            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style21" OnClick="LinkButton1_Click">By clicking on Register, you agree on our terms &amp; conditions.</asp:LinkButton>
            <asp:Button ID="registerButton" runat="server" BackColor="#FF6666" BorderStyle="None" CssClass="auto-style22" Font-Bold="True" ForeColor="White" Text="Register" OnClick="registerButton_Click" />

            <asp:Label ID="Label3" runat="server" CssClass="auto-style25" Text="Username"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style23" Text="Email ID"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style24" Text="Password"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style26" Text="Password should be 6-15 letters long."></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style27" ForeColor="Red" Text="UserID already exists." Visible="False"></asp:Label>

            <asp:Label ID="Label8" runat="server" CssClass="auto-style28" ForeColor="Red" Text="Email ID already exists." Visible="False"></asp:Label>

        </div>

    </div>
</asp:Content>

