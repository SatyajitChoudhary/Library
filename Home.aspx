<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 2013px;
        }
        .auto-style10 {
            width: 1342px;
            height: 1888px;
            position: absolute;
            top: 122px;
            left: 5px;
            z-index: 1;
        }
      
        .auto-style11 {
            position: absolute;
            top: 83px;
            left: 108px;
            font-size:50px;
            z-index: 1;
            width: 599px;
            height: 70px;
        }
      
        .auto-style51 {
        width: 1341px;
        height: 1892px;
        position: absolute;
        top: 133px;
        left: 14px;
        z-index: 1;
    }
      
        .auto-style52 {
            position: absolute;
            top: 213px;
            left: 67px;
            z-index: 1;
            width: 1171px;
        }
        .auto-style53 {
            width: 100%;
            height: 412px;
        }
              
        .auto-style54 {
            height: 305px;
        }
              
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style51">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsersConnectionString8 %>" SelectCommand="SELECT TOP 8 * FROM Books"></asp:SqlDataSource>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 0px; top: 45px; position: absolute; height: 93px; padding-left:30px; width: 1325px" Text="Most Popular" Font-Names="Microsoft JhengHei Light" Font-Size="70px"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style52" DataKeyField="B_name" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style53">
                    <tr>
                        <td class="auto-style54" >
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl='<%# Eval("B_image") %>' style="z-index: 1; left: 13px; top: 53px;height: 307px; width: 221px" />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 13px; top: 366px;height: 54px; width: 221px" Text='<%# Eval("B_name") %>' Font-Bold="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#FF9900"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 13px; top: 424px;height: 35px; width: 220px" Text='<%# Eval("B_author") %>' Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <hr style="z-index: 1; left: 24px; top: 133px; position: absolute; height: -12px; width: 1270px" />
</div>
</asp:Content>

