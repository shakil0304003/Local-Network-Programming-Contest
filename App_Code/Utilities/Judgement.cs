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
using Data;
using System.IO;
using System.Threading;
using System.Diagnostics;
using ProgrammingContest.Data;

public class Judgement
{
    private StreamWriter sw;
    private StreamReader sr;
    private StreamReader err;
    private string output;
    private bool eventHandled;

    private string _exePath = "";
    public string ExePath
    {
        get { return _exePath; }
        set { _exePath = value; }
    }

    private string _outputFile = "";
    public string OutputFile
    {
        get { return _outputFile; }
        set { _outputFile = value; }
    }

    private string _inputFile = "";
    public string InputFile
    {
        get { return _inputFile; }
        set { _inputFile = value; }
    }

    private string _judgeOutputFile = "";
    public string JudgeOutputFile
    {
        get { return _judgeOutputFile; }
        set { _judgeOutputFile = value; }
    }

    private long _solutionId = -1;
    public long SoluTionID
    {
        get { return _solutionId; }
        set { _solutionId = value; }
    }

    private long _problemsId = -1;
    public long ProBlemsID
    {
        get { return _problemsId; }
        set { _problemsId = value; }
    }

    public Judgement(string exePath, string outputFile, string inputFile, string judgeOutputFile, long solutionId, long problemsId)
    {
        ExePath = exePath;
        SoluTionID = solutionId;
        ProBlemsID = problemsId;
        OutputFile = outputFile;
        InputFile = inputFile;
        JudgeOutputFile = judgeOutputFile;
    }

    private bool FileCompare(string file1, string file2)
    {
        if (file1 == file2)
            return true;

        string solutionOutput = "";
        string problemOutput = "";

        using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
        {
            Problem problem = pcdch.Problems.GetById(ProBlemsID);

            if (problem.Output == null || problem.Output == "")
            {
                FileInfo fiRead = new FileInfo(file2);
                string input = "";

                if (fiRead.Exists)
                    input = File.ReadAllText(file2);

                problem.Output = input;

                pcdch.ProgrammingContestDatabase.SubmitChanges();
            }

            problemOutput = problem.Output;

            Solution solution = pcdch.Solution.GetById(SoluTionID);
            solutionOutput = solution.Output;
        }
       
        Boolean result = true;

        string[] fileOne = solutionOutput.Replace("\r\n","\n").Split('\n');
        string[] fileTwo = problemOutput.Replace("\r\n", "\n").Split('\n');
        int currentOne = 0;
        int currentTwo = 0;

        string line1 = fileOne[currentOne];
        string line2 = fileTwo[currentTwo];
        int lastIndex = -1;

        if (line1 != line2)
            result = false;

        if (result == true)
        {
            while (line1 != null || line2 != null)
            {
                currentOne++;
                currentTwo++;

                if (currentOne < fileOne.Length)
                    line1 = fileOne[currentOne];
                else
                    line1 = null;

                if (currentTwo < fileTwo.Length)
                    line2 = fileTwo[currentTwo];
                else
                    line2 = null;

                if (line1 != null)
                    while (line1.EndsWith(" "))
                    {
                        lastIndex = line1.Length - 1;
                        line1 = line1.Remove(lastIndex, 1);
                    }

                if (line2 != null)
                    while (line2.EndsWith(" "))
                    {
                        lastIndex = line2.Length - 1;
                        line2 = line2.Remove(lastIndex, 1);
                    }

                if (line1 != line2)
                {
                    if ((line1 == null && line2 == "") || (line1 == "" && line2 == null))
                        continue;

                    result = false;
                    break;
                }
            }
        }

        //fileOne.Close();
        //fileTwo.Close();

        return result;
    }

    private void myProcess_Exited(object sender, System.EventArgs e)
    {
        while (sr.Peek() != -1)
            output += sr.ReadLine() + "\n";
        eventHandled = true;
    }


