using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class SolutionAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public SolutionAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public List<Solution> GetAll()
        {
            return _programmingContestDataContext.Solutions.OrderByDescending(cpa => cpa.ID).ToList<Solution>();
        }

        public List<Solution> GetByProblemIdAndUserId(long problemId, long userId)
        {
            return _programmingContestDataContext.Solutions.Where(cpa => cpa.ProblemId == problemId && cpa.UserId == userId).OrderBy(param => param.time).ToList<Solution>();
        }

        public Solution GetById(long id)
        {
            return _programmingContestDataContext.Solutions.Where(cpa => cpa.ID == id).FirstOrDefault();
        }
    }
}