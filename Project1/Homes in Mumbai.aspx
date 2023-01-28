<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homes in Mumbai.aspx.cs" Inherits="Project1.Homes_in_Mumbai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/banner.jpeg" class="img-fluid" style="width:100%"/>
    </section> 
    <div> &nbsp</div>
    <div class=" text-center ps-5 pt-5">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
        <ItemStyle Height="450px" Width="450px" />
    <ItemTemplate>
        <table border="1" class="w-100">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl='<%# Eval("image") %>' Width="450px" />
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label1" runat="server" style="text-align: center;font-weight:bold" Text="Place :"></asp:Label>
                    <asp:Label ID="Label2" runat="server" style="text-align: center" Text='<%# Eval("place") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label3" runat="server" style="text-align: center;font-weight:bold" Text="Address :"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label5" runat="server" style="text-align: center;font-weight:bold" Text="Price :"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Lakhs"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="wishlist" Height="28px" ImageUrl="~/imgs/favorite.jpg" Width="39px" />
                    <asp:Label ID="Label20" runat="server" Text="Add to wishlist"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
        <separatorstyle />
    <SeparatorTemplate>
              <table width="20px">
                    <tr>
                        <td>&nbsp;</td>
                     </tr>
              </table>
     </SeparatorTemplate>
</asp:DataList>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homebrokerConnectionString %>" SelectCommand="SELECT * FROM [Home_Details] where place = 'Mumbai'"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
</asp:Content>
