<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Everlast.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
            text-decoration: none;
            font-size: 20px;
        }
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-size: small;
    }
        .auto-style5 {
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style5">Home</asp:HyperLink>
        <span class="auto-style5">&nbsp;|</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style2">Customer Form</asp:HyperLink>
        <span class="auto-style5">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style2">Design Session</asp:HyperLink>
        <span class="auto-style5">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" CssClass="auto-style2">Ring Design</asp:HyperLink>
        <span class="auto-style5">&nbsp;|
    </span>
    <strong><span class="auto-style5">My Account&nbsp;</span></strong></p>
    <p>
        View your order status and order tracking
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/TrackingPage.aspx">here </asp:HyperLink>
</p>
<p>
    Update your account information below</p>
<table align="center" class="auto-style3">
    <tr>
        <td><b>Update Information</b></td>
        <td><b>Current Information</b></td>
        <td>
            <asp:Label ID="lblNewInfo" runat="server" style="font-weight: 700" Text="New Information"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>Email:
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbPass" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
        </td>
        <td>Password:
            <asp:Label ID="lblPass" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" CssClass="auto-style4" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCPass" CssClass="auto-style4" ErrorMessage="Password must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbFName" runat="server" AutoPostBack="True" OnCheckedChanged="cbFName_CheckedChanged" />
        </td>
        <td>First Name:
            <asp:Label ID="lblFName" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" CssClass="auto-style4" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbLName" runat="server" AutoPostBack="True" OnCheckedChanged="cbLName_CheckedChanged" />
        </td>
        <td>Last Name:
            <asp:Label ID="lblLName" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" CssClass="auto-style4" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbPhone" runat="server" AutoPostBack="True" OnCheckedChanged="cbPhone_CheckedChanged" />
        </td>
        <td>Phone Number:
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number must be 10 digits" style="font-size: small" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" CssClass="auto-style4" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
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
        <td>
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
        </td>
        <td>
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
