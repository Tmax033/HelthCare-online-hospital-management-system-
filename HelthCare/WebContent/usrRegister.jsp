<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href="css/loginStyles.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap-responsive.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

<div class="login-form-reg">
    <form action="#" method="post">
        <h2 class="text-center"><b>Register</b></h2>   
        <div class="form-group has-error">
        	<input type="text" class="form-control" name="fname" placeholder="First Name" required="required">
        </div>
		<div class="form-group has-error">
            <input type="text" class="form-control" name="lname" placeholder="Last Name" required="required">
        </div>
        <div class="form-group has-error">
            <input type="text" class="form-control" name="email" placeholder="Email" required="required">
        </div> 
        <div class="form-group has-error">
        	<input type="text" class="form-control" name="nic" placeholder="NIC Number" required="required">
        </div> 
        <div class="form-group has-error">
        	<input type="text" class="form-control" name="phone" placeholder="Phone Number" required="required">
        </div>   
        <div class="form-group has-error">
        	<input type="password" class="form-control" name="pass" placeholder="Password" required="required">
        </div> 
        <div class="form-group has-error">
        	<input type="password" class="form-control" name="phone" placeholder="Confirm Password" required="required">
        </div>    
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">Sign Up</button>
        </div>
        
    </form>
    <p class="text-center small">Already have an account? <a href="usrLogin.jsp">Login here!</a></p>
</div>
</body>	
</html>