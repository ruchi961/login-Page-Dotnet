<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Login_Page.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Login_Page_Style_Sheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="LoginForm">
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="txtCommonCss"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password : " CssClass="lblCommonCss"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtCommonCss" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMsg" runat="server" CssClass="lblError"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                
            </table>
        </div>
        <asp:Label ID="lblLog" runat="server" CssClass="lblLogIn">Login</asp:Label>
    </form>
</body>
</html>
