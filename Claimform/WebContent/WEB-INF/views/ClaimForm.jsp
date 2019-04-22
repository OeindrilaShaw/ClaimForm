<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sping:url value="/res/static/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<!-- <script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
	
		<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>

	<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
	  integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
	  crossorigin="anonymous"></script>

<!------ Include the above in your HEAD tag ---------->

<spring:url value="/res/static/css" var="cssPath"></spring:url>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="Claimform/styles/ClaimForm.css">
<link rel="stylesheet" href="Claimform/styles/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/res/static/css/ClaimForm.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/res/static/css/bootstrap.min.css"
	rel="stylesheet">
	
	<script>
	$(document).ready(function(){
		$("#submitdate").datepicker({
			changeYear:true,
			changeMonth:true,
			maxDate:'0',
			yearRange:'-20:+20'
			
		});
	});
	</script>
	<script>
	$(document).ready(function(){
		$("#servicedate").datepicker({
			changeYear:true,
			changeMonth:true,
			maxDate:'0',
			yearRange:'-20:+20'
			
		});
	});
	</script>
</head>
<body>
	​
	<div class="topnav" id="myTopnav">
		<a href=" ">Welcome, Member</a>

		<ul class="nav navbar-nav">
			<li><a class="btn1 navbar-btn btn-info"
				href="/Claims/ClaimButtons.jsp" name="goback" id="goback"
				value="Go Back">Go Back</a> <a class="btn1 navbar-btn btn-danger"
				href="/Claims/Welcome.jsp" name="logout" id="logout" value="Log Out">Log
					Out</a></li>
		</ul>

	

		


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
		
	</div>
	<div class="container">
		<br />
		<hr />

		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
				<h4 class="card-title mt-3 text-center">Claims Information</h4>
				<p class="text-center">Insert details to raise your claim</p>

				<p class="divider-text"></p>
				<c:url var="action" value="/claim/add.html"></c:url>
				<form:form method="post" action="${action}" commandName="claim"
					cssClass="customerForm" id="claimsInfoForm" autocomplete="off">
					<c:if test="${!empty claim}">
						<div class="form-group">
							<%-- <form:label path="claimid" cssClass="customerLabel">
								<spring:message code="label.claimid" />
							</form:label>
							<form:input path="claimid" readonly="true" size="8"
								disabled="true" class="form-control" />
							<form:hidden path="claimid" /> --%>
						</div>
					</c:if>

					<div class="form-group">
						<form:label path="memberid" cssClass="customerLabel">
							<spring:message code="label.memberid" />
						</form:label>
						<form:input path="memberid" placeholder="memberid"
							data-validation="alphanumeric" class="form-control" />
					</div>
					
					<div class="form-group">
						<form:label path="claim_service_date" cssClass="customerLabel">
							<spring:message code="label.claim_service_date" />
						</form:label>
						<form:input type="text" id="servicedate" path="claim_service_date" placeholder="date"
							class="form-control" 
							 />
					</div>
					
					<div class="form-group">
						<form:label path="claim_sub_date" cssClass="customerLabel">
							<spring:message code="label.claim_sub_date" />
						</form:label>
						<form:input type="text" id="submitdate" path="claim_sub_date" placeholder="date"
							class="form-control" 
							 />
					</div>
					
					<div class="form-group">
						<form:label path="claim_amt" cssClass="customerLabel">
							<spring:message code="label.claim_amt" />
						</form:label>
						<form:input path="claim_amt" placeholder="amount"
							class="form-control" data-validation="number"/>
					</div>


					<%-- <form:errors path="age"  cssClass="error"></form:errors> --%>

					<c:if test="${empty claim.memberid}">
						<input type="submit" class="btn btn-lg btn-primary"
							value="<spring:message code="label.addcustomer"/>" />
					</c:if>
					
				</form:form>
			</article>
		</div>
		<!-- card.// -->

	</div>
	<!--container end.//-->

	<br>
	<br>

<script >

		$.validate({
			form : '#claimsInfoForm',
			validateOnBlur : false,
			errorMessagePosition : 'top'
		});
		
		
		
	</script>


</body>
</html>