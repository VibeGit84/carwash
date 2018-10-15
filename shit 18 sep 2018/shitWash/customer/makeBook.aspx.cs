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

public partial class customer_makeBook : System.Web.UI.Page
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


            float washCost=0;
            float washSedan = 70;
            float washBakkie = 100;
            float washSUV = 90;
           // float typeValet


            if (rbCarType.SelectedValue.ToString() == "Sedan")
            {
                washCost = washCost + washSedan;

            }

            else if (rbCarType.SelectedValue.ToString() == "SUV")
            {
                washCost = washCost + washSUV;
            }

            else if (rbCarType.SelectedValue.ToString() == "Bakkie")
            {
                washCost = washCost + washBakkie;
            }
            else
            {
                washCost =0 ;
            }
     /*       //Pricing for addOn
            
                        float addOnCost = 0;
                        float addOnSedan = 45;
                        float addOnBakkie = 30;
                        float addOnSUV = 50;
          


                        if (rbAddOn.SelectedValue.ToString() == "Sedan")
                        {
                            addOnCost = addOnCost + addOnSedan;

                        }

                        else if (rbAddOn.SelectedValue.ToString() == "SUV")
                        {
                              addOnCost = addOnCost + addOnSUV;
                        }

                        else if (rbAddOn.SelectedValue.ToString() == "Bakkie")
                        {
                              addOnCost = addOnCost + addOnBakkie;
                        }
                        else
                        {
                           addOnCost = 0;
                        }


         */
                        


            //string regNum = txtLeter.Text + " " + txtNum.Text + "" + txtProv.Text;
            //int clientID = Convert.ToInt16(drpClientID.SelectedValue.ToString());
            //string gender = drpGen.SelectedValue.ToString();
            //string streetInfo = txtHnum.Text + "," + txtStreet.Text + "," + txtSub.Text;
            //string city = rdbCity.SelectedItem.ToString();
            //string regNum = txtLeter.Text + " " + txtNum.Text + " " + txtProv.Text;
            //string carType = drpCarType.SelectedValue.ToString();
            string time = drpTime.SelectedValue.ToString();
            string washType = rbWashType.SelectedValue.ToString();
            String addOn = rbAddOn.SelectedValue.ToString();
            string carType = rbCarType.SelectedValue.ToString();
            String servDate = drpDay.SelectedValue.ToString() + "-" + drpMon.SelectedValue.ToString() + "-" + drpYear.SelectedValue.ToString(); 
            String bookedDate = DateTime.Now.ToString("dd-MM-yyyy");
            int clintID = Convert.ToInt16(drpClinetId.SelectedValue.ToString());
            string SqlQry = " CALL makeBook('" + time + "','" + bookedDate + "','" + servDate + "','" + washType + "','" + addOn + "','" + carType + "','"+washCost+ "','"+clintID+ "')";


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
    protected void rbAddOn_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void drpClient_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}