<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SC1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Current Stock</h1>
    <br />
    <asp:Panel ID ="pnlund" runat="server">
        
        <asp:GridView ID ="gvund" runat="server" AutoGenerateColumns="False" GridLines="None" CellSpacing="-1" AllowSorting="True" CssClass="table table-default table-condensed" DataSourceID="gv_StockList" >
<AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                <asp:BoundField DataField="ItemGroup" HeaderText="Item Group" SortExpression="ItemGroup" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>

        </asp:GridView>

    </asp:Panel>
<asp:SqlDataSource ID="gv_StockList" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_Stocklist_Get" SelectCommandType="StoredProcedure"  ></asp:SqlDataSource>

</asp:Content>
