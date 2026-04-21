<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RingComponents.aspx.cs" Inherits="Everlast.RingComponents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: 20px;
        }
        .auto-style9 {
            font-size: 20px;
        }
        .auto-style12 {
            width: 1109px;
            background-color: #f7f2f0;
            border: 1px solid #d8caca;
            padding: 20px;
            margin-top: 20px;
        }
        .auto-style18 {
            font-size: 28px;
            font-weight: bold;
            color: #b57c7c;
        }
        .auto-style19 {
            font-size: 22px;
            color: #666666;
        }
        .component-box {
            width: 100%;
            background-color: #fffdfc;
            border: 1px solid #d8caca;
            padding: 15px;
            margin-bottom: 15px;
        }
        .component-title {
            font-size: 22px;
            font-weight: bold;
            color: #b57c7c;
        }
        .component-text {
            font-size: 18px;
            color: #333333;
            margin-top: 8px;
        }
        .component-img {
            width: 276px;
            height: 174px;
            border: 1px solid #cccccc;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong>EVERLAST</strong></h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HomePage.aspx" style="text-decoration: none; font-size: 20px">Home</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerForm.aspx" style="font-size: 20px; text-decoration: none">Customer Form</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DesignSessionInfo.aspx" style="font-size: 20px; text-decoration: none">Design Session</asp:HyperLink>
        <span class="auto-style8">&nbsp;|</span>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RingDesign.aspx" style="font-size: 20px; text-decoration: none">Ring Design</asp:HyperLink>
        <span class="auto-style8">&nbsp;| <strong>Ring Components</strong> |</span>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MyAccount.aspx" style="font-size: 20px; text-decoration: none">My Account</asp:HyperLink>
        <span class="auto-style9">&nbsp;&nbsp;</span>
    </p>

    <p class="auto-style18">
        Ring Components
    </p>

    &nbsp;<p class="auto-style19">
        Learn about the main parts that make a ring beautiful and meaningful.
    </p>

    <div class="auto-style12">

        <div class="component-box">
            <div class="component-title">Band</div>
            <div class="component-text">
                The band is the circular part of the ring that fits around the finger. It is the base of the whole ring.
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="Band" class="component-img" src="image/Bands.JPG" />
        </div>

        <div class="component-box">
            <div class="component-title">Center Stone</div>
            <div class="component-text">
                The center stone is the main gemstone in the ring. It is usually the most noticeable and important part of the design.
            </div>
            <img alt="Center Stone" class="component-img" src="image/Stones.JPG" />
        </div>

        <div class="component-box">
            <div class="component-title">Prongs</div>
            <div class="component-text">
                Prongs are small metal pieces that hold the gemstone firmly in place and keep it secure.
            </div>
            <img alt="Prongs" class="component-img" src="image/Prongs.JPG" />
        </div>

        <div class="component-box">
            <div class="component-title">Setting</div>
            <div class="component-text">
                The setting is the way the gemstone is attached to the ring. It affects both the look and safety of the stone.
            </div>
            <img alt="Setting" class="component-img" src="image/Ringsettings.JPG" />
        </div>

        <div class="component-box">
            <div class="component-title">Side Stones</div>
            <div class="component-text">
                Side stones are smaller stones placed beside the center stone to add more detail and sparkle.
            </div>
            <img alt="Side Stones" class="component-img" src="image/Side stone.JPG" />
        </div>

        <div class="component-box">
            <div class="component-title">Engraving</div>
            <div class="component-text">
                Engraving is a personal message or design added to the ring to make it more meaningful and unique.
            </div>
            <img alt="Engraving" class="component-img" src="image/Engraving.JPG" />
        </div>
         <div style="text-align:center; margin-top:30px;">
            <asp:Button ID="btnGoToDesign" runat="server"
                Text="Continue to Ring Design"
                CssClass="button-style"
                OnClick="btnGoToDesign_Click" />
        </div>
    </div>
</asp:Content>