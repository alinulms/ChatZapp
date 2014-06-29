using Framework.Authentication.Model;
using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Framework.Authentication.Model.Factories
{
  public class UserFactory
  {
    public static User Create(string userName, string email, string password)
    {
      return new User
      {
        Email = email,
        Id = ObjectId.GenerateNewId(),
        Password = password,
        UserName = userName
      };
    }
  }
}