using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class ProblemsAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public ProblemsAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public List<Problem> GetAll()
        {
            return _programmingContestDataContext.Problems.OrderBy(cpa => cpa.ID).ToList<Problem>();
        }

        public List<Problem> GetByContestId(long id)
        {
            return _programmingContestDataContext.Problems.Where(cpa => cpa.ContestID == id).ToList<Problem>();
        }

        public Problem GetById(long id)
        {
            return _programmingContestDataContext.Problems.Where(cpa => cpa.ID == id).FirstOrDefault();
        }
    }
}