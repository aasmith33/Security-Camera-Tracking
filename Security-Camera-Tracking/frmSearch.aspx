<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmSearch.aspx.cs" Inherits="Security_Camera_Tracking.frmSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 style="color: #FFFFFF">Camera Search</h1>
    </div>
    <asp:Panel ID="Panel1" runat="server" GroupingText="Search">

            &nbsp;Serial Number:
            <asp:TextBox ID="txtSN" runat="server"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Server ID:
            <asp:TextBox ID="txtSrvr" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; IP Address:
            <asp:TextBox ID="txtIpAddress" runat="server"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Camera Name:&nbsp;
            <asp:TextBox ID="txtCamName" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make:
            <asp:TextBox ID="txtMake" runat="server"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Model:
            <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />

    </asp:Panel>

 <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Camera_ID" DataSourceID="SqlDataSource1" Height="184px" AllowPaging="True" Width="1160px" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="IP_Address" HeaderText="IP Address" SortExpression="IP_Address" />
                    <asp:BoundField DataField="Server_ID" HeaderText="Server ID" SortExpression="Server_ID" />
                    <asp:BoundField DataField="serial_number" HeaderText="Serial Number" SortExpression="serial_number" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Camera]" ></asp:SqlDataSource>


    <h3 style="color: #000000">Camera Details:</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="1168px" AutoGenerateRows="False" DataKeyNames="Camera_ID" DataSourceID="SqlDataSource2">
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
            <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#006699" />
        <HeaderStyle BackColor="#006699" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Camera] WHERE ([Camera_ID] = @Camera_ID)" DeleteCommand="DELETE FROM [G3_Camera] WHERE [Camera_ID] = @Camera_ID" InsertCommand="INSERT INTO [G3_Camera] ([Camera_ID], [Name], [Description], [Make], [Model], [ViewType], [IP_Address], [MAC_Address], [Status], [Attachments], [Date_Installed], [Server_ID], [View_Description], [Condition], [Campus], [serial_number], [username], [password]) VALUES (@Camera_ID, @Name, @Description, @Make, @Model, @ViewType, @IP_Address, @MAC_Address, @Status, @Attachments, @Date_Installed, @Server_ID, @View_Description, @Condition, @Campus, @serial_number, @username, @password)" UpdateCommand="UPDATE [G3_Camera] SET [Name] = @Name, [Description] = @Description, [Make] = @Make, [Model] = @Model, [ViewType] = @ViewType, [IP_Address] = @IP_Address, [MAC_Address] = @MAC_Address, [Status] = @Status, [Attachments] = @Attachments, [Date_Installed] = @Date_Installed, [Server_ID] = @Server_ID, [View_Description] = @View_Description, [Condition] = @Condition, [Campus] = @Campus, [serial_number] = @serial_number, [username] = @username, [password] = @password WHERE [Camera_ID] = @Camera_ID">
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
                <asp:Parameter Name="Attachments" Type="String" />
                <asp:Parameter Name="Date_Installed" Type="String" />
                <asp:Parameter Name="Server_ID" Type="String" />
                <asp:Parameter Name="View_Description" Type="String" />
                <asp:Parameter Name="Condition" Type="String" />
                <asp:Parameter Name="Campus" Type="String" />
                <asp:Parameter Name="serial_number" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Camera_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="ViewType" Type="String" />
                <asp:Parameter Name="IP_Address" Type="String" />
                <asp:Parameter Name="MAC_Address" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Attachments" Type="String" />
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
