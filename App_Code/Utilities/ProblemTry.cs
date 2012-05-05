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
    public class ProblemTry
    {
        public ProblemTry()
        {
        }

        private string _Name;
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private long _resultId;
        public long ResultId
        {
            get { return _resultId; }
            set { _resultId = value; }
        }

        private long _numberOfSubmission;
        public long NumberOfSubmission
        {
            get { return _numberOfSubmission; }
            set { _numberOfSubmission = value; }
        }

        private double _requireTime = 0.0;
        public double RequireTime
        {
            get { return _requireTime; }
            set { _requireTime = value; }
        }

        private string _sourceFilePath = "";
        public string SourceFilePath
        {
            get { return _sourceFilePath; }
            set { _sourceFilePath = value; }
        }
    }
}