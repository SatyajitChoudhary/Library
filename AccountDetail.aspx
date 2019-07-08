<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountDetail.aspx.cs" Inherits="AccountDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 66%;
            height: 604px;
        }
        .auto-style16 {
            width: 579px;
            height: 311px;
        }
        .auto-style18 {
            width: 788px;
            text-align: center;
            height: 311px;
        }
        .auto-style21 {
            width: 788px;
            text-align: center;
            height: 35px;
        }
        .auto-style22 {
            width: 579px;
            height: 35px;
        }
        .auto-style23 {
            width: 788px;
            text-align: center;
            height: 33px;
        }
        .auto-style24 {
            width: 579px;
            height: 33px;
        }
        .auto-style25 {
            width: 788px;
            text-align: center;
            height: 360px;
        }
        .auto-style26 {
            width: 579px;
            height: 360px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="z-index: 1; left: 12px; top: 135px; position: absolute; height: 574px; width: 1341px">
        
                    <asp:Label ID="Label6" runat="server" ForeColor="Red" style="z-index: 1; left: 93px; top: 38px; position: absolute; height: 26px; width: 576px" Text="You need to Login First"></asp:Label>
        
                    <asp:Label ID="Label2" runat="server" style="z-index: 1;left : 422px; top: 244px; position: absolute; width: 74px; height: 20px; bottom: 310px;" Text="Username :-"></asp:Label>
     
                
                    <asp:Label ID="booksIssued" runat="server" style="z-index: 1; left: 525px; top: 332px; position: absolute; width: 107px; height: 24px" Text="Label"></asp:Label>
              
                
                    <asp:Label ID="Label3" runat="server" style="z-index: 1; left : 423px; top: 335px; position: absolute; width: 99px; height: 20px" Text="Books Issued :-"></asp:Label>
                
                    <asp:Label ID="email" runat="server" style="z-index: 1; left: 524px; top: 274px; position: absolute; width: 360px; height: 22px" Text="Label"></asp:Label>
                
                    <asp:Label ID="Label4" runat="server" style="z-index: 1; left : 423px; top: 274px; position: absolute; width: 73px; height: 23px" Text="Email ID :-"></asp:Label>
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left : 423px; top: 304px; position: absolute; width: 73px; height: 22px" Text="Password :-"></asp:Label>
                
                    <asp:Label ID="username" runat="server" style="z-index: 1; left: 522px; top: 244px; position: absolute; width: 360px; height: 21px" Text="Label"></asp:Label>
                    <asp:Label ID="password" runat="server" style="z-index: 1; left: 525px; top: 302px; position: absolute; width: 370px; height: 22px" Text="Label"></asp:Label>
               
                    <asp:LinkButton ID="check_in" runat="server" style="z-index: 1; left: 643px; top: 331px; position: absolute; width: 58px" OnClick="check_in_Click" Visible="False">Check In</asp:LinkButton>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Icons/user_photo.png" style="z-index: 1; left: 284px; top: 87px; position: absolute; height: 135px; width: 135px" />
    </div>

</asp:Content>

