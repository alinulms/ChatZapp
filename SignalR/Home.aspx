﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SignalR.Home1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
  <asp:Panel runat="server" ID="UserPanel" Visible="True" CssClass="userinfo">
    <h2>What is your name</h2>
    <asp:TextBox runat="server" ID="TxtName" required />

    <h2>What is the scan radius? (km)</h2>
    <asp:TextBox runat="server" ID="TxtRadius" required TextMode="Number" min="1" />
    <br/>
    <asp:Button ID="Button1" runat="server" OnClick="SaveNameAndRadius" Text="START" CssClass="button-start" />
  </asp:Panel>
</asp:Content>

<asp:Content ID="HiddenContent" ContentPlaceHolderID="HiddenPlaceholder" runat="server">
  <div>
    <asp:HiddenField runat="server" ID="Latitude" ClientIDMode="Static" />
    <asp:HiddenField runat="server" ID="Longitude" ClientIDMode="Static" />
    <asp:HiddenField runat="server" ID="GroupId" ClientIDMode="Static" />
  </div>
</asp:Content>
