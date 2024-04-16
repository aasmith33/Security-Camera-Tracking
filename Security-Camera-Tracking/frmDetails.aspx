<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDetails.aspx.cs" Inherits="Security_Camera_Tracking.frmDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color: #003366">
        <h1 style="font-family: Arial, Helvetica, sans-serif; background-color: #003366; color: #FFFFFF;">
            Cameras
        </h1>
    </div>
    <br /><br />
    <asp:Button ID="btnBack" runat="server" Text="Back To Maps" OnClick="btnBack_Click" />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Camera_ID" DataSourceID="SqlDataSource3" Width="1089px">
        <Columns>
            <asp:BoundField DataField="Camera_ID" HeaderText="Camera ID" ReadOnly="True" SortExpression="Camera_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="IP_Address" HeaderText="IP Address" SortExpression="IP_Address" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Camera]"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Camera_ID" DataSourceID="SqlDataSource2" Height="50px" Width="1090px" >
        <Fields>
            <asp:BoundField DataField="Camera_ID" HeaderText="Camera ID" ReadOnly="True" SortExpression="Camera_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="ViewType" HeaderText="View Type" SortExpression="ViewType" />
            <asp:BoundField DataField="IP_Address" HeaderText="IP Address" SortExpression="IP_Address" />
            <asp:BoundField DataField="MAC_Address" HeaderText="MAC Address" SortExpression="MAC_Address" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Date_Installed" HeaderText="Date Installed" SortExpression="Date_Installed" />
            <asp:BoundField DataField="Server_ID" HeaderText="Server ID" SortExpression="Server_ID" />
            <asp:BoundField DataField="View_Description" HeaderText="View Description" SortExpression="View_Description" />
            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            <asp:BoundField DataField="serial_number" HeaderText="Serial Number" SortExpression="serial_number" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="Campus" HeaderText="Campus" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Camera] WHERE ([Camera_ID] = @Camera_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Camera_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
