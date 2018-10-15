<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="welcomePage.aspx.cs" Inherits="customer_welcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 4px;
        }
        .style5
        {
            height: 4px;
            width: 132px;
            text-align: right;
        }
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            text-align: right;
        }
        .style8
        {
            font-size: medium;
        }
        .style9
        {
            text-align: center;
            color: #000000;
            font-size: medium;
            background-color: #CCFFCC;
        }
        .style10
        {
            font-size: medium;
            height: 25px;
            color: #000000;
            text-align: center;
            background-color: #CCFFCC;
        }
        .style11
        {
            color: white;
        }
        .style12
        {
        }
        .style13
        {
            width: 337px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style12" colspan="2">
                <h2 class="style11">
                    <strong>ENJOY SEPVENS CAR WASH&nbsp; SERVICES</strong></h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT MAX(cust_id), sepvens.tbl_car.car_regNum, sepvens.tbl_car.car_brand, sepvens.tbl_car.car_model, sepvens.tbl_car.car_type, sepvens.tbl_car.car_color, sepvens.tbl_customer.cust_name, sepvens.tbl_customer.cust_surname, sepvens.tbl_customer.cust_gender, sepvens.tbl_customer.cust_idNum, sepvens.tbl_customer.cust_PhoneNum, sepvens.tbl_customer.cust_altPhoneNum, sepvens.tbl_customer.cust_suburb, sepvens.tbl_customer.cust_streetInfo, sepvens.tbl_customer.fk_cWashID FROM sepvens.tbl_car, sepvens.tbl_customer WHERE (sepvens.tbl_car.fk_custID = sepvens.tbl_customer.cust_id)">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:FormView ID="FormView1" runat="server" 
                    DataSourceID="SqlDataSource1" style="font-weight: 700; color: #FFFFFF">
                    <EditItemTemplate>
                        MAX(sepvens.tbl_customer.cust_id):
                        <asp:Label ID="MAX_sepvens_tbl_customer_cust_id_Label1" runat="server" 
                            Text='<%# Eval("[MAX(sepvens.tbl_customer.cust_id)]") %>' />
                        <br />
                        car_regNum:
                        <asp:TextBox ID="car_regNumTextBox" runat="server" 
                            Text='<%# Bind("car_regNum") %>' />
                        <br />
                        car_brand:
                        <asp:TextBox ID="car_brandTextBox" runat="server" 
                            Text='<%# Bind("car_brand") %>' />
                        <br />
                        car_model:
                        <asp:TextBox ID="car_modelTextBox" runat="server" 
                            Text='<%# Bind("car_model") %>' />
                        <br />
                        car_type:
                        <asp:TextBox ID="car_typeTextBox" runat="server" 
                            Text='<%# Bind("car_type") %>' />
                        <br />
                        car_color:
                        <asp:TextBox ID="car_colorTextBox" runat="server" 
                            Text='<%# Bind("car_color") %>' />
                        <br />
                        cust_name:
                        <asp:TextBox ID="cust_nameTextBox" runat="server" 
                            Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:TextBox ID="cust_surnameTextBox" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_gender:
                        <asp:TextBox ID="cust_genderTextBox" runat="server" 
                            Text='<%# Bind("cust_gender") %>' />
                        <br />
                        cust_idNum:
                        <asp:TextBox ID="cust_idNumTextBox" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:TextBox ID="cust_PhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:TextBox ID="cust_altPhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:TextBox ID="cust_suburbTextBox" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_streetInfo:
                        <asp:TextBox ID="cust_streetInfoTextBox" runat="server" 
                            Text='<%# Bind("cust_streetInfo") %>' />
                        <br />
                        fk_cWashID:
                        <asp:TextBox ID="fk_cWashIDTextBox" runat="server" 
                            Text='<%# Bind("fk_cWashID") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        car_regNum:
                        <asp:TextBox ID="car_regNumTextBox" runat="server" 
                            Text='<%# Bind("car_regNum") %>' />
                        <br />
                        car_brand:
                        <asp:TextBox ID="car_brandTextBox" runat="server" 
                            Text='<%# Bind("car_brand") %>' />
                        <br />
                        car_model:
                        <asp:TextBox ID="car_modelTextBox" runat="server" 
                            Text='<%# Bind("car_model") %>' />
                        <br />
                        car_type:
                        <asp:TextBox ID="car_typeTextBox" runat="server" 
                            Text='<%# Bind("car_type") %>' />
                        <br />
                        car_color:
                        <asp:TextBox ID="car_colorTextBox" runat="server" 
                            Text='<%# Bind("car_color") %>' />
                        <br />
                        cust_name:
                        <asp:TextBox ID="cust_nameTextBox" runat="server" 
                            Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:TextBox ID="cust_surnameTextBox" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_gender:
                        <asp:TextBox ID="cust_genderTextBox" runat="server" 
                            Text='<%# Bind("cust_gender") %>' />
                        <br />
                        cust_idNum:
                        <asp:TextBox ID="cust_idNumTextBox" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:TextBox ID="cust_PhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:TextBox ID="cust_altPhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:TextBox ID="cust_suburbTextBox" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_streetInfo:
                        <asp:TextBox ID="cust_streetInfoTextBox" runat="server" 
                            Text='<%# Bind("cust_streetInfo") %>' />
                        <br />
                        fk_cWashID:
                        <asp:TextBox ID="fk_cWashIDTextBox" runat="server" 
                            Text='<%# Bind("fk_cWashID") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        MAX(sepvens.tbl_customer.cust_id):
                        <asp:Label ID="MAX_sepvens_tbl_customer_cust_id_Label" runat="server" 
                            Text='<%# Eval("[MAX(sepvens.tbl_customer.cust_id)]") %>' />
                        <br />

                        car_regNum:
                        <asp:Label ID="car_regNumLabel" runat="server" 
                            Text='<%# Bind("car_regNum") %>' />
                        <br />
                        car_brand:
                        <asp:Label ID="car_brandLabel" runat="server" Text='<%# Bind("car_brand") %>' />
                        <br />
                        car_model:
                        <asp:Label ID="car_modelLabel" runat="server" Text='<%# Bind("car_model") %>' />
                        <br />
                        car_type:
                        <asp:Label ID="car_typeLabel" runat="server" Text='<%# Bind("car_type") %>' />
                        <br />
                        car_color:
                        <asp:Label ID="car_colorLabel" runat="server" Text='<%# Bind("car_color") %>' />
                        <br />
                        cust_name:
                        <asp:Label ID="cust_nameLabel" runat="server" Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:Label ID="cust_surnameLabel" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_gender:
                        <asp:Label ID="cust_genderLabel" runat="server" 
                            Text='<%# Bind("cust_gender") %>' />
                        <br />
                        cust_idNum:
                        <asp:Label ID="cust_idNumLabel" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:Label ID="cust_PhoneNumLabel" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:Label ID="cust_altPhoneNumLabel" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:Label ID="cust_suburbLabel" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_streetInfo:
                        <asp:Label ID="cust_streetInfoLabel" runat="server" 
                            Text='<%# Bind("cust_streetInfo") %>' />
                        <br />
                        fk_cWashID:
                        <asp:Label ID="fk_cWashIDLabel" runat="server" 
                            Text='<%# Bind("fk_cWashID") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Home" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Add Car" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

