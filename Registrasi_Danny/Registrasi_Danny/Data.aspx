﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Registrasi_Danny.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style>

        body {
        
        background:#ccc;
        
        }

         .header {
        text-align:right;
        background-color:darkgrey;
        height:50px;
        
         }

         .text {
        font-family:Cambria;
        }
         
        ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          width: 20%;
          text-align:center;
          background-color: #f1f1f1;
          position: fixed;
          height: 100%;
          overflow: auto;
        }

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #4CAF50;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}

    .Grid {  
                width:100%;   
                font:inherit;   
                margin:5px 0 10px 0;   
                background-color:#FFF;   
                border:solid 2px #525252;  
                text-transform:uppercase;  
            }   


    .content {
    margin-left:25%;
    padding:1px 16px;
    height:500px;
    }

    /* Change the link color on hover */
    li a:hover {
      background-color: #555;
      color: white;
    }


    </style>

  
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        
                    <asp:Label ID="LblWelcome" CssClass="text" runat="server">Welcome, </asp:Label>
                    <asp:Label ID="lblName" CssClass="text" runat="server"></asp:Label>
                     &nbsp
                    <asp:Button ID="btnLogout" CssClass="text" runat="server" Text="Log Out" OnClick="btnLogout_Click" ></asp:Button>
             
    </div>
    
        <ul>
          <li><a href="#data">Data Customer</a></li>
          <li><a href="#Report">Report Customer</a></li>
          <li><a href="#Summary">Summary</a></li>
          <li><a href="#Settings">Settings</a></li>
        </ul>
    

    <div class="content">
            
        <asp:GridView ID="GridView1" CssClass="Grid"  runat="server" AutoGenerateColumns="false" AutoGenerateDeleteButton="true" 
                AutoGenerateEditButton="true" DataKeyNames="ID" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField datafield="ID" HeaderText="ID" InsertVisible="false" ReadOnly="true" SortExpression="ID"/>
                    <asp:BoundField datafield="Name" HeaderText="Name" SortExpression="Name"/>
                    <asp:BoundField datafield="City" HeaderText="City" SortExpression="City"/>
                </Columns>
        </asp:GridView>
            
    </div>

    </form>
</body>
</html>
