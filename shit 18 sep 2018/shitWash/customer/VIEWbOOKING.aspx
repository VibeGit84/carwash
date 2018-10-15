<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="VIEWbOOKING.aspx.cs" Inherits="customer_VIEWbOOKING" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
            width: 123px;
            color: #FFFFFF;
        }
    .style3
    {
        color: #FFFFFF;
            width: 748px;
        }
        .style4
        {
            width: 748px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <caption>
        </caption>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <h2>
                VIEW BOOKING</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            x<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" style="color: #FFFFFF">
                <Columns>
                    <asp:BoundField DataField="cust_name" HeaderText="Name" 
                        SortExpression="cust_name" />
                    <asp:BoundField DataField="bk_time" HeaderText="Booking Time" 
                        SortExpression="bk_time" />
                    <asp:BoundField DataField="bk_serviceDate" HeaderText="Service Date" 
                        SortExpression="bk_serviceDate" />
                    <asp:BoundField DataField="bk_washType" HeaderText="wash Type" 
                        SortExpression="bk_washType" />
                    <asp:BoundField DataField="bk_addOns" HeaderText="Wash addOns" 
                        SortExpression="bk_addOns" />
                    <asp:BoundField DataField="bk_cost" HeaderText="Cost" 
                        SortExpression="bk_cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT sepvens.tbl_customer.cust_name, sepvens.tbl_booking.bk_time, sepvens.tbl_booking.bk_serviceDate, sepvens.tbl_booking.bk_washType, sepvens.tbl_booking.bk_addOns, sepvens.tbl_booking.bk_cost FROM sepvens.tbl_booking, sepvens.tbl_customer">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

