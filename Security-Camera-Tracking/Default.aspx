<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Security_Camera_Tracking.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color: #003366">
        <h1 style="font-family: Arial, Helvetica, sans-serif; background-color: #003366; color: #FFFFFF;">SCC Security Camera Tracking</h1>
        <p class="lead"><span style="color: #FFFFFF">Search for a specific camera, search servers, compile reports on cameras and more. </span></p>
    </div>
    <asp:Panel ID="camStatus" runat="server" Height="152px" style="margin-top: 0px; background-color: #000000; text-align: center;">
        <span style="color: #FFFFFF; font-size: small"><strong>
        <br />
        Offline Cameras</strong></span><asp:ImageButton ID="redDot" runat="server" ImageUrl="~/Images/icons8_red_circle_16.png" Visible="False" />
        <br />
        <asp:ListBox ID="lstCam" runat="server" AutoPostBack="True" BackColor="Black" Font-Bold="True" ForeColor="White" OnSelectedIndexChanged="lstCam_SelectedIndexChanged" Width="336px"></asp:ListBox>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AAA-SCC-CPT-275-CapstoneConnectionString %>" SelectCommand="SELECT * FROM [G3_Camera]"></asp:SqlDataSource>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="#336699" Height="191px" style="text-align: center; margin-top: 0px">
        <br />
        <h2 style="color: #000000">Camera Search</h2>
        <p style="color: #000000">Search for a campus security camera<br />
            and view the details of that camera.</p>
            <p>
                <a class="btn btn-default" href="frmSearch" style="border-style: outset; color: #000000; width: 85px;">Search</a><span style="color: #000000"> </span>
            </p>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" BackColor="#006666" Height="191px">
                <br />
                    <h2 style="color: #000000" class="text-center">Report Camera Outages</h2>
            <p style="color: #000000" class="text-center">
                Report camera outage or view obstruction.</p>
            <p class="text-center"><a class="btn btn-default" href="frmOutage" style="color: #000000; width: 106px;">Report Outage</a></p>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" BackColor="#669999" Height="191px">
                <br />
            <h2 style="color: #000000" class="text-center">Server Search</h2>
                <p style="color: #000000" class="text-center">
                    Search for a server and view the details of that server.
                </p>
                <p class="text-center">
                    <a class="btn btn-default" href="frmServer" style="color: #000000; width: 81px;">Search </a><span style="color: #000000"> </span>
                </p>
    </asp:Panel>
    
    <asp:Panel ID="Panel5" runat="server" BackColor="#006699" Height="191px" style="text-align: center">
                <br />
            <h2 style="color: #000000">Camera Map</h2>
            <p style="color: #000000">
                Find cameras using this interactive map of each campus.
            </p>
            <p>
                <a class="btn btn-default" href="frmMap" style="color: #000000; width: 65px;">Go </a><span style="color: #000000"> </span>
            </p>
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server" BackColor="#336699" Height="191px">
                <br />
        <h2 style="color: #000000" class="text-center">Reports</h2>
            <p style="color: #000000" class="text-center">
                Compile reports on cameras, servers
                <br />
                and more.
            </p>
            <p class="text-center">
                <a class="btn btn-default" href="frmReportMenu" style="color: #000000">Create Report</a><span style="color: #000000"> </span>
            </p>
    </asp:Panel>


    </asp:Content>
