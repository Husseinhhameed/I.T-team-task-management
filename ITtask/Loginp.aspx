<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginp.aspx.cs" Inherits="ITtask.Loginp" %>

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
    <title>Login</title>
             <script src="shared/sweetalert.js" type="text/javascript"></script>
	<script>
        function alertme() {

            Swal.fire({
                icon: 'error',
                title: 'Wrong credentials',
                showConfirmButton: false,
                timer: 2500
            })
        }
    </script>
  </head>
  <body>
  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="shared/undraw_remotely_2j6y.svg" alt="Image" class="img-fluid">

        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <center><h3>Communication Unit Achievements</h3></center>
             <center><p class="mb-4">Proud of what you accomplished today..let's see what you did?</p></center>
             
            </div>
            <form action="#" method="post" runat="server">
              <div class="form-group first">
                <label for="username">Username</label>
                
                <asp:TextBox ID="txUser" runat="server" CssClass="form-control"></asp:TextBox>

                 
                     
              </div>
              <div class="form-group last mb-4">
                <label for="password">Password</label>
                
                <asp:TextBox ID="txPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

              </div>
              
             
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" CssClass="btn btn-block btn-primary" />


              
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
