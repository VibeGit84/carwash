<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="updateCust.aspx.cs" Inherits="updateCust" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        width: 324px;
    }
        .style3
        {
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <h2 class="style3">
                    UPDATE DETAILS</h2>
            </td>
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
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="cust_id" DataSourceID="deleteCust" DefaultMode="Edit" 
                    Height="198px" style="color: #FFFFFF; margin-left: 0px;" Width="412px">
                    <EditItemTemplate>
                        cust_name:
                        <asp:TextBox ID="cust_nameTextBox" runat="server" 
                            Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:TextBox ID="cust_surnameTextBox" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_idNum:
                        <asp:TextBox ID="cust_idNumTextBox" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:TextBox ID="cust_PhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:TextBox ID="cust_altPhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:TextBox ID="cust_suburbTextBox" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_ressInfo:
                        <asp:TextBox ID="cust_ressInfoTextBox" runat="server" 
                            Text='<%# Bind("cust_ressInfo") %>' />
                        <br />
                        cust_id:
                        <asp:Label ID="cust_idLabel1" runat="server" Text='<%# Eval("cust_id") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        cust_name:
                        <asp:TextBox ID="cust_nameTextBox" runat="server" 
                            Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:TextBox ID="cust_surnameTextBox" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_idNum:
                        <asp:TextBox ID="cust_idNumTextBox" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:TextBox ID="cust_PhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:TextBox ID="cust_altPhoneNumTextBox" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:TextBox ID="cust_suburbTextBox" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_ressInfo:
                        <asp:TextBox ID="cust_ressInfoTextBox" runat="server" 
                            Text='<%# Bind("cust_ressInfo") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        cust_ame:
                        <asp:Label ID="cust_nameLabel" runat="server" Text='<%# Bind("cust_name") %>' />
                        <br />
                        cust_surname:
                        <asp:Label ID="cust_surnameLabel" runat="server" 
                            Text='<%# Bind("cust_surname") %>' />
                        <br />
                        cust_idNum:
                        <asp:Label ID="cust_idNumLabel" runat="server" 
                            Text='<%# Bind("cust_idNum") %>' />
                        <br />
                        cust_PhoneNum:
                        <asp:Label ID="cust_PhoneNumLabel" runat="server" 
                            Text='<%# Bind("cust_PhoneNum") %>' />
                        <br />
                        cust_altPhoneNum:
                        <asp:Label ID="cust_altPhoneNumLabel" runat="server" 
                            Text='<%# Bind("cust_altPhoneNum") %>' />
                        <br />
                        cust_suburb:
                        <asp:Label ID="cust_suburbLabel" runat="server" 
                            Text='<%# Bind("cust_suburb") %>' />
                        <br />
                        cust_ressInfo:
                        <asp:Label ID="cust_ressInfoLabel" runat="server" 
                            Text='<%# Bind("cust_ressInfo") %>' />
                        <br />
                        cust_id:
                        <asp:Label ID="cust_idLabel" runat="server" Text='<%# Eval("cust_id") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
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
            <td class="style2">
    <asp:SqlDataSource ID="deleteCust" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT cust_name, cust_surname, cust_idNum, cust_PhoneNum, cust_altPhoneNum, cust_suburb, cust_ressInfo, cust_id FROM tbl_customer" 
        
                    UpdateCommand="UPDATE tbl_customer SET cust_name =?, cust_surname =?, cust_idNum =?, cust_PhoneNum =?, cust_suburb= ?, cust_altPhoneNum =?, cust_ressInfo =?
where cust_id=?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="FormView1" Name="cust_name" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_surname" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_idNum" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_PhoneNum" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_suburb" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_altPhoneNum" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_ressInfo" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" Name="cust_id" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

