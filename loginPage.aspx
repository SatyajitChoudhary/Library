<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 1157px;
            background-color:#F7F0EF;
        }
        .auto-style11 {
            width: 883px;
            background-color:white;
            height: 796px;
            position: absolute;
            border-radius:4px;
            box-shadow: 5px 5px 5px #888888;
            top: 137px;
            left: 268px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 31px;
            left: 323px;
            z-index: 1;
            width: 257px;
            border-radius:2px;
            box-shadow: 2px 2px 2px #888888;
            height: 259px;
        }
        .auto-style14 {
            position: absolute;
            top: 356px;
            left: 108px;
            z-index: 1;
            width: 125px;
        }
        .auto-style15 {
            position: absolute;
            top: 377px;
            left: 130px;
            z-index: 1;
            width: 43px;
            height: 43px;
            right: 710px;
        }
        .auto-style18 {
            padding-left:10px;
            padding-top:6px;
            position: absolute;
            top: 380px;
            left: 185px;
            z-index: 1;
            width: 495px;
            height: 31px;
        }
        .auto-style19 {
            position: absolute;
            top: 438px;
            left: 104px;
            z-index: 1;
            height: 19px;
            width: 96px;
        }
        .auto-style20 {
            position: absolute;
            top: 462px;
            left: 129px;
            z-index: 1;
            width: 43px;
            height: 44px;
        }
        .auto-style21 {
            position: absolute;
            padding-left:10px;
            padding-top:6px;
            top: 465px;
            left: 184px;
            z-index: 1;
            width: 495px;
            height: 31px;
        }
        .auto-style22 {
            position: absolute;
            top: 517px;
            left: 227px;
            z-index: 1;
            width: 403px;
            height: 39px;
             border-radius:4px;
            box-shadow: 2px 2px 2px #888888;
        }
        .auto-style23 {
            position: absolute;
            top: 572px;
            left: 111px;
            z-index: 1;
            width: 155px;
        }
        .auto-style24 {
            position: absolute;
             border-radius:2px;
            box-shadow: 1px 1px 1px #888888;
            top: 576px;
            left: 642px;
            z-index: 1;
            width: 85px;
            height: 44px;
        }
        .auto-style25 {
            position: absolute;
            top: 605px;
            left: 117px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 80px;
            left: 623px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 329px;
            left: 109px;
            z-index: 1;
            width: 290px;
        }
        .auto-style28 {
            height: 687px;
            position: absolute;
            top: 127px;
            left: 11px;
            z-index: 1;
            width: 1336px;
            background-color: #F7F0EF;
        }
        .auto-style29 {
            width: 891px;
            height: 677px;
            position: absolute;
            border-radius: 4px;
            box-shadow: 5px 5px 5px #888888;
            top: 10px;
            left: 222px;
            z-index: 1;
            background-color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style28">
        <div class="auto-style29">
            <asp:Image ID="Image2" runat="server" CssClass="auto-style12" ImageUrl="~/Images/Icons/img_avatar.png" />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Font-Bold="True" ForeColor="Black" Text="Username"></asp:Label>
            <asp:Image ID="Image3" runat="server" CssClass="auto-style15" ImageUrl="~/Images/Icons/username.png" />
            <asp:TextBox ID="username" runat="server" CssClass="auto-style18" Font-Bold="True" Font-Size="Medium" ForeColor="Gray"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style19" Font-Bold="True" Text="Password"></asp:Label>
            <asp:Image ID="Image4" runat="server" CssClass="auto-style20" ImageUrl="~/Images/Icons/key.png" />
            <asp:TextBox ID="password" runat="server" CssClass="auto-style21" Font-Bold="True" Font-Size="Medium" ForeColor="#666666" TextMode="Password">Enter your password</asp:TextBox>
            <asp:Button ID="loginButton" runat="server" BackColor="#4DD11C" BorderStyle="None" CssClass="auto-style22" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Login" OnClick="loginButton_Click"  />
            <asp:CheckBox ID="rememberMe" runat="server" Checked="True" CssClass="auto-style23" Font-Bold="True" Text="Remember Me" />
            <asp:Button ID="cancelButton" runat="server" BackColor="#F56C59" BorderStyle="None" CssClass="auto-style24" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Cancel" OnClick="cancelButton_Click" />
            <asp:LinkButton ID="forgotPasswordLink" runat="server" CssClass="auto-style25" OnClick="forgotPasswordLink_Click">Forgot Password?</asp:LinkButton>
            <asp:LinkButton ID="newAccountLink" runat="server" CssClass="auto-style26" OnClick="newAccountLink_Click">New? Create Account</asp:LinkButton>
            <asp:Label ID="errormsg" runat="server" CssClass="auto-style27" Font-Bold="True" ForeColor="Red" Text="Wrong username or password. Try Again" Visible="False"></asp:Label>
        </div>
        </div>
    </asp:Content>

