<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Welcome Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


</head>
<body>

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
		
<!-- </div> -->
	</ul>
	
	<br>
	<br>
	</nav>
  <br>
	<div class="container">
		<h1 class="text-center">
			PostAd
		</h1>
		
		<form action="${contextPath}/post" method="get"
			onsubmit="this.form.submit();">
			
			<b>Doctor Name</b> <input type="text" class="form-control"
				name="doctor_name" style="width: 100%;"><br> <b>Qualification</b>
				
			<textarea name="description" class="form-control"
				style="width: 100%;"></textarea>
			<br> <b>Contact Number</b><input type="text" name="phno"
				class="form-control"><br>
			<!-- <div class="form-group form-inline">  -->
			<b>Locality</b><select class="form-control input-lg" name="locality" id="locality"
				>
				<option value="0">select locality</option>
				<c:forEach items="${loclist}" var="loc">
					<option value="${loc.localityid}">${loc.localityname}</option>
				</c:forEach>
			</select> <br> <b>Specialization Service</b><select class="form-control input-lg" name="subcategory"
				id="subcategory" >

				<option value="0">Select Specialization Service</option>
				<c:forEach items="${sublist}" var="s">
					<option value="${s.subcategoryid}">${s.subcategoryname}</option>
				</c:forEach>

			</select> <br>

<center>
			<button type="submit" class="btn btn-primary">Submit</button></center>
			</form>
			
	</div>
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
	
	
</body>
</html>
