<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
		<!-- Brand/logo -->
		<a class="navbar-brand" href="welcome" style="font-family: verdana;">Medical
			Facilities</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		
		
		
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
	<br>
	<h1 align="center" style="font-family: verdana;">Details of
		Doctors</h1>
	<br>

	<div class="card">
		<div class="card-body">
		<form action = "${contextPath}/fav" method = "get">
			<c:forEach var="p" items="${plist}">
				<div class="row">


					<div class="col-md-3">



						<p class="card-text">
							Name of the Doctor : <span class="inner-name"> ${p.dname}</span>
						</p>
						<p class="card-text">
							Qualification : <span class="inner-name">${p.d_description}</span>
						</p>
						<p class="card-text">
							Contact Number : <span class="inner-name">${p.dcontact}</span>
						</p>
<hr>

					</div>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

					<div class="col-md-3">

<br>
						<button class=" btn btn-primary" value="${p.d_id }" name="fid">AddToFavourites</button>
						&nbsp; &nbsp; &nbsp; &nbsp;

						<button type="button" class="float-right; btn btn-primary"
							data-toggle="modal" data-target="#myModal">Call Back</button>
						

					</div>
				</div>
				<br>
				<div class="col-md-3">



					<div class="container">

						<div class="modal" id="myModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">Success</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<br>
									</div>
									<div class="modal-body">

										<h2>Callback Request has been made by
											${pageContext.request.userPrincipal.name}</h2>

										<%=(new java.util.Date()).toLocaleString()%>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</c:forEach>
</form>
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