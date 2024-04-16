<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmMap.aspx.cs" Inherits="Security_Camera_Tracking.frmMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <br />
    <asp:Panel ID="Panel1" runat="server" Height="302px" BackColor="#336699">    
        <div class="text-center">
            <br /><br /><br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Please choose a campus:  "></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="Small" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="418px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Central Giles Campus</asp:ListItem>
                <asp:ListItem>Cherokee Campus</asp:ListItem>
                <asp:ListItem>Tyger River Campus</asp:ListItem>
                <asp:ListItem>Evans Campus</asp:ListItem>
                <asp:ListItem>Union Campus</asp:ListItem>
            </asp:DropDownList>
        </div>
        </asp:Panel>
</asp:Content>
