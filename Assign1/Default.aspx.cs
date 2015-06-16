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
            int ttlPtsScorednum = Convert.ToInt32(pointsScored1.Value) + Convert.ToInt32(pointsScored2.Value) + Convert.ToInt32(pointsScored3.Value) + Convert.ToInt32(pointsScored4.Value);
            ttlPtsScored.Text = "Total points scored: " + Convert.ToString(ttlPtsScorednum);
            double ttlPtsAllowednum = Convert.ToDouble(PointsAllowed1.Value) + Convert.ToDouble(PointsAllowed2.Value) + Convert.ToDouble(PointsAllowed3.Value) + Convert.ToDouble(PointsAllowed4.Value);
            ttlPtsAllowed.Text = "Total points allowed: " + Convert.ToString(ttlPtsAllowednum);
            ptsDifferential.Text = "Points differential: " + Convert.ToString(ttlPtsScorednum - ttlPtsAllowednum);
            double ttlSpectatorsnum = Convert.ToDouble(spectators1.Value) + Convert.ToDouble(spectators2.Value) + Convert.ToDouble(spectators3.Value) + Convert.ToDouble(spectators4.Value);
            ttlSpectators.Text = "Total spectators: " + Convert.ToString(ttlSpectatorsnum);
            avgSpectators.Text = "Average spectators: " + Convert.ToString(ttlSpectatorsnum / 4.0); 
        }

    }
}