<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addagent.aspx.cs" Inherits="ITtask.addagent" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    
    <link href="shared/Logstyle.css" rel="stylesheet" />
    <link href="shared/Logowl.carousel.min.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    
    <link href="shared/Logbootstrap.min.css" rel="stylesheet" />
    <!-- Style -->
    <link href="shared/Logstyle.css" rel="stylesheet" />
         <script src="shared/sweetalert.js" type="text/javascript"></script>
	<script>
        function alertme() {

            Swal.fire({
                icon: 'success',
                title: 'A new agent has been added',
                showConfirmButton: false,
                timer: 2500
            })
        }
    </script>
    <title>Addnewagent</title>
    
  </head>
  <body>
  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="shared/add.svg" alt="Image" class="img-fluid" onclick="location.href='Tasks.aspx'">

        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <center><h3>ADD new Agent</h3></center>
             <center><p class="mb-4">Make sure to record your achievements</p></center>
             
            </div>
            <form action="#" method="post" runat="server">
              <div class="form-group first">
                <label for="username">Username</label>
                
               <asp:TextBox ID="addusr" runat="server" CssClass="form-control"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="addusr" ErrorMessage="Please enter the username"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group last mb-4">
                <label for="password">Password</label>
                
                <asp:TextBox ID="addpas" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="addpas" ErrorMessage="Please enter the password"></asp:RequiredFieldValidator>

              </div>
              
                 <div class="form-group last mb-4">
                
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >
                    <asp:ListItem>admin</asp:ListItem>
                    <asp:ListItem>user</asp:ListItem>
                </asp:DropDownList>
              </div>
             
              <asp:Button ID="enterbt" runat="server"  Text="ADD" CssClass="btn btn-block btn-primary" OnClick="enterbt_Click" />
              
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="shared/LOgjquery-3.3.1.min.js"></script>
    <script src="shared/LOgpopper.min.js"></script>
   <script src="shared/LOgbootstrap.min.js"></script>
    <script src="shared/LOgmain.js"></script>
    
  </body>
</html>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="addusr" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="addpas" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Button ID="enterbt" runat="server" Text="ADD" />
        </div>
    </form>
</body>
</html>--%>
