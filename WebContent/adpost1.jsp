<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Medical Facilities</title>
</head>
<body style="background-color: white;">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <!-- Brand/logo -->
	<a class="navbar-brand" href="welcome" style="font-family: verdana;">Medical
		Facilities</a> &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		

	<ul class="nav navbar-nav navbar-right">
	<!-- <div class="container"> -->
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <a class="btn btn-light">Welcome ${pageContext.request.userPrincipal.name}</a>&nbsp; &nbsp;
        <a class="btn btn-light" onclick="document.forms['logoutForm'].submit()">Logout</a> &nbsp; &nbsp;
       <a class="btn btn-danger" href="mypostlist">DoctorPosts</a>&nbsp; &nbsp;
        <a class="btn btn-danger" href="mypost1list">FacilityPosts</a>&nbsp; &nbsp;
		<a class="btn btn-danger" href="myfavouritelist">DoctorFavourites</a>&nbsp; &nbsp;
		<a class="btn btn-danger" href="myfavouritelist1">FacilityFavourites</a>
    </c:if>
		

	</ul>
	
	<br>
	
	</nav>
  
<br>
	<br>
	<div class="container">
		<h1 class="text-center">
			Enter The Details Of Facilities
		</h1>
		<br>
		<form action="${contextPath}/fpost" method="get"
			onsubmit="this.form.submit();">
			<!-- <table style="with: 80%">
				<tr>
					<td><b>Institute name</b></td>
					<td><input type="text" name="institutename" /></td>
				</tr>
				</table>
			 -->
			<!-- <div class="form-group form-inline"> -->


			<b>Facility Name:</b> <input type="text" class="form-control"
				name="facility_name" style="width: 100%;"><br> <b>Description:</b>
				
			<textarea name="description" class="form-control"
				style="width: 100%;"></textarea>
				
			<br> <b>Contact Number:</b><input type="text" name="phno"
				class="form-control"><br>
				
			<!-- <div class="form-group form-inline">  -->
			<b>Locality:</b><select class="form-control input-lg" name="locality" id="locality"
				placeholder="Select Locality">
				<option value="0">Select Locality</option>
				<c:forEach items="${loclist}" var="loc">
					<option value="${loc.localityid}">${loc.localityname}</option>
				</c:forEach>
				
			</select> <br><b>Facility Service:</b> <select class="form-control input-lg" name="subcategory"
				id="subcategory" placeholder="Select Facility Service">

				<option value="0">Select Facility Service</option>
				<c:forEach items="${sublist}" var="s">
					<option value="${s.subcategoryid}">${s.subcategoryname}</option>
				</c:forEach>

			</select> <br>

<div class="text-center">
			<button type="submit" class="btn btn-primary">Submit</button>
	</div>
	</form>
	

	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<footer class="page-footer font-small unique-color-dark pt-4">

  <!-- Footer Elements -->
  <div class="container">

   
  </div>
  <!-- Footer Elements -->

  <!-- Copyright -->
  
  
  <div class="footer-copyright text-center py-3">
  
  © 2019 Copyright:SankeshReddy Trainee Full Stack Java Developer
    <a href="https://www.talentsprint.com/">TalentSprint</a>
    
  </div>
  <!-- Copyright -->

</footer>

</div>
</body>
</html>