<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmOfflineCameras.aspx.cs" Inherits="Security_Camera_Tracking.frmOfflineCameras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <asp:DetailsView ID="DetailsView1" runat="server" Height="294px" Width="1184px" AutoGenerateRows="False" DataKeyNames="Camera_ID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Camera_ID" HeaderText="Camer ID" ReadOnly="True" SortExpression="Camera_ID" />
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
            <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
            <asp:BoundField DataField="serial_number" HeaderText="Serial Number" SortExpression="serial_number" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AAA-SCC-CPT-275-CapstoneConnectionString %>" DeleteCommand="DELETE FROM [G3_Camera] WHERE [Camera_ID] = @Camera_ID" InsertCommand="INSERT INTO [G3_Camera] ([Camera_ID], [Name], [Description], [Make], [Model], [ViewType], [IP_Address], [MAC_Address], [Status], [Date_Installed], [Server_ID], [View_Description], [Condition], [Campus], [serial_number], [username], [password]) VALUES (@Camera_ID, @Name, @Description, @Make, @Model, @ViewType, @IP_Address, @MAC_Address, @Status, @Date_Installed, @Server_ID, @View_Description, @Condition, @Campus, @serial_number, @username, @password)" SelectCommand="SELECT * FROM [G3_Camera]" UpdateCommand="UPDATE [G3_Camera] SET [Name] = @Name, [Description] = @Description, [Make] = @Make, [Model] = @Model, [ViewType] = @ViewType, [IP_Address] = @IP_Address, [MAC_Address] = @MAC_Address, [Status] = @Status, [Date_Installed] = @Date_Installed, [Server_ID] = @Server_ID, [View_Description] = @View_Description, [Condition] = @Condition, [Campus] = @Campus, [serial_number] = @serial_number, [username] = @username, [password] = @password WHERE [Camera_ID] = @Camera_ID">
        <DeleteParameters>
            <asp:Parameter Name="Camera_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Camera_ID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="ViewType" Type="String" />
            <asp:Parameter Name="IP_Address" Type="String" />
            <asp:Parameter Name="MAC_Address" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Date_Installed" Type="String" />
            <asp:Parameter Name="Server_ID" Type="String" />
            <asp:Parameter Name="View_Description" Type="String" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="Campus" Type="String" />
            <asp:Parameter Name="serial_number" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="ViewType" Type="String" />
            <asp:Parameter Name="IP_Address" Type="String" />
            <asp:Parameter Name="MAC_Address" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Date_Installed" Type="String" />
            <asp:Parameter Name="Server_ID" Type="String" />
            <asp:Parameter Name="View_Description" Type="String" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="Campus" Type="String" />
            <asp:Parameter Name="serial_number" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="Camera_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
