using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data;
using ProgrammingContest.Data;

namespace ProgrammingContest.Data.DataObjects
{
    public class ContestSettingAdapter
    {
        private ProgrammingContestDataContext _programmingContestDataContext = null;

        public ContestSettingAdapter(ProgrammingContestDataContext value)
        {
            _programmingContestDataContext = value;
        }

        public List<ContestSetting> GetAll()
        {
            return _programmingContestDataContext.ContestSettings.OrderBy(cpa => cpa.ID).ToList<ContestSetting>();
        }

        public ContestSetting GetById(long id)
        {
            return _programmingContestDataContext.ContestSettings.Where(cpa => cpa.ID == id).FirstOrDefault();
        }
    }
}