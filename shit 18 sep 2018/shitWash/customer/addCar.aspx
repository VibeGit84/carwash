<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addCar.aspx.cs" Inherits="addCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            text-align: right;
            width: 394px;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style4
        {
            height: 26px;
            width: 214px;
            text-align: left;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            height: 26px;
            text-align: right;
            width: 394px;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style7
        {
            width: 214px;
        }
        .style8
        {
            height: 26px;
            width: 214px;
        }
        .style9
        {
            text-align: center;
            width: 394px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
        <td class="style5" colspan="3">
            <h2>
            <strong>new CAR INFORMATION</strong></h2>
             </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
                <asp:DropDownList ID="drpName" runat="server" AutoPostBack="True" 
                    DataSourceID="clients" DataTextField="cust_name" DataValueField="cust_name">
                </asp:DropDownList>
                <asp:DropDownList ID="drpClientID" runat="server" DataSourceID="clientID" 
                    DataTextField="cust_id" DataValueField="cust_id">
                </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Registration Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtLeter" runat="server" Width="49px"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtNum" runat="server" Width="49px"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtProv" runat="server" Width="49px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Brand:</td>
        <td class="style4">
            <asp:TextBox ID="txtCarBrand" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            Model:</td>
        <td class="style8">
            <asp:TextBox ID="txtCarModel" runat="server"></asp:TextBox>
        </td>
        <td class="style2">
            </td>
    </tr>
    <tr>
        <td class="style6">
            Type:</td>
        <td class="style4">
            <asp:DropDownList ID="drpCarType" runat="server">
                <asp:ListItem>--Select car type--</asp:ListItem>
                <asp:ListItem>Sedan</asp:ListItem>
                <asp:ListItem>SUV</asp:ListItem>
                <asp:ListItem>Bakkie</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Color:</td>
        <td class="style4">
            <asp:TextBox ID="txtCarColor" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-weight: 700" Text="Submit" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                style="font-weight: 700" Text="Home" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
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
        <td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

