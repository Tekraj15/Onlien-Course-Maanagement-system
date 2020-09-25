<?php
session_start();
error_reporting(0);
include("includes/config.php");
	$query = "SELECT * FROM users";
	$result =  mysqli_query($con,$query) or die();
	$f = 0;
	if($_POST['submit'])
	{
		if(!empty($_POST['name'])  && !empty($_POST['email']) && !empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['confirm_password']))
		{
			while($row = mysqli_fetch_array($result))
			{
				if(($row['name'] == $_POST['name'])  && ($row['username'] == $_POST['username']))
				{
					echo '<html><head><script type="text/javascript">alert("You are already registered!!!");</script></head></html>';
					$f = 1;
					break;
				}
			}
			if($f == 0)
			{
				if(!empty($_POST['username']))
				{
					$query = "SELECT * FROM userlog";
					$result =  mysqli_query($con,$query) or die();
					$f1 = 0;
					
					while($row = mysqli_fetch_array($result))
					{
						if($row['username'] == $_POST['username'])
						{
							echo '<html><head><script type="text/javascript">alert("User Name already esist!!!");</script></head></html>';
							$f1 = 1;
						}
					}
				
					if($f1 == 0)
					{
						$fp = 0;
						if($_POST['password'] != $_POST['confirm_password'])
						{
							echo '<html><head><script type="text/javascript">alert("Password incorrect!!!");</script></head></html>';
							$fp = 1;
						}
					
						if($fp == 0)
						{
							
							$query = "INSERT INTO users VALUES ('$_POST[name]' ,'$_POST[username]' , '$_POST[password]', '$_POST[email]')";
							mysqli_query($con,$query) or die();
							echo '<html><head><script type="text/javascript">alert("Record saved successfully.");</script></head></html>';
						}
					}
				}
			}
		}
	}
	mysqli_close($con);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Sign Up</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>

<?php include('includes/header.php');?>
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                <h4 class="page-head-line">Please Sign Up here.</h4>

</div>

</div>
<span style="color:red;" >
             <?php echo htmlentities($_SESSION['errmsg']); ?>
             <?php echo htmlentities($_SESSION['errmsg']="");?></span>
	<!-- <?php session_start();
	?> -->
	<form action="signup.php" method="post">
	<table>
		<tr>
			<td>Student Name: </td>
			<td><input type="text" name="name" size="50" /></td>
		</tr>
	
		<tr>
			<td>Email ID: </td>
			<td><input type="text" name="emailid" size="40"/></td>
		</tr>

		
		<tr>
			<td>User Id: </td>
			<td><input type='text' name='user_name' id='username'  maxlength="50" /></td>
		</tr>
		
		<tr>
			<td>Password: </td>
			<td><input type='password' name='password' id='password' maxlength="50" /></td>
		</tr>
		
		<tr>
			<td>Confirm Password: </td>
			<td><input type='password' name='confirm_password' id='password' maxlength="50" /></td>
		</tr>
		
		
		<tr>
			<td colspan="3" align="center"><input type="submit" name="submit" value="Sign Up">
			</td>
		</tr>
	</table>
	
	</form>
    </div>
   </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <?php include('includes/footer.php');?>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
