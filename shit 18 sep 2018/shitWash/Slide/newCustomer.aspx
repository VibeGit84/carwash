<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="newCustomer.aspx.cs" Inherits="customer_newCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        text-align: center;
        font-family: Arial;
    }
    .style3
    {
        width: 302px;
        text-align: right;
    }
    .style4
    {
        width: 320px;
    }
    .style5
    {
        width: 320px;
        color: #000000;
        height: 21px;
    }
    .style7
    {
        height: 21px;
            background-color: #FFFFFF;
        }
    .style8
    {
        width: 320px;
        text-align: center;
        color: #000000;
        background-color: #FFFFFF;
    }
    .style9
    {
        width: 320px;
        height: 21px;
        text-align: center;
        color: #000000;
        background-color: #FFFFFF;
    }
    .style10
    {
        width: 302px;
        text-align: right;
        color: #FEFFFF;
        font-weight: bold;
    }
        .style13
        {
            width: 302px;
            text-align: right;
            color: #FEFFFF;
            font-weight: bold;
            height: 24px;
        }
        .style14
        {
            width: 320px;
            height: 24px;
        }
        .style15
        {
            height: 24px;
        }
        .style16
        {
            width: 302px;
            text-align: right;
            color: #FEFFFF;
            font-weight: bold;
            height: 26px;
        }
        .style17
        {
            width: 320px;
            height: 26px;
        }
        .style18
        {
            height: 26px;
        }
        .style19
        {
            width: 302px;
            text-align: right;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style20
        {
            color: #FFFFFF;
            font-weight: bold;
        }
        .style21
        {
            width: 302px;
            text-align: right;
            font-weight: bold;
        }
        .style22
        {
            width: 320px;
            text-align: center;
            color: #000000;
        }
        .style23
        {
            background-color: #FFFFFF;
        }
        .style24
        {
            width: 302px;
            text-align: right;
            color: #FFFFFF;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style25
        {
            width: 302px;
            text-align: right;
            height: 21px;
            background-color: #FFFFFF;
        }
        .style26
        {
            width: 302px;
            text-align: right;
            color: #FEFFFF;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="3">
            <h2>
                <strong style="color: #FFFFFF">NEW CUSTOMER</strong></h2>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style25">
        </td>
        <td class="style5" style="background-color: #FFFFFF">
            <h4>
                <strong style="color: #000000">PERSONAL INFORMATION</strong></h4>
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style10">
            Name:</td>
        <td class="style4">
            <asp:TextBox ID="txtName" runat="server" CssClass="txtbox"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Surname:</td>
        <td class="style4">
            <asp:TextBox ID="txtSurname" runat="server" CssClass="txtbox"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Gender:</td>
        <td class="style4">
            <asp:DropDownList ID="ddrGen" runat="server">
                <asp:ListItem Value=" ">--Select gender--</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            ID Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtIDnum" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Cellphone Number:</td>
        <td class="style17">
            <asp:TextBox ID="txtCelNum" runat="server"></asp:TextBox>
        </td>
        <td class="style18">
            </td>
    </tr>
    <tr>
        <td class="style10">
            Alternative Contact Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtAltCellNum" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style26">
            &nbsp;</td>
        <td class="style8">
            <strong>RESIDENTIAL INFORMATION&nbsp; </strong>
        </td>
        <td class="style23">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            House Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtHouseum" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Street Name:</td>
        <td class="style4">
            <asp:TextBox ID="txtStrt" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Suburb:</td>
        <td class="style4">
            <asp:TextBox ID="txtSuburb" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style25">
        </td>
        <td class="style9">
            <strong>ACCOUNT INFORMATION</strong></td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style10">
            Bank Name:</td>
        <td class="style4">
            <asp:RadioButtonList ID="rbCode" runat="server" AutoPostBack="True" 
                ForeColor="White" RepeatDirection="Horizontal">
                <asp:ListItem>ABSA</asp:ListItem>
                <asp:ListItem>Capitec</asp:ListItem>
                <asp:ListItem>FNB</asp:ListItem>
                <asp:ListItem>Standard Bank</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Brach Code:</td>
        <td class="style4">
            <asp:Label ID="lblBrachCode" runat="server" Text="BranchCode" 
                style="color: #FFFFFF; font-weight: 700"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Card type:</td>
        <td class="style4">
            <asp:DropDownList ID="CarType" runat="server">
                <asp:ListItem>--Select Card Type--</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
                <asp:ListItem>Visa</asp:ListItem>
                <asp:ListItem>Ameican express</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Card number:</td>
        <td class="style14">
            <asp:TextBox ID="txtCardNum" runat="server"></asp:TextBox>
        </td>
        <td class="style15">
            </td>
    </tr>
    <tr>
        <td class="style10">
            Account Number:</td>
        <td class="style4">
            <asp:TextBox ID="txtAccNum" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style21">
            <span class="style20">Card Expiry Date</span><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                onselecting="SqlDataSource1_Selecting1"></asp:SqlDataSource>
            </td>
        <td class="style4">
            <asp:Calendar ID="cardExpDate" runat="server" Height="183px" Width="245px"></asp:Calendar>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style24">
            &nbsp;</td>
        <td class="style22" bgcolor="White">
            <strong>CAR INFORMATION</strong></td>
        <td class="style23">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
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
        <td class="style19">
            Brand:</td>
        <td class="style4">
            <asp:TextBox ID="txtCarBrand" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
            Model:</td>
        <td class="style4">
            <asp:TextBox ID="txtCarModel" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
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
        <td class="style19">
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
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="72px" />
        </td>
    </tr>
</table>
</asp:Content>

