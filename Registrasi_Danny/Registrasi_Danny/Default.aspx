<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Registrasi_Danny.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrasi Form</title>
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
                <asp:Label ID="lblUsername" runat="server" CssClass="text" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUser"  CssClass="input" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvUsername" CssClass="text" ControlToValidate="txtUser" ErrorMessage="Username Harus Diisi" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp</td>
            <td>&nbsp</td>
            
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblPass" runat="server" CssClass="text" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPass"  CssClass="input" TextMode="Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPass" ID="rfvPassword" CssClass="text" ErrorMessage="Password Harus Diisi" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>

        <tr>
           <td>
               <asp:Label ID="lblPassConfirm" runat="server" CssClass="text" Text="Konfirmasi Password"></asp:Label>
               <asp:TextBox ID="txtPassConfirm"  CssClass="input" TextMode="Password" runat="server"></asp:TextBox><br />
               <asp:CompareValidator runat="server" ID="compPass" ControlToCompare="txtPass" CssClass="text" ControlToValidate="txtPassConfirm" ErrorMessage="Password Tidak sama" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="btnSave" runat="server"  CssClass="input" Text="Save" OnClick="btnSave_Click"/>
            </td>
        </tr>
            
            
        <tr>
            <td>
                <asp:LinkButton ID="linkLogin" CausesValidation="false"  CssClass="text" runat="server" Text="Login Page" OnClick="linkLogin_Click"/>
            </td>
        </tr>


         </table>
    </div>
    </form>
</body>
</html>
