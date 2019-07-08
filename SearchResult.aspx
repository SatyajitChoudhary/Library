<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
        width: 1341px;
        height: 1895px;
        position: absolute;
        top: 136px;
        left: 13px;
        overflow-y:scroll;
        z-index: 1;
    }
        .auto-style14 {
            width: 100%;
            height: 404px;
        }
        .overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #e0d8d8;
  
}
        .auto-style15 {
            height: 272px
        }
        .auto-style15:hover.overlay {
            opacity:1;
        }
        .auto-style16 {
            height: 58px;
        }
        .auto-style17 {
            height: 38px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style12" >
        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 75px; top: 57px; position: absolute; height: 22px; width: 605px" Text="Sorry no Results Found" Visible="False"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" style="z-index: 1; left: 0px; top: 33px; margin-left: 169px; margin-top: 103px;" RepeatColumns="4" RepeatDirection="Horizontal" Width="984px" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15">
                            <asp:ImageButton ID="Book_Img" runat="server" style="z-index: 1; left: 25px; top: 60px;  height: 255px; width: 195px" CommandName="BookDetail" ImageUrl='<%# Eval("B_image") %>' CommandArgument='<%# Eval("B_name") %>'  />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Book_Name" runat="server" style="z-index: 1; left: 14px; top: 330px;  height: 52px; width: 220px" Text='<%# Eval("B_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Book_Author" runat="server" style="z-index: 1; left: 19px; top: 390px;  height: 29px; width: 217px; bottom: 726px" Text='<%# Eval("B_author") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 49px; top: 430px; ]" Text="Rating :-"></asp:Label>
                            <asp:Label ID="Book_Rating" runat="server" style="z-index: 1; left: 106px; top: 430px;" Text='<%# Eval("B_rating") %>'></asp:Label>
                            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 152px; top: 429px;" Text="%"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</div>
</asp:Content>

