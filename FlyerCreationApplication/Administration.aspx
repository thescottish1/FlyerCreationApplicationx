<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="FlyerCreationApplication.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gvDealer" runat="server" AllowSorting="true" AllowPaging="true" AutoGenerateColumns="true"
         GridLines="Both"></asp:GridView>
</asp:Content>
