<?php
include('connection.inc.php');
include('functions.inc.php');
$msg='';
if(isset($_POST['submit'])){
	$username=get_safe_value($con,$_POST['username']);
	$password=get_safe_value($con,$_POST['password']);
	$sql="select * from admin_users where username='$username' and password='$password'";
	$res=mysqli_query($con,$sql);
	$count=mysqli_num_rows($res);
	if($count>0){
		$_SESSION['ADMIN_LOGIN']='yes';
		$_SESSION['ADMIN_USERNAME']=$username;
		header('location:categories.php');
		die();
	}else{
		$msg="Please enter correct login details";	
	}
	
}
?>
<!doctype html>
<html class="no-js" lang="">
   <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Login Page</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="assets/css/normalize.css">
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="assets/css/themify-icons.css">
      <link rel="stylesheet" href="assets/css/pe-icon-7-filled.css">
      <link rel="stylesheet" href="assets/css/flag-icon.min.css">
      <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <link rel="stylesheet" href="assets/css/stylesheet.css">
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   </head>
   <body>
      <section>
         <div class="imggg">
            <img src="jhin.jpg">
         </div>
         <div class="content">
            <div class="form">
               <h2>Login</h2>
               <form method="post">

                  <div class="inputs">
                     <span>Username</span>
                     <input type="text" name="username" placeholder="Username" required>
                  </div>

                  <div class="inputs">
                     <span>Password</span>
                     <input type="password" name="password" placeholder="Password" required>
                  </div>
                  <div class="remember">
                        <label><input type="checkbox" name=""> Remember me</label>
                    </div>

                  <div class="inputs">
                     <button type="submit" class="buttons" name="submit">Sign in</button>
                  </div>              

               </form>
               <div class="field_error"><?php echo $msg?></div>
            </div>
         </div>
      </section>
         <script src="assets/js/vendor/jquery-2.1.4.min.js" type="text/javascript"></script>
         <script src="assets/js/popper.min.js" type="text/javascript"></script>
         <script src="assets/js/plugins.js" type="text/javascript"></script>
         <script src="assets/js/main.js" type="text/javascript"></script>
   </body>
</html>