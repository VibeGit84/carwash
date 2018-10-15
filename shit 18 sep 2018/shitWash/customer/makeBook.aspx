<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="makeBook.aspx.cs" Inherits="customer_makeBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 371px;
        }
        .style3
        {
            width: 371px;
            height: 21px;
            color: #FFFFFF;
            font-weight: 700;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            width: 371px;
            color: #FFFFFF;
            text-align: right;
            height: 26px;
            font-weight: 700;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 371px;
            color: #FFFFFF;
            text-align: right;
            height: 25px;
            font-weight: 700;
        }
        .style8
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Client Name:</td>
            <td class="style4">
                <asp:DropDownList ID="drpClient" runat="server" AutoPostBack="True" 
                    DataSourceID="dtsrcClient" DataTextField="cust_name" 
                    DataValueField="cust_name" 
                    onselectedindexchanged="drpClient_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="drpClinetId" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="cust_id" DataValueField="cust_id" Height="0px" Width="0px">
                </asp:DropDownList>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                .<asp:SqlDataSource ID="dtsrcClient" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust_name FROM sepvens.tbl_customer">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT cust_id FROM sepvens.tbl_customer
where cust_name=?">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpClient" Name="drpClient" 
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
            <td class="style5">
                <strong>Time:</strong></td>
            <td class="style6">
                <asp:DropDownList ID="drpTime" runat="server">
                    <asp:ListItem>Time</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>07:30</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>08:30</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style5">
                Date:</td>
            <td class="style6">
                <asp:DropDownList ID="drpDay" runat="server" Height="16px" Width="43px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="drpMon" runat="server" Height="16px" Width="43px">
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="drpYear" runat="server" Height="16px" Width="43px">
                    <asp:ListItem Value="2018"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style7">
                Wash Type:</td>
            <td class="style8">
                <asp:RadioButtonList ID="rbWashType" runat="server" 
                    style="color: #FFFFFF; font-weight: 700">
                    <asp:ListItem>Inside Only</asp:ListItem>
                    <asp:ListItem>Outside Only</asp:ListItem>
                    <asp:ListItem>In &amp; Out</asp:ListItem>
                    <asp:ListItem>Valet</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style5">
                Car Type:</td>
            <td class="style6">
                <asp:RadioButtonList ID="rbCarType" runat="server" RepeatDirection="Horizontal" 
                    style="color: #FFFFFF; font-weight: 700">
                    <asp:ListItem>Bakkie</asp:ListItem>
                    <asp:ListItem>Combi</asp:ListItem>
                    <asp:ListItem>Sedan</asp:ListItem>
                    <asp:ListItem>SUV</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Add Ons:</td>
            <td class="style6">
                <asp:RadioButtonList ID="rbAddOn" runat="server" RepeatDirection="Horizontal" 
                    style="color: #FFFFFF; font-weight: 700" 
                    onselectedindexchanged="rbAddOn_SelectedIndexChanged">
                    <asp:ListItem>Body Polish</asp:ListItem>
                    <asp:ListItem>Rim Renewal</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    style="height: 26px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
</asp:Content>

