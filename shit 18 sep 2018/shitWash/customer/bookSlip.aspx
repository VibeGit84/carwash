<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="bookSlip.aspx.cs" Inherits="customer_bookSlip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 210px;
        }
        .style12
        {
            color: white;
            width: 569px;
        }
        .style13
        {
            width: 422px;
        }
        .style16
        {
            color: white;
            font-weight: normal;
        }
        .style17
        {
            color: black;
        }
        .style18
        {
            width: 109px;
        }
        .style19
        {
            width: 109px;
            height: 21px;
        }
        .style20
        {
            width: 168px;
            height: 21px;
            color: #000000;
            text-align: center;
        }
        .style21
        {
            width: 151px;
            background-color: #FFFFFF;
            color: black;
        }
        .style22
        {
            width: 151px;
            height: 21px;
            background-color: #FFFFFF;
            color: black;
        }
        .style23
        {
            width: 151px;
            text-align: center;
        }
        .style24
        {
            width: 168px;
        }
        .style25
        {
            width: 168px;
            height: 21px;
            text-align: center;
        }
        .style26
        {
            width: 109px;
            text-align: center;
        }
        .style27
        {
            width: 151px;
            text-align: center;
            background-color: #FFFFFF;
            color: red;
        }
        .style28
        {
            width: 168px;
            text-align: center;
        }
        .style29
        {
            width: 109px;
            height: 21px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                <h2 class="style12">
                thank you for reserving booking, please call again!!</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                <h6 class="style16">
                    you booking details</h6>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="bookDetails" 
                    Width="570px" style="margin-left: 0px">
                    <EditItemTemplate>
                        bk_time:
                        <asp:TextBox ID="bk_timeTextBox" runat="server" Text='<%# Bind("bk_time") %>' />
                        <br />
                        bk_datePlaced:
                        <asp:TextBox ID="bk_datePlacedTextBox" runat="server" 
                            Text='<%# Bind("bk_datePlaced") %>' />
                        <br />
                        bk_ServiceDate:
                        <asp:TextBox ID="bk_ServiceDateTextBox" runat="server" 
                            Text='<%# Bind("bk_ServiceDate") %>' />
                        <br />
                        bk_washType:
                        <asp:TextBox ID="bk_washTypeTextBox" runat="server" 
                            Text='<%# Bind("bk_washType") %>' />
                        <br />
                        bk_addOns:
                        <asp:TextBox ID="bk_addOnsTextBox" runat="server" 
                            Text='<%# Bind("bk_addOns") %>' />
                        <br />
                        bk_cost:
                        <asp:TextBox ID="bk_costTextBox" runat="server" Text='<%# Bind("bk_cost") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        bk_time:
                        <asp:TextBox ID="bk_timeTextBox" runat="server" Text='<%# Bind("bk_time") %>' />
                        <br />
                        bk_datePlaced:
                        <asp:TextBox ID="bk_datePlacedTextBox" runat="server" 
                            Text='<%# Bind("bk_datePlaced") %>' />
                        <br />
                        bk_ServiceDate:
                        <asp:TextBox ID="bk_ServiceDateTextBox" runat="server" 
                            Text='<%# Bind("bk_ServiceDate") %>' />
                        <br />
                        bk_washType:
                        <asp:TextBox ID="bk_washTypeTextBox" runat="server" 
                            Text='<%# Bind("bk_washType") %>' />
                        <br />
                        bk_addOns:
                        <asp:TextBox ID="bk_addOnsTextBox" runat="server" 
                            Text='<%# Bind("bk_addOns") %>' />
                        <br />
                        bk_cost:
                        <asp:TextBox ID="bk_costTextBox" runat="server" Text='<%# Bind("bk_cost") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        Time:</h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        <asp:Label ID="bk_timeLabel" runat="server" Text='<%# Bind("bk_time") %>' />
                                    </h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style27">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        Date booking made:</h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        <asp:Label ID="bk_datePlacedLabel" runat="server" style="text-align: left" 
                                            Text='<%# Bind("bk_datePlaced") %>' />
                                    </h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style27">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        Wash Type:</h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        <asp:Label ID="bk_washTypeLabel" runat="server" style="text-align: left" 
                                            Text='<%# Bind("bk_washType") %>' />
                                    </h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style22">
                                    <h3 class="style17">
                                        &nbsp;</h3>
                                </td>
                                <td class="style19">
                                </td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style22">
                                    <h3 class="style17">
                                        DATE for Wash</h3>
                                </td>
                                <td class="style29">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        <asp:Label ID="bk_ServiceDateLabel" runat="server" 
                                            Text='<%# Bind("bk_ServiceDate") %>' />
                                    </h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style27">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        AddOns:</h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        <asp:Label ID="bk_addOnsLabel" runat="server" Text='<%# Bind("bk_addOns") %>' />
                                    </h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style27">
                                    &nbsp;</td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    <h3 class="style17">
                                        Cost</h3>
                                </td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style22">
                                    <h3>
                                        R<asp:Label ID="bk_costLabel" runat="server" style="text-align: left" 
                                            Text='<%# Bind("bk_cost") %>' CssClass="style17" />
                                    </h3>
                                </td>
                                <td class="style19">
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style27">
                                    **************@SepvensCarWash***************</td>
                                <td class="style26">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style23">
                                    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Home" 
                                        onclick="Button1_Click" />
                                </td>
                                <td class="style18">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style23">
                                    &nbsp;</td>
                                <td class="style18">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="bookDetails" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT bk_time, bk_datePlaced, bk_ServiceDate, bk_washType, bk_addOns, bk_cost FROM tbl_booking
where bk_id=(select max(bk_id) from tbl_booking)"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

