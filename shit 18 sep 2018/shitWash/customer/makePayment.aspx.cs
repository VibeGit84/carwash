using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
using System.Data;
using System.Data.Odbc;



public partial class customer_makePayment : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            int accIDd = Convert.ToInt16(drpAccID.SelectedValue.ToString());
            String today = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day;

            string que = " CALL pay('" + today +"','"+ txtAmt.Text+"','"+ accIDd + "')"; //"','"+clientID+ 
            
           
            OdbcCommand comm = new OdbcCommand(que, conn);
         
            comm.ExecuteNonQuery();
        }

        catch (Exception er)
        {
            Response.Write(er.Message);
        }
        finally
        {
            conn.Close();

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page),
                "ClientScript", "alert('Payment succesfuly made, Thank you!!...')", true);

            
            Response.Redirect("~/customer/makePayment.aspx");
        } 
    }
}