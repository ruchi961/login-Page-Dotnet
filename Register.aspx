<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Login_Page.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login_Page_Style_Sheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblLog" runat="server" CssClass="lblLogIn">Register</asp:Label>
         <table cellpadding="5" cellspacing="10" class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="lblUser" runat="server" Text="Username : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" CssClass="txtCommonCss"></asp:TextBox>
                    </td>
                </tr>
             <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email ID : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtCommonCss" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass" runat="server" Text="Password : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" CssClass="txtCommonCss" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
             <tr>
                    <td>
                        <asp:Label ID="lblRePass" runat="server" Text="Re-enter Password : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRePass" runat="server" CssClass="txtCommonCss" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
             <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile Number : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txtCommonCss" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
               <tr  align="center">
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server" CssClass="lblError"></asp:Label>
                    </td>
                </tr>
                <tr  align="center">
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Register" OnClick="btnLogin_Click"/>
                    </td>
                </tr>
               

            </table>
       
        
    </form>
</body>
</html>
