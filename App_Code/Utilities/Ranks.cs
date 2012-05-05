using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;

namespace Data
{
    public class Ranks
    {
        public Ranks()
        {

        }

        private string _Name;
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private long _solved;
        public long Solved
        {
            get { return _solved; }
            set { _solved = value; }
        }

        private DateTime _lastTimeOfAc;
        public DateTime LastTimeOfAc
        {
            get { return _lastTimeOfAc; }
            set { _lastTimeOfAc = value; }
        }

        private long _position;
        public long Position
        {
            get { return _position; }
            set { _position = value; }
        }

        private List<ProblemTry> _problem = new List<ProblemTry>();
        public List<ProblemTry> Problem
        {
            get { return _problem; }
            set { _problem = value; }
        }
    }

    public class Sort
    {

        public List<Ranks> RanksSort(List<Ranks> ranks)
        {
            long count = ranks.Count;

            for (int i = 0; i < count - 1; i++)
                for (int j = 0; j < count - 1 - i; j++)
                {
                    if (ranks[j].Solved < ranks[j + 1].Solved)
                    {
                        long t = ranks[j].Position;
                        ranks[j].Position = ranks[j + 1].Position;
                        ranks[j + 1].Position = t;
                        Ranks rk = ranks[j];
                        ranks[j] = ranks[j + 1];
                        ranks[j + 1] = rk;
                    }
                    else if (ranks[j].Solved != 0 && ranks[j + 1].Solved != 0 && ranks[j].Solved == ranks[j + 1].Solved)
                    if(ranks[j].LastTimeOfAc > ranks[j + 1].LastTimeOfAc)
                    {
                        long t = ranks[j].Position;
                        ranks[j].Position = ranks[j + 1].Position;
                        ranks[j + 1].Position = t;
                        Ranks rk = ranks[j];
                        ranks[j] = ranks[j + 1];
                        ranks[j + 1] = rk;
                    }
                }

            return ranks;
        }

    }
}