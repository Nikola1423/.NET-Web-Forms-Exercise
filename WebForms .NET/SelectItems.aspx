<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectItems.aspx.cs" Inherits="WebForms.NET.SelectItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Items</title>
    <style type="text/css">
        .PictureHeader {
            width: 600px;
            height: 180px;
            display:block;
            margin-left:auto;
            margin-right:auto;

        }
        body{
            width:600px;
            margin-top:0px;
            margin-left:auto;
            margin-right:auto;
            background-color:lightblue;
        }
        table{
            border:double;
            background-color:aqua;
            border-width:thick;
            border-color:cornflowerblue;
        }
        .listbox {
            width:170px;
            border:groove;
            border-radius:5px;
        }


        #Add,#CheckOut,#Remove {
            width:70px;
            padding:5px;
            border-radius:5px;
            background-color:lightsteelblue;
           

        }
        #Add:hover,#CheckOut:hover,#Remove:hover{
            background-color:Highlight;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="4" >
                        <img alt="Book" class="PictureHeader"  src="Pictures/book.jpeg" /></td>
                </tr>
                <tr style="text-align:center;">
                    <td><h4>Choose a Genre</h4></td>
                    <td><h4>Choose a Movie</h4></td>
                    <td><h4>Continue to Check out</h4></td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="text-align:center;">
                    <td>
                        <asp:ListBox CssClass="listbox" ID="GenreList" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="GenreList_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td>
                        <asp:ListBox CssClass="listbox" ID="MovieList" runat="server" ></asp:ListBox>
                    </td>
                    <td>
                                              
                        <asp:ListBox  CssClass="listbox" ID="FinalList" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                   <br />
                        
                        </td>
                    <td>
                                                                                                            
                        <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" />
                                      <br />
                        <asp:Button ID="Remove" runat="server" Text="Remove" OnClick="Remove_Click" />
                                          <br />      
                        <asp:Button ID="CheckOut" runat="server" Text="Checkout" OnClick="CheckOut_Click" />
                             
                        
                        </td>
                </tr>
                <tr style="text-align:center;">
                    <td colspan="4">
                        <asp:Label ID="Label2" runat="server" Text="Your price is: " Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
