
using Framework.Authentication.Model.Factories;
using Framework.Authentication.Model.Repositories;
using System;
using System.Net;
using System.Web.Security;

namespace SignalR
{
  public partial class Home1 : System.Web.UI.Page
  {
    protected override void OnInit(EventArgs e)
    {
      if (Session["UserName"] != null && !string.IsNullOrEmpty(Session["UserName"].ToString()))
        TxtName.Text = Session["UserName"].ToString();
      base.OnInit(e);
    }
    protected void SaveNameAndRadius(object sender, EventArgs e)
    {
      Session["UserName"] = TxtName.Text;
      Session["Radius"] = TxtRadius.Text;
      Session["Latitude"] = Latitude.Value;
      Session["Longitude"] = Longitude.Value;
      Response.Redirect("/MessageBoard.aspx");
    }
  }
}