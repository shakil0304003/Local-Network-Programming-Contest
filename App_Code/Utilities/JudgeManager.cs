using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using ProgrammingContest.Data;
using ProgrammingContest.Data.DataObjects;
using Data;

public class JudgeManager
{
    private List<Judgement> allSolution = new List<Judgement>();
    private static Thread _mainThread = null;
    private static JudgeManager _instance;

    public static JudgeManager Instance
    {
        get
        {
            if (_instance == null)
                _instance = new JudgeManager();
            else if (_mainThread.IsAlive == false)
                _instance.RunMainThread();

            return _instance;
        }
    }

    public JudgeManager()
    {
        allSolution = new List<Judgement>();
        RunMainThread();
    }

    private void RunMainThread()
    {
        _mainThread = new Thread(RunningJudgeMent);
        _mainThread.Start();
    }

    public void AddSolution(Judgement j)
    {
        allSolution.Add(j);
    }

    private void RunningJudgeMent()
    {
        Thread thread = null;
        long limit = 0;
        long start = 0;
        while (true)
        {
            if (thread != null)
            {
                if (thread.IsAlive == false)
                {
                    thread = null;
                    allSolution.RemoveAt(0);
                }
                else if (limit < start)
                {
                    try
                    {
                        thread.Abort();
                    }
                    catch
                    { }

                    thread = null;

                    using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
                    {
                        Solution so = pcdch.Solution.GetById(allSolution[0].SoluTionID);
                        long resultId = pcdch.Result.GetByName("Crash").ID;
                        so.Result = pcdch.Result.GetByName("Crash");
                        so.ResultId = resultId;
                        pcdch.ProgrammingContestDatabase.SubmitChanges();
                    }

                    allSolution.RemoveAt(0);
                }
                else
                    start += 1000;
            }
            else if (allSolution.Count > 0)
            {
                start = 0;
               
                using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
                {
                    Problem problem = pcdch.Problems.GetById(allSolution[0].ProBlemsID);
                    limit = problem.Time * 1000 + 5 * 1000;
                }      
               
                thread = new Thread(allSolution[0].GoToJudgement);
                thread.Start();
            }

            Thread.Sleep(1000);
        }
    }
}