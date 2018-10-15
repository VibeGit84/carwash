<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="makePayment.aspx.cs" Inherits="customer_makePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            text-align: right;
            width: 411px;
            color: #FFFFFF;
            font-weight: 700;
            background-color: #FF9966;
        }
        .style4
        {
            width: 411px;
            color: #FFFFFF;
        }
        .style5
        {
            height: 27px;
        }
        .style6
        {
            text-align: right;
            width: 411px;
            color: #FFFFFF;
            font-weight: 700;
            height: 27px;
            background-color: #FF9966;
        }
        .style7
        {
            background-color: #FF9966;
        }
        .style8
        {
            width: 411px;
            color: #FFFFFF;
            background-color: #FF9966;
        }
        .style9
        {
            height: 27px;
            background-color: #FF9966;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" colspan="2">
                <h2>
                    make payment</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:SqlDataSource ID="outAmt" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tbl_account.acc_bal FROM tbl_account, tbl_customer 
WHERE tbl_account.fk_custID = tbl_customer.cust_id
 AND (tbl_customer.cust_id = (SELECT cust_id FROM tbl_customer   WHERE (cust_name = ?)))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpUsername" Name="drpUsername" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                Payer&#39;s Name:</td>
            <td class="style7">
                <asp:DropDownList ID="drpUsername" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="cust_name" 
                    DataValueField="cust_name">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
                Outstanding amount:</td>
            <td class="style9">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="outAmt" 
                    ForeColor="Black">
                    <EditItemTemplate>
                        acc_bal:
                        <asp:TextBox ID="acc_balTextBox" runat="server" Text='<%# Bind("acc_bal") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        acc_bal:
                        <asp:TextBox ID="acc_balTextBox" runat="server" Text='<%# Bind("acc_bal") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" CssClass="style2" 
                            style="font-weight: 700; font-size: medium" Text="R"></asp:Label>
                        <asp:Label ID="acc_balLabel" runat="server" CssClass="style2" 
                            style="font-size: medium; font-weight: 700" Text='<%# Bind("acc_bal") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                Pay Amount:</td>
            <td class="style7">
                <asp:TextBox ID="txtAmt" runat="server" Width="76px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                <asp:DropDownList ID="drpAccID" runat="server" BackColor="#FF9966" 
                    DataSourceID="accID" DataTextField="acc_id" DataValueField="acc_id" 
                    ForeColor="#FF9966" Height="16px" Width="16px">
                </asp:DropDownList>
            </td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:SqlDataSource ID="accID" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT acc_id 
FROM tbl_account, tbl_customer
WHERE tbl_account.fk_custID=tbl_customer.cust_id
AND cust_id=(select cust_id from tbl_customer where cust_name=?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpUsername" Name="drpUsername" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust_name FROM tbl_customer"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

