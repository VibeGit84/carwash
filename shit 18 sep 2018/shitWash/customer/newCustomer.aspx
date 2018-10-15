<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="newCustomer.aspx.cs" Inherits="addCar" %>

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
        .style10
        {
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
            font-size: medium;
            background-color: #3366CC;
        }
        .style11
        {
            text-align: right;
            color: #FFFFFF;
            font-weight: bold;
            height: 26px;
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
                sign up</h2>
             </td>
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
        <td class="style10" colspan="3">
            Personal information</td>
    </tr>
    <tr>
        <td class="style3">
            Name:</td>
        <td class="style4">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Surname:</td>
        <td class="style4">
            <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            ID Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtID" runat="server" ontextchanged="txtID_TextChanged"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Gender:</td>
        <td class="style4">
            <asp:DropDownList ID="drpGen" runat="server">
                <asp:ListItem>Gender</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            Cellphone:</td>
        <td class="style8">
            <asp:TextBox ID="txtCellphone" runat="server"></asp:TextBox>
        </td>
        <td class="style2">
            </td>
    </tr>
    <tr>
        <td class="style6">
            Alternative Cellphone:</td>
        <td class="style4">
            <asp:TextBox ID="txtCellphone2" runat="server"></asp:TextBox>
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
        <td class="style10" colspan="3">
            residential information</td>
    </tr>
    <tr>
        <td class="style3">
            House Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtHnum" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Street:</td>
        <td class="style4">
            <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            Suburb:</td>
        <td class="style4">
            <asp:TextBox ID="txtSub" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            City:</td>
        <td class="style4">
            <asp:RadioButtonList ID="rdbCity" runat="server" 
                style="color: #FFFFFF; font-weight: 700" Width="130px">
                <asp:ListItem>Middleburg</asp:ListItem>
                <asp:ListItem>Witbank</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style2">
            </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" colspan="3">
            Car information</td>
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
            Color</td>
        <td class="style8">
            <asp:TextBox ID="txtCarColor" runat="server"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
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
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
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
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
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
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
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
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
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
                &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

