using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hansa.Web
{
    public class rptEntityMonthlyEmpDriverOTS
    {
        public rptEntityMonthlyEmpDriverOTS()
        {
            //
            // TODO: Add constructor logic here 
            //
        }

        public string EmpName { get; set; }
        public string Designation { get; set; }
        public string UnitName { get; set; }
        public string salaryPmonth { get; set; }
        public string Day { get; set; }
        public string MStart { get; set; }
        public string DoM { get; set; }
        public string InTime { get; set; }
        public string OutTime { get; set; }
        public decimal OverTimeHrs { get; set; }
        public string RegHour { get; set; }
        public decimal TotalHrs { get; set; }
        public decimal overTimeTK { get; set; }
        public decimal ratePHour { get; set; }

        public string totaldayofMonth { get; set; }

       // public decimal gTotal { get; set; }

    }
}