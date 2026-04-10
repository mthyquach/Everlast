<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShippingPayment.aspx.cs" Inherits="Everlast.ShippingPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            color: #000000;
        }
        .auto-style1 {
            width: 100%;
            border: 1px solid #BC8F8F;
            background-color: #D8B4A0;
        }
        .auto-style2 {
            text-align: right;
            width: 400px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7">
        <strong>Shipping and Payment Information</strong></p>
    <p class="auto-style4">
        Please fill out all provided boxes below
    </p>
    <p>
    </p>
    <table class="auto-style1">
        <tr>
            <td colspan="3" class="auto-style6" style="text-align: center"><strong>Shipping Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">First Name </td>
            <td>
                <asp:TextBox ID="txtFName" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="First Name is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name </td>
            <td>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Last Name is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email Address </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email Address is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Street Address </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Street Address is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">City </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">State </td>
            <td>
                <asp:TextBox ID="txtState" runat="server">XX</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Country </td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server">United States</asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Zip Code </td>
            <td>
                <asp:TextBox ID="txtZip" runat="server" TextMode="Number">XXXXX</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip Code is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone Number </td>
            <td>
                <asp:TextBox ID="txtPhoneNum" runat="server" TextMode="Phone">(___)-___-___</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPhoneNum" runat="server" ErrorMessage="Phone number required" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style4"><strong style="text-align: center">Payment Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">Name on Card </td>
            <td>
                <asp:TextBox ID="txtCardName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCardName" runat="server" ErrorMessage="Card Name required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Card Number </td>
            <td>
                <asp:TextBox ID="txtCardNum" runat="server" TextMode="Number">XXXX XXXX XXXX XXXX</asp:TextBox>
            </td>
            <td style="font-size: small">
                <asp:RequiredFieldValidator ID="rfvCardNum" runat="server" ErrorMessage="Card Number required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Expiration Date </td>
            <td>
                <asp:TextBox ID="txtExpDate" runat="server" TextMode="Date">XX / XX</asp:TextBox>
            </td>
            <td style="font-size: small">
                <asp:RequiredFieldValidator ID="rfvExpDate" runat="server" ErrorMessage="Expiration date required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Security Code </td>
            <td>
                <asp:TextBox ID="txtSecurityCode" runat="server" TextMode="Number">XXX</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvSecurityCode" runat="server" ErrorMessage="Security Code required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</asp:Content>
