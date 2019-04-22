<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Way 2 Policy Admin/User Login Form</title>
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<!-- Spring Csss, Scripts and Images -->

<spring:url value="/res/static/styles/indexstyle.css" var="indexStyle" />
<link href="${indexStyle}" rel="stylesheet" />

<spring:url value="/res/static/images" var="images" />

<!-- END Spring Csss, Scripts and Images -->



</head>

<body>
<jsp:forward page="AdmLogin"></jsp:forward>
<%
   /*  String redirectURL = "AdmLogin.jsp";
    response.sendRedirect(redirectURL); */
    
%>
	<div class="form">
		<ul class="tab-group">
			<img src="${images}\logo.png" alt="ebar ki hobe" width="80"
				height="80" style="margin-left: 230px;">
			<br>
			<br>
			<h1>Way 2 Policy</h1>
			<form:form action="vendorLogin" method="get">
			<button type="submit" class="button button-block" name="vendor">
				<!-- <a href="VendorLogin.html">Are you a vendor?</a> -->
				<span>Are you a vendor?</span>
			</button>
			</form:form>
			&nbsp;
			<form:form action="userLogin" method="get">
			<button type="submit" class="button button-block" name="user"/>
				<!-- <a href="UserLogin.html">Or,Are you a user?</a> -->
				<span>Are you a user?</span>
			</button>
			
			</form:form>
			
		</ul>

		<div class="tab-content">


			<br> <br> <br> <br> <br> <br>


			</form>

		</div>

	</div>
	<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript"
	src='<spring:url value="/res/static/scripts/index.js"/>'></script>



	<!-- <script src="scripts/index.js"></script>
 -->




</body>

</html>
 --%>
 <html>
 <head></head>
 <body>
 <jsp:forward page="AdmLogin"></jsp:forward>
 </body></html>