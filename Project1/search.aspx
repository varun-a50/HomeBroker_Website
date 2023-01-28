<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Project1.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/banner.jpeg" class="img-fluid" style="width:100%"/>
    </section>
    <div class="text-center ps-5 pt-5">
    <div> &nbsp
        <form class="form-inline">
  <div class="form-group mb-2">
        <asp:TextBox  ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-info btn-lg" />
      </div>
            </form>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homebrokerConnectionString %>" SelectCommand="SELECT * FROM [Home_Details] WHERE ([place] = @place)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="place" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
     </div>
        </div>
</asp:Content>
