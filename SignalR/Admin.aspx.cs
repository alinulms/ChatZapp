using System;
using System.Collections.Generic;
using SignalR.Model;
using SignalR.Model.Repositories;
using System.Linq;
using Facebook.Infrastructure;
using Framework.Facebook.Infrastructure;

namespace SignalR
{
  public partial class Admin : System.Web.UI.Page
  {
    protected override void OnInit(EventArgs e)
    {
      base.OnInit(e);
      FacebookUser user = FacebookAuth.CheckLogin();
      if (user != null)
      {
        
        Response.Write("<p>" + user.Email);
        Response.Write("<p>" + user.FirstName);
        Response.Write("<p>" + user.LastName);
      }
      DataBind();
    }

    protected IEnumerable<Message> DataSource
    {
      get { return MessageRepository.GetAll(); }
    }

    protected void DeleteAllMessages(object sender, EventArgs e)
    {
      MessageRepository.DeleteAll();
      Response.Redirect(".");
    }

   
  }
}