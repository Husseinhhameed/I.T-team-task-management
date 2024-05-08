<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmember.aspx.cs" Inherits="ITtask.addmember" %>

<!DOCTYPE html>
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
                  title: 'A new teammate has been added',
                  showConfirmButton: false,
                  timer: 2500
              })
          }
    </script>
    <title>ADDnewteammate</title>
  </head>
  <body>
  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="shared/addmember.svg" alt="Image" class="img-fluid" onclick="location.href='Tasks.aspx'">

        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <center><h3>ADD new teammember!</h3></center>
             <center><p class="mb-4">new teammate means new value!</p></center>
             
            </div>
            <form action="#" method="post" runat="server">
              <div class="form-group first">
                <label for="username">Name</label>
                
               <asp:TextBox ID="member" runat="server" CssClass="form-control"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="member" ErrorMessage="Please enter the username"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group last mb-4">
                <label for="password">Detail</label>
                
                <asp:TextBox ID="deta" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="deta" ErrorMessage="Please enter the password"></asp:RequiredFieldValidator>

              </div>
              
           
             
              <asp:Button ID="entermember" runat="server"  Text="join" CssClass="btn btn-block btn-primary" OnClick="entermember_Click"  />
              
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
