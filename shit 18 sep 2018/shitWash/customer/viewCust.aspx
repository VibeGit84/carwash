<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="viewCust.aspx.cs" Inherits="viewCust" %>

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
        .style4
        {
            height: 21px;
            color: #FFFFFF;
        width: 96%;
    }
    .style5
    {
        height: 21px;
        width: 1%;
    }
    .style6
    {
        width: 1%;
    }
    .style7
    {
        width: 96%;
    }
    .style8
    {
        height: 21px;
        width: 103px;
    }
    .style9
    {
        width: 103px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style8">
            </td>
            <td class="style4">
                <h2 style="color: #FFFFFF">
                    VIEW CUSTOMER</h2>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                <asp:SqlDataSource ID="viewMember" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust_id, cust_name, cust_surname, cust_gender, cust_idNum, cust_PhoneNum, cust_altPhoneNum, cust_suburb, cust_ressInfo FROM tbl_customer">
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="viewMember" style="color: #FFFFFF" AllowPaging="True">
                    <Columns>
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
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <h2 class="style2">
                    &nbsp;</h2>
            </td>
        </tr>
    </table>
</asp:Content>

