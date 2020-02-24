<%@ Page Title="StockHistory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockHistory.aspx.cs" Inherits="StockManager.StockHistory" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Stock History</h1>
    <br />
    <asp:Panel ID ="pnlStockHistory" runat="server">
        
        <asp:GridView ID ="gvStockHistory" runat="server" AutoGenerateColumns="False" GridLines="None" CellSpacing="-1" AllowSorting="True" CssClass="table table-default table-condensed" DataSourceID="gv_StockHistory" >
<AlternatingRowStyle BackColor="White" />

            <Columns>
 
                <asp:BoundField DataField="Staff" HeaderText="Staff" SortExpression="Staff" />
                <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                <asp:BoundField DataField="QuantityChange" HeaderText="Quantity Change" SortExpression="QuantityChange" />
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
 
                <asp:BoundField DataField="ItemGroup" HeaderText="Item Group" SortExpression="ItemGroup" />
                <asp:BoundField DataField="ActionDate" HeaderText="Action Date" SortExpression="ActionDate" />
                <asp:BoundField DataField="ActionNotes" HeaderText="Notes" SortExpression="ActionNotes" />
 
            </Columns>

        </asp:GridView>

    </asp:Panel>
<asp:SqlDataSource ID="gv_StockHistory" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_StockHistory_Get" SelectCommandType="StoredProcedure"  ></asp:SqlDataSource>

</asp:Content>

