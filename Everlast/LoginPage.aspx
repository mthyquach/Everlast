<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Everlast.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 477px;
        height: 145px;
    }
    .auto-style4 {
        text-align: right;
        height: 22px;
    }
    .auto-style8 {
        height: 33px;
        width: 238px;
        text-align: left;
    }
    .auto-style14 {
        text-align: center;
        height: 33px;
    }
    .auto-style15 {
        text-align: left;
        height: 33px;
        width: 238px;
    }
    .auto-style16 {
        font-weight: normal;
        text-align: center;
            font-size: medium;
        }
    .auto-style17 {
        text-align: center;
    }
    .auto-style18 {
        text-align: right;
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<h1 class="auto-style17"><strong>EVERLAST</strong></h1>
<h3 class="auto-style17">LOGIN</h3>
<h5 class="auto-style16">Welcome back to Everlast! Please login to your account</h5>
<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style18">Email:</td>
        <td class="auto-style15">
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">Password:</td>
        <td class="auto-style15">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </td>
        <td class="auto-style15">
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="2">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">Don&#39;t have an account?</td>
        <td class="auto-style8">
            <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/RegistrationPage.aspx">Register Here</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:S26Team4ConnectionString %>" ProviderName="<%$ ConnectionStrings:S26Team4ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerEmail] = @CustomerEmail)">
                <SelectParameters>
                    <asp:Parameter Name="CustomerEmail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
