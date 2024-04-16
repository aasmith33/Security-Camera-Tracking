<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TygerRiverCampus.aspx.cs" Inherits="Security_Camera_Tracking.Maps.TygerRiverCampus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br /><br />
    <asp:ImageMap ID="ImageMap1" runat="server" Height="766px" ImageUrl="~/Images/TygerRiver.JPG" OnClick="ImageMap1_Click" Width="1077px">
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="TRB" Radius="60" X="610" Y="185" />
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="BMW" Radius="40" X="490" Y="115" />
    </asp:ImageMap>
</asp:Content>
