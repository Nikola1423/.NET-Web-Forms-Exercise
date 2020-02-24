<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForms.NET.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        html, body {
            width:550px;
            background-color:lightblue;
            margin:auto;
        }
       
        #TableLoginForm{
            width:100%;
            margin:auto;
            background-color:aqua;
            padding:0px 20px 20px 20px;
            border:double;
            border-color:cornflowerblue;
            border-width:thick;
        }
        #LoginB,#RegisterB {
            width:70px;
            padding:5px;
            border-radius:5px;
            background-color:lightsteelblue;
           

        }
        #RegisterB:hover,#LoginB:hover{
            background-color:Highlight;
            font-weight:bold;
        }
        
        .auto-style1 {
            width: 90px;
        }
        .auto-style2 {
            width: 150px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="TableLoginForm">
                <tr>
                    <td colspan="3">
                        <h1 style="text-align:center;">Login Form</h1>
                        <h5>- The Username must contain 8 to 10 letter characters</h5>
                        <h5>- The password should contain 6 to 10 characters(letters number or special signs)</h5>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Username" runat="server" Font-Bold="True" Text="Username:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="UsernameInput" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="UsernameRFV" runat="server" ControlToValidate="UsernameInput" Display="Dynamic" ErrorMessage="Username can't be blank" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="UsernameREV" runat="server" ErrorMessage="Invalid Username" ControlToValidate="UsernameInput" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]{8,10}" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Password" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="PasswordInput" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="PasswordRFV"  runat="server" ControlToValidate="PasswordInput" Display="Dynamic" ErrorMessage="Password can't be blank" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="PasswordREV" runat="server" ErrorMessage="Invalid Password" ControlToValidate="PasswordInput" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z0-9!@#$%^&amp;*()_]{6,10}" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button  ID="LoginB" runat="server"  Text="Login" OnClick="LoginB_Click1" />
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
