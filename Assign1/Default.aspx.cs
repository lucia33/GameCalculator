using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void summary_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // count the # of wins
                int winCount = 0;
                if (result1.Text.Equals("Win"))
                {
                    winCount++;
                }
                if (result2.Text.Equals("Win"))
                {
                    winCount++;
                }
                if (result3.Text.Equals("Win"))
                {
                    winCount++;
                }
                if (result4.Text.Equals("Win"))
                {
                    winCount++;
                }
                int loseCount = 4 - winCount;

                winNum.Text = "# of games won: " + winCount;
                loseNum.Text = "# of games lose: " + loseCount;
                winPercent.Text = "Winning%: " + winCount / 4.0;

                // other calculations
                int ttlPtsScorednum = Convert.ToInt32(PointsScored1.Text) + Convert.ToInt32(PointsScored2.Text) + Convert.ToInt32(PointsScored3.Text) + Convert.ToInt32(PointsScored4.Text);
                ttlPtsScored.Text = "Total points scored: " + Convert.ToString(ttlPtsScorednum);
                double ttlPtsAllowednum = Convert.ToDouble(PointsAllowed1.Text) + Convert.ToDouble(PointsAllowed2.Text) + Convert.ToDouble(PointsAllowed3.Text) + Convert.ToDouble(PointsAllowed4.Text);
                ttlPtsAllowed.Text = "Total points allowed: " + Convert.ToString(ttlPtsAllowednum);
                ptsDifferential.Text = "Points differential: " + Convert.ToString(ttlPtsScorednum - ttlPtsAllowednum);
                double ttlSpectatorsnum = Convert.ToDouble(spectators1.Text) + Convert.ToDouble(spectators2.Text) + Convert.ToDouble(spectators3.Text) + Convert.ToDouble(spectators4.Text);
                ttlSpectators.Text = "Total spectators: " + Convert.ToString(ttlSpectatorsnum);
                avgSpectators.Text = "Average spectators: " + Convert.ToString(ttlSpectatorsnum / 4.0);

            }  // end of isValid

        }  // end of summary click

    }
}