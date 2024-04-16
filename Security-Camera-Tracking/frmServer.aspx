<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmServer.aspx.cs" Inherits="Security_Camera_Tracking.frmServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
        <h1 style="color: #FFFFFF">Server Search</h1>
    </div>
    <asp:Panel ID="Panel1" runat="server" GroupingText="Search" Width="722px" Height="181px">
            &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp; Server ID:
    <asp:TextBox ID="txtServer" runat="server"></asp:TextBox>



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Host Name:
    <asp:TextBox ID="txtHostName" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License:&nbsp;
    <asp:TextBox ID="txtLicense" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Host IP:
    <asp:TextBox ID="txtHostIP" runat="server"></asp:TextBox>
    <br />
    <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    </asp:Panel>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="444px" Width="1154px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ServerID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ServerID" HeaderText="Server ID" ReadOnly="True" SortExpression="ServerID" />
            <asp:BoundField DataField="Hostname" HeaderText="Host Name" SortExpression="Hostname" />
            <asp:BoundField DataField="Assigned_Devices_Licneses" HeaderText="Assigned Device Licenses" SortExpression="Assigned_Devices_Licneses" />
            <asp:BoundField DataField="Host_IP" HeaderText="Host IP" SortExpression="Host_IP" />
            <asp:BoundField DataField="Processors" HeaderText="Processors" SortExpression="Processors" />
            <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
            <asp:BoundField DataField="Buildings_Served" HeaderText="Buildings Served" SortExpression="Buildings_Served" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Server]"></asp:SqlDataSource>
    <br />
    <h2 style="color: #000000">Server Details:</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="238px" Width="1127px" AutoGenerateRows="False" DataKeyNames="ServerID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="ServerID" HeaderText="Server ID" ReadOnly="True" SortExpression="ServerID" />
            <asp:BoundField DataField="Hostname" HeaderText="Host Name" SortExpression="Hostname" />
            <asp:BoundField DataField="Assigned_Devices_Licneses" HeaderText="Assigned Devices Licenses" SortExpression="Assigned_Devices_Licneses" />
            <asp:BoundField DataField="Host_IP" HeaderText="Host IP" SortExpression="Host_IP" />
            <asp:BoundField DataField="Processors" HeaderText="Processors" SortExpression="Processors" />
            <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
            <asp:BoundField DataField="Recording_Space_Available" HeaderText="Recording Space Available" SortExpression="Recording_Space_Available" />
            <asp:BoundField DataField="Archive_Space" HeaderText="Archive Space" SortExpression="Archive_Space" />
            <asp:BoundField DataField="Used_Recording_Space_GB" HeaderText="Used Recording Space (GB)" SortExpression="Used_Recording_Space_GB" />
            <asp:BoundField DataField="Free_Recording_Space_GB" HeaderText="Free Recording Space (GB)" SortExpression="Free_Recording_Space_GB" />
            <asp:BoundField DataField="Last_Date_Checked" HeaderText="Date Last Checked" SortExpression="Last_Date_Checked" />
            <asp:BoundField DataField="Total_Device_Licences_Used" HeaderText="Total Device Licenses Used" SortExpression="Total_Device_Licences_Used" />
            <asp:BoundField DataField="Buildings_Served" HeaderText="Buildings Served" SortExpression="Buildings_Served" />
            <asp:BoundField DataField="Physical_Virtual" HeaderText="Physical Virtual" SortExpression="Physical_Virtual" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Archive_Space_GB" HeaderText="Archive Space (GB)" SortExpression="Archive_Space_GB" />
            <asp:BoundField DataField="Archive_Space_Free_GB" HeaderText="Archive Space Free (GB)" SortExpression="Archive_Space_Free_GB" />
            <asp:BoundField DataField="Operating_System" HeaderText="Operating System" SortExpression="Operating_System" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" DeleteCommand="DELETE FROM [G3_Server] WHERE [ServerID] = @ServerID" InsertCommand="INSERT INTO [G3_Server] ([ServerID], [Hostname], [Assigned_Devices_Licneses], [Host_IP], [Processors], [Ram], [Recording_Space_Available], [Archive_Space], [Used_Recording_Space_GB], [Free_Recording_Space_GB], [Last_Date_Checked], [Total_Device_Licences_Used], [Buildings_Served], [Physical_Virtual], [Location], [Archive_Space_GB], [Archive_Space_Free_GB], [Operating_System]) VALUES (@ServerID, @Hostname, @Assigned_Devices_Licneses, @Host_IP, @Processors, @Ram, @Recording_Space_Available, @Archive_Space, @Used_Recording_Space_GB, @Free_Recording_Space_GB, @Last_Date_Checked, @Total_Device_Licences_Used, @Buildings_Served, @Physical_Virtual, @Location, @Archive_Space_GB, @Archive_Space_Free_GB, @Operating_System)" SelectCommand="SELECT * FROM [G3_Server] WHERE ([ServerID] = @ServerID)" UpdateCommand="UPDATE [G3_Server] SET [Hostname] = @Hostname, [Assigned_Devices_Licneses] = @Assigned_Devices_Licneses, [Host_IP] = @Host_IP, [Processors] = @Processors, [Ram] = @Ram, [Recording_Space_Available] = @Recording_Space_Available, [Archive_Space] = @Archive_Space, [Used_Recording_Space_GB] = @Used_Recording_Space_GB, [Free_Recording_Space_GB] = @Free_Recording_Space_GB, [Last_Date_Checked] = @Last_Date_Checked, [Total_Device_Licences_Used] = @Total_Device_Licences_Used, [Buildings_Served] = @Buildings_Served, [Physical_Virtual] = @Physical_Virtual, [Location] = @Location, [Archive_Space_GB] = @Archive_Space_GB, [Archive_Space_Free_GB] = @Archive_Space_Free_GB, [Operating_System] = @Operating_System WHERE [ServerID] = @ServerID">
        <DeleteParameters>
            <asp:Parameter Name="ServerID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ServerID" Type="String" />
            <asp:Parameter Name="Hostname" Type="String" />
            <asp:Parameter Name="Assigned_Devices_Licneses" Type="Int32" />
            <asp:Parameter Name="Host_IP" Type="String" />
            <asp:Parameter Name="Processors" Type="String" />
            <asp:Parameter Name="Ram" Type="String" />
            <asp:Parameter Name="Recording_Space_Available" Type="String" />
            <asp:Parameter Name="Archive_Space" Type="String" />
            <asp:Parameter Name="Used_Recording_Space_GB" Type="Int32" />
            <asp:Parameter Name="Free_Recording_Space_GB" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Last_Date_Checked" />
            <asp:Parameter Name="Total_Device_Licences_Used" Type="Int32" />
            <asp:Parameter Name="Buildings_Served" Type="String" />
            <asp:Parameter Name="Physical_Virtual" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Archive_Space_GB" Type="Int32" />
            <asp:Parameter Name="Archive_Space_Free_GB" Type="Int32" />
            <asp:Parameter Name="Operating_System" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ServerID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Hostname" Type="String" />
            <asp:Parameter Name="Assigned_Devices_Licneses" Type="Int32" />
            <asp:Parameter Name="Host_IP" Type="String" />
            <asp:Parameter Name="Processors" Type="String" />
            <asp:Parameter Name="Ram" Type="String" />
            <asp:Parameter Name="Recording_Space_Available" Type="String" />
            <asp:Parameter Name="Archive_Space" Type="String" />
            <asp:Parameter Name="Used_Recording_Space_GB" Type="Int32" />
            <asp:Parameter Name="Free_Recording_Space_GB" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Last_Date_Checked" />
            <asp:Parameter Name="Total_Device_Licences_Used" Type="Int32" />
            <asp:Parameter Name="Buildings_Served" Type="String" />
            <asp:Parameter Name="Physical_Virtual" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Archive_Space_GB" Type="Int32" />
            <asp:Parameter Name="Archive_Space_Free_GB" Type="Int32" />
            <asp:Parameter Name="Operating_System" Type="String" />
            <asp:Parameter Name="ServerID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
