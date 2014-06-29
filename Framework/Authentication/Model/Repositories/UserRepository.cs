using Framework.Authentication.Data;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;

namespace Authentication.Model.Repositories
{
  public class UserRepository
  {
    private ChatzapDataContext chatzapDataContext;
    public UserRepository()
    {
      chatzapDataContext = new ChatzapDataContext();
    }
    
    public IEnumerable<User> GetAll()
    {
      foreach (var user in chatzapDataContext.Users)
      {
        yield return new User { UserName = user.UserName, Password = user.Password };
      }
    }

    public User GetByName(string name)
    {
      var dataUser = chatzapDataContext.Users.FirstOrDefault(user=>user.UserName.Equals(name));
      return new User { Password = dataUser.Password, UserName = dataUser.UserName };
    }

    public void InsertNewUser(User user)
    {
      Framework.Authentication.Data.User dataUser = new Framework.Authentication.Data.User { UserName = user.UserName, Password = user.Password };
      chatzapDataContext.Users.InsertOnSubmit(dataUser);

      try
      {
        chatzapDataContext.SubmitChanges();
      }
      catch (Exception e)
      {
        throw new Exception("Could not insert new user in db",e);
      }
    }
  }
}