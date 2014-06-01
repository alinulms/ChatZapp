<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BottomNavigationControl.ascx.cs" Inherits="SignalR.Controls.BottomNavigationControl" %>
<%--<div class="navigation">
  <asp:Button ID="Button1" runat="server" OnClick="NewDiscussion" CssClass="button-new" Text="New discussion" UseSubmitBehavior="False" />
  <asp:Button ID="Button2" runat="server" OnClick="ShowAllDiscussion" CssClass="button-new" Text="List discussions" UseSubmitBehavior="False" />
  <asp:Button ID="Button3" runat="server" OnClick="ChangeRadius" CssClass="button-new" Text="Change radius" UseSubmitBehavior="False"/>
</div>--%>


<div class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ChatZapp</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="<%# IsNewDiscussionPage %>">
                    <asp:LinkButton runat="server" OnClick="NewDiscussion" Text="New discussion" />
                    <%--<asp:Button runat="server" OnClick="NewDiscussion" Text="New discussion" UseSubmitBehavior="False" />--%>
                </li>
                <li class="<%#IsMessageBoardPage %>">
                    <asp:LinkButton runat="server" OnClick="ShowAllDiscussion" Text="List Discussions" />
                    <%--<asp:Button runat="server" OnClick="ShowAllDiscussion" Text="List discussions" UseSubmitBehavior="False" />--%>
                </li>
                <li class="<%#IsMessageBoardPage %>">
                    <asp:LinkButton runat="server" OnClick="ChangeRadius" Text="Change radius" />
                    <%--<asp:Button runat="server" OnClick="ChangeRadius" Text="Change radius" UseSubmitBehavior="False" />--%>
                </li>
            </ul>
        </div>
    </div>
</div>
