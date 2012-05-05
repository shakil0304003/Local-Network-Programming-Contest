using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class UserAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public UserAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public List<User> GetAll()
        {
            return _programmingContestDataContext.Users.OrderBy(cpa => cpa.ID).ToList<User>();
        }

        public List<User> GetAllWithOutAdmin()
        {
            return _programmingContestDataContext.Users.Where(cpa => cpa.Name != "Admin").ToList<User>();
        }

        public User GetByIPAddress(string ip)
        {
            return _programmingContestDataContext.Users.Where(cpa => cpa.IPAddress == ip).FirstOrDefault();
        }

        public User GetByName(string name)
        {
            return _programmingContestDataContext.Users.Where(cpa => cpa.Name == name).FirstOrDefault();
        }

        public User GetById(long id)
        {
            return _programmingContestDataContext.Users.Where(cpa => cpa.ID == id).FirstOrDefault();
        }
    }
}