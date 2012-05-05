using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using System.Web.Configuration;
using ProgrammingContest.Data.DataObjects;

namespace ProgrammingContest.Data
{
    public class ProgrammingContestDataContextHandler : IDisposable
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public ProgrammingContestDataContextHandler()
        {
            _programmingContestDataContext = new ProgrammingContestDataContext(WebConfigurationManager.ConnectionStrings[0].ConnectionString);
        }

        
        public ProgrammingContestDataContext ProgrammingContestDatabase
        {
            get
            {
                return _programmingContestDataContext;
            }
        }

        public UserAdapter Users
        {
            get
            {
                return new UserAdapter(_programmingContestDataContext);
            }
        }

        public SolutionAdapter Solution
        {
            get
            {
                return new SolutionAdapter(_programmingContestDataContext);
            }
        }

        public ResultAdapter Result
        {
            get
            {
                return new ResultAdapter(_programmingContestDataContext);
            }
        }

        public ProblemsAdapter Problems
        {
            get
            {
                return new ProblemsAdapter(_programmingContestDataContext);
            }
        }

        public ContestSettingAdapter ContestSetting
        {
            get
            {
                return new ContestSettingAdapter(_programmingContestDataContext);
            }
        }

        public ContestPermissionAdapter ContestPermission
        {
            get
            {
                return new ContestPermissionAdapter(_programmingContestDataContext);
            }
        }

        #region IDisposable Members

        void IDisposable.Dispose()
        {
            _programmingContestDataContext.Dispose();
        }

        #endregion
    }
}