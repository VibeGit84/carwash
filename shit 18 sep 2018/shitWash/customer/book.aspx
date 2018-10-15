<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="customer_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 69px;
        }
        .style3
        {
            color: white;
        }
        .style4
        {
            width: 69px;
            height: 21px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 69px;
            height: 78px;
        }
        .style7
        {
            height: 78px;
        }
        .style8
        {
            text-align: right;
            font-weight: bold;
            color: #FFFFFF;
        }
        .style9
        {
            height: 78px;
            text-align: right;
            font-weight: bold;
            color: #FFFFFF;
        }
        .style10
        {
            height: 21px;
            text-align: right;
            font-weight: bold;
            color: #FFFFFF;
        }
        .style11
        {
            width: 69px;
            height: 30px;
        }
        .style12
        {
            height: 30px;
        }
        .style13
        {
            width: 69px;
            height: 26px;
        }
        .style14
        {
            text-align: right;
            font-weight: bold;
            color: #FFFFFF;
            height: 26px;
        }
        .style15
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <strong>
                <asp:SqlDataSource ID="clientID" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust_id FROM tbl_customer WHERE (cust_name = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpName" Name="drpName" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="clients" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT cust_name FROM tbl_customer"></asp:SqlDataSource>
                </strong>
            </td>
            <td colspan="2">
                <h2 class="style3">
                    <strong>book car wash service</strong></h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style10">
                Client Name:</td>
            <td class="style5">
        
                <asp:DropDownList ID="drpName" runat="server" AutoPostBack="True" 
                    DataSourceID="clients" DataTextField="cust_name" 
                    DataValueField="cust_name" 
                    onselectedindexchanged="drpName_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="drpClientID" runat="server" DataSourceID="clientID" 
                    DataTextField="cust_id" DataValueField="cust_id" Height="16px" 
                    Width="16px">
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style9">
                Wash Type</td>
            <td class="style7">
                <asp:RadioButtonList ID="rdlWashType" runat="server" 
                    style="font-weight: 700; color: #FFFFFF" AutoPostBack="True">
                    <asp:ListItem>Inside Only</asp:ListItem>
                    <asp:ListItem>Ouside Only</asp:ListItem>
                    <asp:ListItem>In &amp; Out</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                AddOn:</td>
            <td>
                <asp:DropDownList ID="drpAddON" runat="server" style="font-weight: 700" 
                    AutoPostBack="True">
                    <asp:ListItem>--select addOn--</asp:ListItem>
                    <asp:ListItem>Body Polish</asp:ListItem>
                    <asp:ListItem>Dash Wax</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                Car Type:</td>
            <td>
                <asp:RadioButtonList ID="rbType" runat="server" RepeatDirection="Horizontal" 
                    style="color: #FFFFFF; font-weight: 700">
                    <asp:ListItem>Bakkie</asp:ListItem>
                    <asp:ListItem>Sedan</asp:ListItem>
                    <asp:ListItem>SUV</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style14">
                Date:</td>
            <td class="style15">
                <asp:DropDownList ID="drpDay" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="drpMon" runat="server">
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="drpYear" runat="server">
                    <asp:ListItem>2018</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                Time</td>
            <td>
                <asp:DropDownList ID="drpTime" runat="server">
                    <asp:ListItem>--Select time--</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>07:30</asp:ListItem>
                    <asp:ListItem>07:45</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

