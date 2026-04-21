<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Everlast.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            text-align: right;
            width: 598px;
        }
        .auto-style3 {
            text-align: left;
            width: 487px;
        }
        .auto-style4 {
            width: 487px;
        }
        .auto-style5 {
            text-align: right;
            height: 30px;
            width: 598px;
        }
        .auto-style6 {
            text-align: left;
            width: 487px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            font-size: medium;
        }
        .auto-style10 {
            text-align: right;
            width: 598px;
            height: 26px;
        }
        .auto-style11 {
            text-align: left;
            width: 487px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h1 class="auto-style8"><strong style="text-align: center">EVERLAST</strong></h1>
    <p class="auto-style9">
        Create an account to design a ring with us</p>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style2">First Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Email:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtCEmail" ErrorMessage="Email must match" style="font-size: small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" ErrorMessage="Required" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCPass" ErrorMessage="Password must match" style="font-size: small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone Number:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPhone" runat="server" OnTextChanged="TextBox7_TextChanged" TextMode="Phone"></asp:TextBox>
            </td>
            <td style="font-size: small">
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number must be 10 digits" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create " />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style2">Already have an account?</td>
            <td class="auto-style3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S26Team4ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerPreferredBudget]) VALUES (@CustomerID, @CustomerName, @CustomerEmail, @CustomerPhone, @CustomerAddress, @CustomerPreferredBudget)" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerEmail] = @CustomerEmail)" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustomerEmail] = @CustomerEmail, [CustomerPhone] = @CustomerPhone, [CustomerAddress] = @CustomerAddress, [CustomerPreferredBudget] = @CustomerPreferredBudget WHERE [CustomerID] = @CustomerID">
                    <DeleteParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerEmail" Type="String" />
                        <asp:Parameter Name="CustomerPhone" Type="String" />
                        <asp:Parameter Name="CustomerAddress" Type="String" />
                        <asp:Parameter Name="CustomerPreferredBudget" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="CustomerEmail" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerEmail" Type="String" />
                        <asp:Parameter Name="CustomerPhone" Type="String" />
                        <asp:Parameter Name="CustomerAddress" Type="String" />
                        <asp:Parameter Name="CustomerPreferredBudget" Type="Decimal" />
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
