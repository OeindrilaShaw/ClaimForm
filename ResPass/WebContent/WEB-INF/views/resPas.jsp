<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ForgotPassword</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
	
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	
	<!-- Spring Csss, Scripts and Images -->

<spring:url value="/res/static/styles/style1.css" var="style" />
<link href="${style}" rel="stylesheet" />
<spring:url value="/res/static/styles/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />

<spring:url value="/res/static/images" var="images" />

<!-- END Spring Csss, Scripts and Images -->
</head>
<body>
<form:form action="forgotpassword" modelAttribute="resetPass" method="post"  >
	Enter your email<br>
  <form:input type="text" path="emailId" class="form-control" required="required" />
  <br>
  <c:if test="${loginStatus eq -1 }">
					<!-- <div class="form-group"> -->
						<!-- <div class="alert alert-danger alert-dismissible"> -->
						<div class="alert alert-warning">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
							<p style="color:red"><strong>Error!</strong> Invalid Email.</p>
						</div>
					<!-- </div> -->
				</c:if>
 <br>

	<%-- 		<form:label path="hintQuestion"><font size="4">Hint Question</font></form:label>
				<p>
				<form:select path="hintQuestion" class="custom-select">
					<option disabled value="none" selected>select</option>
					<option value="nickname">What was your childhood nickname?</option>
					<option value="movie">What is your favorite movie?</option>
					<option value="hospital">What was the name of the hospital where you were born?</option>
					<option value="school">What school did you attend for sixth grade?</option>
				</form:select></p>
<br>
   Hint answer<br>
  <form:input type="text" path="hintAnswer" class="form-control" required="required" />
  
  
  <br>
  <c:if test="${loginStatus eq -2 }">
					<!-- <div class="form-group"> -->
						<!-- <div class="alert alert-danger alert-dismissible"> -->
						<div class="alert alert-warning">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
							<p style="color:red"><strong>Error!</strong> Invalid Hint answer.</p>
						</div>
					<!-- </div> -->
				</c:if> --%>
   <button type="submit" class="btn btn-primary btn-lg">Submit</button>
   <c:if test="${loginStatus eq 1 }">
					<!-- <div class="form-group"> -->
						<!-- <div class="alert alert-danger alert-dismissible"> -->
						<!-- <div class="alert alert-warning">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> 
							<p style="color:red"><strong>Error!</strong> Your password is ${a}</p>
						</div> -->
						<div class="alert alert-success alert-dismissible">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
							<!--  <strong>Success!</strong> New Vendor Registered Successfully..-->
							<p>Your Password is: ${a}. Please Remember it for Future Login.</p>
						</div>
					<!-- </div> -->
				</c:if>
   
</form:form>
</body>
</html>