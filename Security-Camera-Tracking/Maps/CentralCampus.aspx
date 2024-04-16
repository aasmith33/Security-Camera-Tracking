<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CentralCampus.aspx.cs" Inherits="Security_Camera_Tracking.Maps.CentralCampus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ImageMap ID="Map" runat="server" Height="977px" ImageUrl="~/Images/SCC-Giles-Campus-Map.jpg" Width="1129px" OnClick="Map_Click" HotSpotMode="PostBack">
        <asp:CircleHotSpot HotSpotMode="PostBack" X="425" Y="375" PostBackValue="PDH" Radius="40" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="Led" Radius="40" X="675" Y="425" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="SSB" Radius="40" X="680" Y="425" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="JAP" Radius="40" X="235" Y="270" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="HSB" Radius="40" X="125" Y="335" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="TRB" X="815" Y="200" Radius="40" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="LIB" Radius="40" X="745" Y="280" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="JDG" Radius="40" X="645" Y="135" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="COB" Radius="40" X="910" Y="55" />
    </asp:ImageMap>
</asp:Content>
