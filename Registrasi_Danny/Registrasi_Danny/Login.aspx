<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registrasi_Danny.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        body {
        
        background:#ccc;
        
        }

       .formclass {
        padding:10px;
        margin:0px auto;
        background:#fff;
        width:320px;
        }

        .input {
        
        padding:10px;
        width:100%;
        }

        h2 {
        font-family:Calibri;
        text-align:center;
        }

        .text {
        font-family:Cambria;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="formclass">
       <h2> Registrasi Form </h2>
        <table style="width:300px;border:5px;">
        <tr>
            <td>
                <asp:Label ID="lblUsername" CssClass="text" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUser" CssClass="input" placeholder="Username" runat="server"></asp:TextBox>
                
            </td>
          
            
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblPass" CssClass="text" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPass" CssClass="input" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox><br />
            </td>
            
        </tr>


        <tr>
            <td>
                <asp:LinkButton ID="linkRegister" CssClass="text" runat="server" Text="Register Page" OnClick="linkRegister_Click"/>
            </td>
        </tr>


        <tr>
            <td>
                <asp:Button ID="btnLogin" CssClass="input" runat="server" Text="Login" OnClick="btnLogin_Click"/>
            </td>
        </tr>
         </table>
    </div>
    </form>
</body>
</html>