    public void GoToJudgement()
    {
        long start = 0;

        try
        {
            Process p = new Process();

            ProcessStartInfo psI = new ProcessStartInfo(ExePath);
            psI.UseShellExecute = false;
            psI.RedirectStandardInput = true;
            psI.RedirectStandardOutput = true;
            psI.RedirectStandardError = true;
            psI.CreateNoWindow = true;
            p.StartInfo = psI;
            p.EnableRaisingEvents = true;
            p.Exited += new EventHandler(this.myProcess_Exited);
            p.Start();

            p.MaxWorkingSet = (IntPtr)(1024 * 1024 * 32);

            sw = p.StandardInput;
            sr = p.StandardOutput;
            err = p.StandardError;

            string input = "";
            long limit = 0;

            using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
            {
                Problem problem = pcdch.Problems.GetById(ProBlemsID);

                if (problem.Input == null || problem.Input == "")
                {
                    FileInfo fi = new FileInfo(InputFile);

                    if (fi.Exists)
                        input = File.ReadAllText(InputFile);
                    else
                        input = "";

                    problem.Input = input;
                    pcdch.ProgrammingContestDatabase.SubmitChanges();
                }
                else
                    input = problem.Input;

                limit = problem.Time * 1000;
            }

            sw.Write(input);
            sw.Close();

            int id = p.Id;

            eventHandled = false;

            const int SLEEP_AMOUNT = 100;

            while (!p.HasExited)
            {
                start += SLEEP_AMOUNT;
                if (start > limit)
                {
                    break;
                }
                Thread.Sleep(SLEEP_AMOUNT);
                p.Refresh();
            }

            if (start <= limit)
            {
                Thread.Sleep(1000);
                File.WriteAllText(OutputFile, output);

                using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
                {
                    Solution solution = pcdch.Solution.GetById(SoluTionID);
                    solution.Output = output;
                    pcdch.ProgrammingContestDatabase.SubmitChanges();
                }
             
                FileInfo fi1 = new FileInfo(OutputFile);

                using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
                {
                    Solution solution = pcdch.Solution.GetById(SoluTionID);

                    if (fi1.Exists)
                    {
                        bool result = FileCompare(OutputFile, JudgeOutputFile);

                        if (result == true)
                        {
                            long resultId = pcdch.Result.GetByName("Accept").ID;
                            solution.Result = pcdch.Result.GetByName("Accept");
                            solution.ResultId = resultId;
                        }
                        else
                        {
                            long resultId = pcdch.Result.GetByName("Wrong Answer").ID;
                            solution.Result = pcdch.Result.GetByName("Wrong Answer");
                            solution.ResultId = resultId;
                        }
                    }
                    else
                    {
                        long resultId = pcdch.Result.GetByName("Output File Not Created").ID;
                        solution.Result = pcdch.Result.GetByName("Output File Not Created");
                        solution.ResultId = resultId;
                    }

                    solution.RequireTime = Convert.ToDouble(Convert.ToDouble(start) / 1000);
                    pcdch.ProgrammingContestDatabase.SubmitChanges();
                }
            }
            else
            {
                try
                {
                    System.Diagnostics.Process pro = System.Diagnostics.Process.GetProcessById(id);
                    pro.Kill();
                }
                catch (Exception)
                {
                }

                using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
                {
                    Solution solution = pcdch.Solution.GetById(SoluTionID);
                    solution.Output = output;
                    File.WriteAllText(OutputFile, output);
                    long resultId = pcdch.Result.GetByName("Time Limit Exit").ID;
                    solution.Result = pcdch.Result.GetByName("Time Limit Exit");
                    solution.ResultId = resultId;
                    solution.RequireTime = Convert.ToDouble(Convert.ToDouble(start) / 1000);
                    pcdch.ProgrammingContestDatabase.SubmitChanges();
                }
            }
            
            p.Close();
            sr.Close();
            err.Close();
        }
        catch
        {
            using (ProgrammingContestDataContextHandler pcdch = new ProgrammingContestDataContextHandler())
            {
                Solution solution = pcdch.Solution.GetById(SoluTionID);
                long resultId = pcdch.Result.GetByName("Crash").ID;
                solution.Result = pcdch.Result.GetByName("Crash");
                solution.ResultId = resultId;

                solution.RequireTime = Convert.ToDouble(Convert.ToDouble(start) / 1000);
                pcdch.ProgrammingContestDatabase.SubmitChanges();
            }
        }
    }
}
