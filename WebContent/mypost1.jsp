<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medical Facilities</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
</head>
<body style="background-color: white;">

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

		<a class="navbar-brand" href="${contextPath}/welcome" style="font-family: verdana;">Medical
			Facilities</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;


		<ul class="nav navbar-nav navbar-right">
			<!-- <div class="container"> -->
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<form id="logoutForm" method="POST" action="${contextPath}/logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

				<a class="btn btn-light">Welcome
					${pageContext.request.userPrincipal.name}</a>&nbsp; &nbsp;
        <a class="btn btn-light"
					onclick="document.forms['logoutForm'].submit()">Logout</a> &nbsp; &nbsp;
        <a class="btn btn-danger" href="mypostlist">DoctorPosts</a>&nbsp; &nbsp;
        <a class="btn btn-danger" href="mypost1list">FacilityPosts</a>&nbsp; &nbsp;
		<a class="btn btn-danger" href="myfavouritelist">DoctorFavourites</a>&nbsp; &nbsp;
		<a class="btn btn-danger" href="myfavouritelist1">FacilityFavourites</a>
			</c:if>

		</ul>

		<br>

	</nav>

	<br>
	<h1 align="center" style="font-family: verdana;">Facilities Posts</h1>
	<br>

	<div class="card">
		<div class="card-body">

			<c:forEach var="postl" items="${postlist}">
				<div class="row">


					<div class="col-md-4">


						<p class="card-text">
							Name of the facility : <span class="inner-name">${postl.facility_name}</span>
						</p>
						<p class="card-text">
							Description : <span class="inner-name">${postl.description}</span>
						</p>
						<p class="card-text">
							Contact Number : <span class="inner-name">${postl.phno}</span>
						</p>
						<p class="card-text">
							Location : <span class="inner-name">${postl.locality.localityname}</span>
						</p>
						<p class="card-text">
							Facility Service: <span class="inner-name">${postl.subcategory.subcategoryname}</span>
						</p>
						<hr>

					</div>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

					<div class="col-md-4">

						<br> <br> <br>
						<button type="button" class="float-right;btn btn-primary">
							<a href="fupdatepost/${postl.aid }"><font color="white">Edit</font></a>
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;

						<button type="button" class="float-right;btn btn-primary">
							<a href="fdelete?id=${postl.aid }"><font color="white">Delete</font></a>
						</button>

					</div>
				</div>
				<br>


			</c:forEach>

		</div>

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