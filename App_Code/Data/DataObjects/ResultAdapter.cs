using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class ResultAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public ResultAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public List<Result> GetAll()
        {
            return _programmingContestDataContext.Results.OrderBy(cpa => cpa.ID).ToList<Result>();
        }

        public Result GetById(long id)
        {
            return _programmingContestDataContext.Results.Where(cpa => cpa.ID == id).FirstOrDefault();
        }

        public Result GetByName(string name)
        {
            return _programmingContestDataContext.Results.Where(cpa => cpa.Name == name).FirstOrDefault();
        }
    }
}