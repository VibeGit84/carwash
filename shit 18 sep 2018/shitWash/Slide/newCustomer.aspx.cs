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




public partial class customer_newCustomer : System.Web.UI.Page
{

        
        OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string streetAddress = txtHouseum.Text + " " + txtStrt.Text;
        try
        {
            conn.Open();
            int branchCode = 0;
            if(rbCode.SelectedValue.ToString()=="FNB")
            {
                branchCode=00001;
                lblBrachCode.Text = "0001";
            }

            else if (rbCode.SelectedValue.ToString() == "ABSA")
            {
                branchCode = 000323;
                lblBrachCode.Text = "000323";
            }

            else if (rbCode.SelectedValue.ToString() == "Standard Bank")
            {
                branchCode = 0007653;
                lblBrachCode.Text = "0007653";
            }

            else if (rbCode.SelectedValue.ToString() == "Capitec")
            {
                branchCode = 007622;
                lblBrachCode.Text = "007622";
            }
            
            
            string date = cardExpDate.SelectedDate.ToString();
            string bankName =rbCode.SelectedValue.ToString();
            String gender = ddrGen.SelectedValue.ToString();
            string cardType = CarType.SelectedValue.ToString();
            string regNum = txtLeter.Text + " " + txtNum.Text + " " + txtProv.Text;

            //string SqlQry = " CALL memreg('" + txtName.Text + "','" + txtSurname.Text + "','" + gender + "','"+TextBox1.Text +  "','" + txtCelNum.Text.ToString()+ "','" + txtAltCellNum.Text+"')";

            string SqlQry = " CALL newMember('" + txtName.Text + "','" + txtSurname.Text + "','" + gender +
                 "','" + txtIDnum.Text + "','" + txtCelNum.Text + "','" + txtAltCellNum.Text
                 + "','" + streetAddress + "','" + txtSuburb.Text + "','"
                 + date + "','" + txtAccNum.Text + "','" + bankName + "','" + cardType +
                 "','" + txtAccNum + "','" + branchCode +
                 "','" + regNum + "','" + txtCarBrand.Text + "','" + txtCarModel.Text + "','" + drpCarType.SelectedValue.ToString() +
                 "','" + txtCarColor.Text + "')";
 

            OdbcCommand comm = new OdbcCommand(SqlQry, conn);
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
                "ClientScript", "alert('You have successfully added a loyal customer...')", true);
        
        }
    }



    protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}