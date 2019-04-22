<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>your password</title>
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
<form:form action="changepassword" modelAttribute="pass" method="post" >
<br>
   Email<br>
  <form:input type="type" path="emailId" value="${b}" class="form-control" readonly="true" style="background-color: #BDBDBD;"/>
   
<br>
   New Password<br>
  <form:input type="password" path="password" class="form-control" required="required" />
   
  <br>
  <div class="form-group">
	<label ><font size="4">Confirm Password</font></label>
	<input name="confirmPassword" type="password" class="form-control" required="required"/>
</div>
   
  <br>
  <button type="submit" class="btn btn-primary btn-lg">Submit</button>
  </form:form>
</body>
</html>