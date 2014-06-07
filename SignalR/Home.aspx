<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SignalR.Home1" %>

<%@ Import Namespace="System.Globalization" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">

    <div id="fb-root"></div>
    <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=795898957121228&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

        var redirect = function () {
            window.location = "/MessageBoard.aspx";
        };

    </script>

    <asp:Panel runat="server" CssClass="startupControllers">
        <div class="row">
            <div class="col-sm-6 col-md-2">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>What is your name</h3>
                        <asp:TextBox runat="server" ID="TxtName" required />
                        <h3>What is the scan radius? (km)</h3>
                        <asp:TextBox runat="server" ID="TxtRadius" required TextMode="Number" min="1" />
                        <br />
                        <p>
                            <asp:LinkButton runat="server" OnClick="SaveNameAndRadius" Text="Start" class="btn btn-primary" role="button"></asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-2">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>User Name</h3>
                        <asp:TextBox runat="server" ID="txtUsername"></asp:TextBox>
                        <h3>Password</h3>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
                        <p>
                            <asp:LinkButton runat="server" OnClick="Login" Text="Login" class="btn btn-primary" role="button"></asp:LinkButton>
                        </p>
                        <p>
                            <asp:LinkButton runat="server" OnClick="Signup" Text="Signup" class="btn btn-secundary" role="button"></asp:LinkButton>
                        </p>

                        <div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="true" onlogin="redirect"></div>
                    </div>
                </div>
            </div>
        </div>

    </asp:Panel>

    <%--<asp:Panel runat="server" ID="UserPanel" Visible="True" CssClass="userinfo">
        <h3 class="login-label">What is your name</h3>
        <asp:TextBox runat="server" ID="TxtName" required />

        <h3 class="login-label">What is the scan radius? (km)</h3>
        <asp:TextBox runat="server" ID="TxtRadius" required TextMode="Number" min="1" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="SaveNameAndRadius" Text="START" CssClass="button-start" />
    </asp:Panel>--%>
</asp:Content>

<asp:Content ID="HiddenContent" ContentPlaceHolderID="HiddenPlaceholder" runat="server">
    <div>
        <asp:HiddenField runat="server" ID="Latitude" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="Longitude" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="GroupId" ClientIDMode="Static" />
    </div>
</asp:Content>
