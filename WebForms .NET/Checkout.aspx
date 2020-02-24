<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebForms.NET.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <style>
     body{
            width:600px;          
            margin:auto;
            background-color:lightblue;
            text-align:center;
        }
     #borderdiv {
        border:double;
        border-color:cornflowerblue;
        border-width:thick;
        margin:50px 0px;
        padding:20px;
        font-weight:bold;
     }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="borderdiv">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
