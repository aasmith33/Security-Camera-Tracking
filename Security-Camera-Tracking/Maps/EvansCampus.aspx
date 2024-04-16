<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvansCampus.aspx.cs" Inherits="Security_Camera_Tracking.Maps.EvansCampus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:ImageMap ID="ImageMap1" runat="server" Height="853px" ImageUrl="~/Images/Evans.JPG" OnClick="ImageMap1_Click" Width="1086px">
        <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="EAC" Radius="80" X="510" Y="390" />
    </asp:ImageMap>
</asp:Content>
