<%@ Page Title="AddRemoveStock" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRemoveStock.aspx.cs" Inherits="StockManager.AddRemoveStock" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add/Remove Stock</h1>
    <br />
    <asp:Panel ID ="pnAddRemoveStock" runat="server">
    <asp:Button ID="BtnUpdate" runat="server" Text="Update Item Stock" CssClass="btn btn-success" Width="164px" OnClick="btnUpdate_Click" />
                        &nbsp
    <asp:Button ID="btnAdd" runat="server" Text="New Item" CssClass="btn btn-success" Width="164px" OnClick="btnAdd_Click" />
                        &nbsp
    <asp:Label ID="lbItem" runat="server" Text="Item Name:" CssClass="lbl" Width="164px" style="text-align: right" Visible="False"></asp:Label>
                        &nbsp
    <asp:TextBox ID="tbItem" runat="server" CssClass="lblItem" Visible="False"></asp:TextBox> 
                        &nbsp
    <asp:Label ID="lblItemGroupGet" runat="server" Text="Select Item Group:" CssClass="lbl" Width="164px" style="text-align: right" Visible="False"></asp:Label>
                        &nbsp
    <asp:DropDownList ID="ddGroupName" runat="server" DataSourceID="GroupName" DataTextField="GroupName" DataValueField="Id" Visible="False"></asp:DropDownList>
                        &nbsp
    <asp:Button ID="BtnCreate" runat="server" Text="Create" CssClass="btn btn-success" Width="164px" OnClick="BtnCreate_Click" Visible="False" />        
  
  
                         &nbsp    

    </asp:Panel>
    <asp:Panel ID ="Panel2" runat="server" Visible="False"> 
                <asp:Label ID="lbselectItem" runat="server" Text="Select a Item" CssClass="lbl" Width="164px"></asp:Label>
                            &nbsp
                <asp:DropDownList ID="ddItem" runat="server" DataSourceID="ddItems" DataTextField="Item" DataValueField="Id"></asp:DropDownList>
                            &nbsp
                <asp:Button ID="btnget" runat="server" Text="Go" CssClass="btn btn-success" OnClick="btnget_Click" Width="164px"/>
        <asp:Panel ID="pnldetails" runat="server" Visible="false">
                <br />
                <table>
                    <tr>
                        <td style="width: 179px">
                            <asp:Label ID="lblItem" runat="server" Text="Item Name:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtItem" runat="server" CssClass="lbltxt" ReadOnly="True" Width="250px" ></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td style="width: 179px">
                            <asp:Label ID="lblItemGroup" runat="server" Text="Item Group:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtItemGroup" runat="server" CssClass="lbltxt" ReadOnly="True" Width="250px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td style="width: 179px">
                            <asp:Label ID="lblQuantity" runat="server" Text="No. In Stock:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtQuantity" runat="server" CssClass="lbltxt" ReadOnly="True" Width="250px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td style="width: 179px">
                            <asp:Label ID="lblAddRemove" runat="server" Text="Add or Remove:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td>&nbsp</td>
                        <td>
                            <asp:DropDownList ID="ddAddOrRemove" runat="server" DataSourceID="AddRemove" DataTextField="ActionType" DataValueField="Id"></asp:DropDownList>

                    </tr>
                    <tr>
                        <td style="width: 179px; height: 24px;">
                            <asp:Label ID="lblQuantityChange" runat="server" Text="No. Added/Removed:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td style="height: 24px"></td>
                        <td style="height: 24px">
                            <asp:TextBox ID="txtQuantityChange" runat="server" CssClass="lbltxt"  Width="100px"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td style="width: 179px; height: 24px;">
                            <asp:Label ID="lblStaff" runat="server" Text="Changed By:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td style="height: 24px"></td>
                        <td style="height: 24px">
                            <asp:DropDownList ID="ddStaff" runat="server" DataSourceID="Staff" DataTextField="StaffName" DataValueField="Id"></asp:DropDownList>

                    </tr>

                    <tr>
                        <td style="width: 179px">
                            <asp:Label ID="lblNotes" runat="server" Text="Notes:" CssClass="lbl" ></asp:Label>

                        </td>
                        <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtNotes" runat="server" CssClass="lbltxt" Width="250px" Height="171px" TextMode="MultiLine"></asp:TextBox>

                    </tr>

                    <tr>
                        <td style="width: 179px">
                            <asp:Button ID="btnUpdateItems" runat="server" Text="Update" CssClass="btn btn-success" OnClick="btnUpdateItems_Click" Width="164px"/>

                    </tr>
                </table>
                <asp:SqlDataSource ID="AddRemove" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_ActionType_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="Staff" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_Staff_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="GroupName" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_ItemGroup_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="ddItems" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortalConnectionString %>" SelectCommand="usp_Items_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <br />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
 