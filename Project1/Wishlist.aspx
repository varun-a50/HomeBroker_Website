<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Project1.Wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/banner.jpeg" class="img-fluid" style="width:100%"/>
    </section> 
    <div> &nbsp</div>
    <div class="text-center ps-5 pt-5">
    <asp:Label ID="Label1" runat="server" Text="You have "></asp:Label>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text=" items in Wishlist"></asp:Label>
    <br />
        </div>
    <div class="text-center ps-5 pt-5">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="ID">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="image" HeaderText="Home Image">
                <ControlStyle Height="280px" Width="500px" />
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Height="280px" HorizontalAlign="Center" Width="500px" Wrap="False" />
            </asp:ImageField>
            <asp:BoundField DataField="place" HeaderText="Place">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address">
            <ControlStyle Height="100px" Width="150px" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="True" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price (in Lakhs)">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </div>
    <div>&nbsp</div>
     <div>&nbsp</div>

</asp:Content>
