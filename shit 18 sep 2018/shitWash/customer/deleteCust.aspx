<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="deleteCust.aspx.cs" Inherits="customer_deleteCust" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: white;
        }
        .style3
        {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <h2 class="style2">
                    DeleTE account</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="deleteCust" DataKeyNames="cust_id" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="cust_id" HeaderText="cust_id" InsertVisible="False" 
                            SortExpression="cust_id" />
                        <asp:BoundField DataField="cust_name" HeaderText="cust_name" 
                            SortExpression="cust_name" />
                        <asp:BoundField DataField="cust_surname" HeaderText="cust_surname" 
                            SortExpression="cust_surname" />
                        <asp:BoundField DataField="cust_gender" HeaderText="cust_gender" 
                            SortExpression="cust_gender" />
                        <asp:BoundField DataField="cust_idNum" HeaderText="cust_idNum" 
                            SortExpression="cust_idNum" />
                        <asp:BoundField DataField="cust_PhoneNum" HeaderText="cust_PhoneNum" 
                            SortExpression="cust_PhoneNum" />
                        <asp:BoundField DataField="cust_altPhoneNum" HeaderText="cust_altPhoneNum" 
                            SortExpression="cust_altPhoneNum" />
                        <asp:BoundField DataField="cust_suburb" HeaderText="cust_suburb" 
                            SortExpression="cust_suburb" />
                        <asp:BoundField DataField="cust_ressInfo" HeaderText="cust_ressInfo" 
                            SortExpression="cust_ressInfo" />
                        <asp:BoundField DataField="fk_cWashID" HeaderText="fk_cWashID" 
                            SortExpression="fk_cWashID" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="deleteCust" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT*
 FROM tbl_account, tbl_car, tbl_customer,tbl_booking
where tbl_customer.cust_id= tbl_account.fk_custID
and tbl_customer.cust_id=tbl_car.fk_custID
and tbl_customer.cust_id=tbl_booking.fk_custID" 
        
        UpdateCommand="call deleteMem(?)" 
        DeleteCommand="call deleteMem(?)" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="cust_id" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="cust_id" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

