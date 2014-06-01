using System;
using System.Linq;

namespace SignalR.Controls
{
  public partial class BottomNavigationControl : System.Web.UI.UserControl
  {

    protected void NewDiscussion(object sender, EventArgs e)
    {
      Response.Redirect("/DiscussionBoard.aspx");
    }

    protected void ShowAllDiscussion(object sender, EventArgs e)
    {
      Response.Redirect("/MessageBoard.aspx");
    }

    protected void ChangeRadius(object sender, EventArgs e)
    {
      Response.Redirect("/Home.aspx");
    }

    public string IsMessageBoardPage
    {
      get { return GetPageName().ToLower().Equals("messageboard.aspx") ? "active" : string.Empty; }
    }

    public string IsNewDiscussionPage
    {
      get { return GetPageName().ToLower().Equals("DiscussionBoard.aspx") ? "active" : string.Empty; }
    }

    private string GetPageName()
    {
      return Request.Url.ToString().Split('/').Last();
    }
  }
}