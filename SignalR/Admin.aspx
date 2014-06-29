<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SignalR.Admin" %>

<%@ Import Namespace="SignalR.Model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView runat="server" ID="adminMultiview" ActiveViewIndex="0">
            <asp:View runat="server" ID="Fb">
                <asp:TextBox ID="facebook" runat="server"></asp:TextBox>
            </asp:View>
            <%--<asp:View ID="tab1" runat="server">
                <table>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="BtnDeleteAll" OnClick="DeleteAllMessages" Text="DeleteAll" />
                        </td>
                    </tr>
                </table>
                <div>
                    <asp:Repeater runat="server" DataSource="<%#DataSource %>">
                        <HeaderTemplate>
                            <table>
                                <tr>
                                    <td>GroupId
                                    </td>
                                    <td>Author
                                    </td>
                                    <td>Latitude
                                    </td>
                                    <td>Longitude
                                    </td>
                                    <td>Send time
                                    </td>
                                    <td>Text
                                    </td>
                                    <td>Browser</td>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#((Message)Container.DataItem).GroupId %></td>
                                <td><%#((Message)Container.DataItem).Author %></td>
                                <td><%#((Message)Container.DataItem).Latitude %></td>
                                <td><%#((Message)Container.DataItem).Longitude %></td>
                                <td><%#((Message)Container.DataItem).SendTime %></td>
                                <td><%#((Message)Container.DataItem).Text %></td>
                                <td><%#((Message)Container.DataItem).Browser %></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </asp:View>--%>

           <%-- <asp:View runat="server" ID="ViewUsers">
                <asp:Repeater runat="server" ID="usersRepeater" DataSource="<%#Users %>">
                   <HeaderTemplate>
                       <table>
                   </HeaderTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#((Authentication.Model.User)Container.DataItem).UserName %>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </asp:View>--%>
        </asp:MultiView>


    </form>
</body>
</html>
