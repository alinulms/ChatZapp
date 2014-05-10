<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BottomNavigationControl.ascx.cs" Inherits="SignalR.Controls.BottomNavigationControl" %>
<div class="navigation">
  <asp:Button ID="Button1" runat="server" OnClick="NewDiscussion" CssClass="button-new" Text="New discussion" UseSubmitBehavior="False" />
  <asp:Button ID="Button2" runat="server" OnClick="ShowAllDiscussion" CssClass="button-new" Text="List discussions" UseSubmitBehavior="False" />
  <asp:Button ID="Button3" runat="server" OnClick="ChangeRadius" CssClass="button-new" Text="Change radius" UseSubmitBehavior="False"/>
</div>
