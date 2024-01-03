<?php 
  require 'connection.php';
  checkLoginAtLogin();

  if (isset($_POST['btnLogin'])) {
  	$username = htmlspecialchars($_POST['username']);
  	$password = htmlspecialchars($_POST['password']);

  	$checkUsername = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");
  	if ($data = mysqli_fetch_assoc($checkUsername)) {
  		if (password_verify($password, $data['password'])) {
  			$_SESSION = [
  				'id_user' => $data['id_user'],
  				'username' => $data['username'],
  				'id_jabatan' => $data['id_jabatan']
  			];
  			header("Location: index.php");
  		} else {
			setAlert("Password your insert is false!", "Check your Password BACK!", "error");
			header("Location: login.php");
	  	}
  	} else {
		setAlert("Username is not registered!", "Check your Username BACK!", "error");
		header("Location: login.php");
  	}
  }

  if (isset($_POST['btnChangePassword'])) {
    if (changePassword($_POST) > 0) {
        setAlert("Your Password has been changed", "Successfully changed", "success");
      header("Location: login.php");
    }
}
?>

<!DOCTYPE html>
<html>
<head>
  <?php
   include 'include/css.php';
   ?>
  <title>Login</title>
  <!-- Font Icon -->
  <link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="assets/css/style.css">
<style>
	.Content {
		padding: 40px 0;
		background: #f8f8f8;
	}
  .form-sub {
    display: inline-block;
    background: #6dabe4;
    color: #fff;
    border-bottom: none;
    padding: 10px 0;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -o-border-radius: 5px;
    -ms-border-radius: 5px;
    cursor: pointer;
}
</style>
</head>
<body>
	<div class="Content" >
	<section class="sign-in" >
            <div class="container" style="max-width: 30rem; 
              display: flex; 
              flex-direction: 
              column; 
              justify-content: center;
              align-items: center;">
                <div class="signin-content">
                    <div class="signin-form"  style="width: 20rem;">
                        <h2 class="form-title">Log In </h2>
                        <form method="post" class="register-form">
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input required type="text" name="username" id="username" placeholder="Your Username" />
                            </div>
                            <div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input required type="password" name="password" id="password" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" class="form-sub" name="btnLogin" style="background: rgb(45,119,143);
background: linear-gradient(183deg, rgba(45,119,143,1) 29%, rgba(29,90,136,1) 100%);"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>">
            <div style="text-align: center;">
            <strong>Copyright &copy; 2023 By Sistem Uang Kas SMA Briliant</strong>
            All rights reserved.
            </div>
        </section>
        <!-- Modal change password -->
		<div class="modal fade" id="changePasswordModal" tabindex="-1" role="dialog" aria-labelledby="changePasswordModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <form method="post">
                <input type="hidden" name="id_user" value="<?= $dataUser['id_user']; ?>">
		    	<div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="changePasswordModalLabel">Change Password</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
					<div class="form-group">
                        <label for="old_password">Old Password</label>
                        <input type="password" minlength="6" name="old_password" id="old_password" class="form-control" required>
                    </div>
					<div class="form-group">
                        <label for="new_password">Password</label>
                        <input type="password" minlength="6" name="new_password" id="new_password" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="new_password_verify">Password Verify</label>
                        <input type="password" minlength="6" name="new_password_verify" id="new_password_verify" class="form-control" required>
                    </div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-fw fa-times"></i> Close</button>
			        <button type="submit" name="btnChangePassword" class="btn btn-primary"><i class="fas fa-fw fa-save"></i> Save</button>
			      </div>
			    </div>
		    </form>
		  </div>
		</div>
        
	<script src="assets/vendorLog/jquery/jquery.min.js"></script>
</body>
</html>