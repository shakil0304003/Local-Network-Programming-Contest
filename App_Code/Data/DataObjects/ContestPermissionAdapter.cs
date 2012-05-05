using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class ContestPermissionAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public ContestPermissionAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public ContestPermission GetByUserIdAndContestId(long userId, long contestId)
        {
            return _programmingContestDataContext.ContestPermissions.Where(cpa => cpa.UserId == userId && cpa.ContestId == contestId).FirstOrDefault();
        }

        public List<ContestPermission> GetByUserId(long userId)
        {
            return _programmingContestDataContext.ContestPermissions.Where(cpa => cpa.UserId == userId).ToList<ContestPermission>();
        }
    }
}