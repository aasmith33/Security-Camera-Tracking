<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnionCampus.aspx.cs" Inherits="Security_Camera_Tracking.Maps.UnionCampus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br /><br />
    <div>
        <center>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Images/Union.JPG" OnClick="ImageMap1_Click">
                <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="ATC" Radius="80" X="140" Y="490" />
            </asp:ImageMap>
        </center>
    </div>
</asp:Content>
