<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CherokeeCampus.aspx.cs" Inherits="Security_Camera_Tracking.Maps.CherokeeCampus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:ImageMap ID="ImageMap1" runat="server" Height="903px" ImageUrl="~/Images/Capture.JPG" Width="1145px" OnClick="ImageMap1_Click">
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="LHP" Radius="40" X="295" Y="290" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="PAB" Radius="40" X="295" Y="365" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="CAM" Radius="40" X="260" Y="370" />
    </asp:ImageMap>
</asp:Content>
