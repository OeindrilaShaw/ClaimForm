<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Login</title>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
  <link rel="stylesheet" type="text/css" href="styles/MemLogin.css">  

<link rel="stylesheet" href="styles/bootstrap.min.css">

<style>
body,html {
  height: 100%;
 /*  margin: 0; */
}

.bg {
  /* The image used */
  background-image: url("images/claim.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
	<div class="topnav" id="myTopnav">
		<a href="/Claims/Welcome.jsp">Home</a>

		<div class="dropdown2">
			<button class="dropbtn">
				Login <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown2-content">
				<a href="/Claims/AdmLogin.jsp">Admin</a> <a
					href="/Claims/MemLogin.jsp">Member</a>
			</div>
		</div>
		<div class="dropdown2">
			<button class="dropbtn">
				Register <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown2-content">
				<a href="/Claims/AdmReg.jsp">Admin</a> <a
					href="/Claims/MemReg.jsp">Member</a>
			</div>
		</div>
		<a href="/Claims/About.jsp">About</a> <a href="javascript:void(0);"
			style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>


	<div class="wrapper ">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div>
				<!--   <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />-->
			</div>

			<!-- Login Form -->
			<form action="/Claims/AdmLogged.jsp">
				<input type="text" id="login" name="login" placeholder="enter id">
				<input type="password" id="password" name="password"
					placeholder="enter password"> <input type="submit"
					value="Log In as admin"><br/>
			
			   <a href="resPas">Forgot Password?</a>
					<br/><br/>
			</form>

			<!-- Remind Password -->
			<div id="formFooter">
				<a class="underlineHover" href="/Claims/AdmReg.jsp">Register as
					Admin</a>
			</div>

		</div>
	</div>

</body>
</html>