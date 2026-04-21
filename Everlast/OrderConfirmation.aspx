<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="Everlast.OrderConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style9 {
            font-size: 20px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style11" NavigateUrl="~/HomePage.aspx" style="text-decoration: none; font-size: 20px">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|
    <strong>Ring Design</strong>&nbsp;|
    </span>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" CssClass="auto-style3" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
        <span class="auto-style9">&nbsp;&nbsp;</span></p>
    <p>
        &nbsp;</p>
    <p style="text-align: center">
        Thank you for your order!</p>
    <p>
        Please review your order details below </p>
    <table class="auto-style10">
        <tr>
            <td colspan="2"><strong>Shipping Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">First Name</td>
            <td>
                <asp:Label ID="lblFName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Last Name</td>
            <td>
                <asp:Label ID="lblLName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Email Address</td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Street Address</td>
            <td>
                <asp:Label ID="lblAddress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">City</td>
            <td>
                <asp:Label ID="lblCity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">State</td>
            <td>
                <asp:Label ID="lblState" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Country</td>
            <td>
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Zip Code</td>
            <td>
                <asp:Label ID="lblZip" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Phone Number </td>
            <td>
                <asp:Label ID="lblPhoneNum" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"><strong>Payment Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">Name on Card</td>
            <td>
                <asp:Label ID="lblCardName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Card Number</td>
            <td>
                <asp:Label ID="lblCardNum" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Expiration date</td>
            <td>
                <asp:Label ID="lblExpDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Security Code</td>
            <td>
                <asp:Label ID="lblSecurityCode" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HomePage.aspx">Back to Home</asp:HyperLink>
            </td>
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S26Team4ConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [PaymentID] = @PaymentID" InsertCommand="INSERT INTO [Payment] ([PaymentID], [OrderID], [PaymentAmount], [PaymentDate], [PaymentMethod], [PaymentStatus]) VALUES (@PaymentID, @OrderID, @PaymentAmount, @PaymentDate, @PaymentMethod, @PaymentStatus)" SelectCommand="SELECT * FROM [Payment] WHERE ([PaymentID] = @PaymentID)" UpdateCommand="UPDATE [Payment] SET [OrderID] = @OrderID, [PaymentAmount] = @PaymentAmount, [PaymentDate] = @PaymentDate, [PaymentMethod] = @PaymentMethod, [PaymentStatus] = @PaymentStatus WHERE [PaymentID] = @PaymentID">
            <DeleteParameters>
                <asp:Parameter Name="PaymentID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PaymentID" Type="Int32" />
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="PaymentAmount" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="PaymentDate" />
                <asp:Parameter Name="PaymentMethod" Type="String" />
                <asp:Parameter Name="PaymentStatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="PaymentID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="PaymentAmount" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="PaymentDate" />
                <asp:Parameter Name="PaymentMethod" Type="String" />
                <asp:Parameter Name="PaymentStatus" Type="String" />
                <asp:Parameter Name="PaymentID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:S26Team4ConnectionString %>" DeleteCommand="DELETE FROM [Shipment] WHERE [ShipmentID] = @ShipmentID" InsertCommand="INSERT INTO [Shipment] ([ShipmentID], [OrderID], [Carrier], [TrackingNum], [ShipmentStatus], [EstimatedDeliveryDate], [ShippedAt], [DeliveredAt]) VALUES (@ShipmentID, @OrderID, @Carrier, @TrackingNum, @ShipmentStatus, @EstimatedDeliveryDate, @ShippedAt, @DeliveredAt)" SelectCommand="SELECT * FROM [Shipment] WHERE ([ShipmentID] = @ShipmentID)" UpdateCommand="UPDATE [Shipment] SET [OrderID] = @OrderID, [Carrier] = @Carrier, [TrackingNum] = @TrackingNum, [ShipmentStatus] = @ShipmentStatus, [EstimatedDeliveryDate] = @EstimatedDeliveryDate, [ShippedAt] = @ShippedAt, [DeliveredAt] = @DeliveredAt WHERE [ShipmentID] = @ShipmentID">
            <DeleteParameters>
                <asp:Parameter Name="ShipmentID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ShipmentID" Type="Int32" />
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="Carrier" Type="String" />
                <asp:Parameter Name="TrackingNum" Type="String" />
                <asp:Parameter Name="ShipmentStatus" Type="String" />
                <asp:Parameter DbType="Date" Name="EstimatedDeliveryDate" />
                <asp:Parameter DbType="Date" Name="ShippedAt" />
                <asp:Parameter DbType="Date" Name="DeliveredAt" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="ShipmentID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="Carrier" Type="String" />
                <asp:Parameter Name="TrackingNum" Type="String" />
                <asp:Parameter Name="ShipmentStatus" Type="String" />
                <asp:Parameter DbType="Date" Name="EstimatedDeliveryDate" />
                <asp:Parameter DbType="Date" Name="ShippedAt" />
                <asp:Parameter DbType="Date" Name="DeliveredAt" />
                <asp:Parameter Name="ShipmentID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
