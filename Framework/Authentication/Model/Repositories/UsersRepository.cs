using Framework.Authentication.Model;
using Mongo.Infrastructure;
using MongoDB.Driver;
using MongoDB.Driver.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Framework.Authentication.Model.Repositories
{
  public class UsersRepository
  {
    private const string CollectionName = "ChatzappUsers";

    private static MongoDatabase DataProvider { get { return MongoDataProvider.Get(); } }
    private static MongoCollection Collection { get { return DataProvider.GetCollection(CollectionName); } }

    public static IEnumerable<User> GetAll()
    {
      if (Collection == null)
        throw new NullReferenceException("Could not find ChatzappUsers collection");
      return Collection.FindAllAs<User>();
    }

    public static User Get(string userName)
    {
      if(Collection == null)
        throw new NullReferenceException("Could not find ChatzappUsers collection");
      var query = Query<User>.EQ(u => u.UserName, userName);
      return Collection.FindAs<User>(query).FirstOrDefault();
    }

    public static void Insert(User user)
    {
      Collection.Insert(user);
    }
  }
}