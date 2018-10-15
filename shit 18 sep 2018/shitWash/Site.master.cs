using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int numb;
        Random ran = new Random();
        numb = ran.Next(1,7);
        Image2.ImageUrl = "~/Slide/" + numb.ToString() + ".jpg";

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
  


    
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {

    }
    protected void dtsrcTips_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}