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


public partial class addCar : System.Web.UI.Page
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
           
            //string regNum = txtLeter.Text + " " + txtNum.Text + "" + txtProv.Text;
            //int clientID = Convert.ToInt16(drpClientID.SelectedValue.ToString());
            string gender = drpGen.SelectedValue.ToString();
            string streetInfo = txtHnum.Text + "," + txtStreet.Text + "," + txtSub.Text;
            string   city = rdbCity.SelectedItem.ToString();
            string regNum = txtLeter.Text + " " + txtNum.Text + " " + txtProv.Text;
            string carType = drpCarType.SelectedValue.ToString();
            string SqlQry = " CALL new('" + txtName.Text + "','" + txtSurname.Text+ "','" + txtID.Text+"','"+gender+ "','" + txtCellphone.Text+ "','"+
                txtCellphone2.Text + "','"+ city +"','"+ streetInfo +
                "','"+regNum+"','"+ txtCarBrand.Text +"','"+ txtCarModel.Text +"','"+carType+ "','"+  txtCarColor.Text+"')";


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

          
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }

    protected void txtID_TextChanged(object sender, EventArgs e)
    {
        //cmdInsert.Enabled = true;
    }
}