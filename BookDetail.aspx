<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetail.aspx.cs" Inherits="BookDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 892px;
        }
        .auto-style10 {
            width: 1338px;
            height: 495px;
            position: absolute;
            top: 135px;
            left: 12px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 75px;
            left: 141px;
            z-index: 1;
            width: 150px;
            height: 226px;
        }
        .auto-style22 {
            height: 782px;
        }
        .auto-style23 {
            width: 1341px;
            height: 660px;
            position: absolute;
            top: 135px;
            left: 13px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 116px;
            left: 118px;
            z-index: 1;
            width: 182px;
            height: 280px;
        }
        .auto-style25 {
            position: absolute;
            top: 110px;
            left: 338px;
            z-index: 1;
            height: 75px;
            width: 374px;
        }
        .auto-style26 {
            position: absolute;
            top: 204px;
            left: 338px;
            z-index: 1;
            width: 223px;
            height: 26px;
        }
        .auto-style27 {
            position: absolute;
            top: 253px;
            left: 400px;
            z-index: 1;
            width: 48px;
            height: 22px;
        }
        .auto-style28 {
            position: absolute;
            top: 252px;
            left: 342px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 293px;
            left: 337px;
            z-index: 1;
            width: 178px;
            height: 54px;
        }
        .auto-style30 {
            position: absolute;
            top: 328px;
            left: 552px;
            z-index: 1;
            width: 137px;
            height: 40px;
        }
        .auto-style31 {
            position: absolute;
            top: 271px;
            left: 552px;
            z-index: 1;
            width: 135px;
            height: 43px;
        }
        .auto-style32 {
            position: absolute;
            top: 419px;
            left: 115px;
            z-index: 1;
            width: 880px;
            height: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style22">

        <div class="auto-style23">
            <asp:Image ID="book_image" runat="server" CssClass="auto-style24" />
            <asp:Label ID="book_name" runat="server" CssClass="auto-style25" Font-Size="XX-Large" ForeColor="#CC3300" Text="Book name"></asp:Label>
            <asp:Label ID="author_name" runat="server" CssClass="auto-style26" Font-Size="X-Large" Text="Author"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style28" ForeColor="#CC0000" Text="Rating :-"></asp:Label>
            <asp:Label ID="rating" runat="server" CssClass="auto-style27" Font-Bold="True" ForeColor="#FF9900" Text="0%"></asp:Label>
            <asp:Button ID="book_return" runat="server" CssClass="auto-style30"  Text="Return Book"  BackColor="#999999" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="book_return_Click" Visible="False"/>
            <asp:Button ID="add2account" runat="server" CssClass="auto-style29"  BackColor="#669900" BorderStyle="None"  Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Add to account" OnClick="add2account_Click" />
            <asp:Button ID="reissueButton" runat="server" CssClass="auto-style31" BackColor="#FF5050" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="reissueButton_Click" Text="ReIssue" Visible="False" />
            <asp:Label ID="Label8" runat="server" CssClass="auto-style32" Text="Book Description Currently Not available"></asp:Label>
        </div>

    </div>
      
</asp:Content>

