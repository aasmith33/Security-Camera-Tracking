<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmReportMenu.aspx.cs" Inherits="Security_Camera_Tracking.frmReportMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color: #003366">
        <h1 style="font-family: Arial, Helvetica, sans-serif; background-color: #003366; color: #FFFFFF;">
            Reports
        </h1>
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="167px" style="text-align: center" BackColor="#CCCCCC" GroupingText="Cameras by Campus">
        <br />
        <span style="font-size: small">Please choose a campus:</span><span style="font-size: medium"><br /> </span>
        <asp:DropDownList ID="lstCampus" runat="server" AutoPostBack="True" Height="20px" Width="192px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="TR">Tyger River Campus</asp:ListItem>
            <asp:ListItem Value="Evans">Evans Campus</asp:ListItem>
            <asp:ListItem Value="Giles">Giles Central Campus</asp:ListItem>
            <asp:ListItem Value="Union">Union Campus</asp:ListItem>
            <asp:ListItem Value="Cherokee">Cherokee Campus</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnCamsByCampus" runat="server" Font-Bold="True" Height="30px" OnClick="btnCamsByCampus_Click" Text="Get Report" Width="130px" />
        <br />
        <br />
        <br />

        <br />

    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Height="192px" style="text-align: center" BackColor="Silver" GroupingText="Camera Details Report">
        <br />
        <br />
        <span style="font-size: small">Please choose a camera:</span><br />
        <asp:DropDownList ID="lstCameras" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Camera_ID" DataValueField="Camera_ID" Height="20px" Width="192px"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AAA-SCC-CPT-275-CapstoneConnectionString %>" SelectCommand="SELECT [Camera_ID] FROM [G3_Camera]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnCamDetails" runat="server" OnClick="btnCamDetails_Click" Text="Get Report" Width="130px" Font-Bold="True" Height="30px" />
        <br />
        <br />
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" Height="141px" style="text-align: center; font-size: medium; " GroupingText="IP Cameras">
        <br />
        <asp:Button ID="btnTotalIP" runat="server" Font-Bold="True" Height="30px" OnClick="btnTotalIP_Click" Text="Get Report" Width="130px" />
        <br />

    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" BackColor="Silver" GroupingText="Down Cameras" Height="146px" style="text-align: center; font-size: medium">
        <br />
        <asp:Button ID="btnDownCams" runat="server" Font-Bold="True" Height="30px" OnClick="btnDownCams_Click" Text="Get Report" Width="130px" />
        <br />
        <br />


    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server" Height="150px" BackColor="#CCCCCC" GroupingText="Total Device Licenses Used" style="text-align: center">
        <br />
        <br />
        <asp:Button ID="btnTotalLicenses" runat="server" Font-Bold="True" Height="30px" OnClick="btnTotalLicenses_Click" Text="Get Report" Width="130px" />

    </asp:Panel>

    <asp:Panel ID="Panel6" runat="server" BackColor="Silver" GroupingText="Total Device Licenses Available" style="text-align: center" Height="127px">
        <br />
        <br />
        <asp:Button ID="btnLicenseUsed" runat="server" Font-Bold="True" Height="30px" Text="Get Report" Width="130px" OnClick="btnLicenseUsed_Click" />

    </asp:Panel>

    <asp:Panel ID="Panel7" runat="server" BackColor="#CCCCCC" GroupingText="List of Cameras By Install Date"  style="text-align: center">
        <br />
        <span style="font-size: small">Please Choose an Install Date:<br /> </span>
        <asp:DropDownList ID="lstInstallDate" runat="server" DataSourceID="SqlDataSource2" DataTextField="Date_Installed" DataValueField="Date_Installed" Width="188px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AAA-SCC-CPT-275-CapstoneConnectionString %>" SelectCommand="SELECT DISTINCT [Date_Installed] FROM [G3_Camera]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnByDate" runat="server" Font-Bold="True" Height="30px" OnClick="btnByDate_Click" Text="Get Report" Width="130px" />
        <br />
        <br />


    </asp:Panel>

    <asp:Panel ID="Panel8" runat="server" BackColor="Silver" GroupingText="Server Details Report" style="text-align: center; font-size: small;">
        <br />
        Please Choose a Server:<br />
        <asp:DropDownList ID="lstServers" runat="server" DataSourceID="SqlDataSource3" DataTextField="ServerID" DataValueField="ServerID" Width="181px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AAA-SCC-CPT-275-CapstoneConnectionString %>" SelectCommand="SELECT [ServerID] FROM [G3_Server]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnByDate0" runat="server" Font-Bold="True" Height="30px" OnClick="btnByDate0_Click" Text="Get Report" Width="130px" />
        <br />
        <br />


    </asp:Panel>
</asp:Content>
