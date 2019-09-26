<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<a class="btn btn-danger" href="${contextPath}/myfavouritelist">DoctorFavourites</a>&nbsp; &nbsp;
		<a class="btn btn-danger" href="${contextPath}/myfavouritelist1">FacilityFavourites</a>

			</c:if>


		</ul>

		<br>

	</nav>

	<br>

	<div class="text-center">

		<h2>Update Post</h2>
	</div>

	<form:form class="container" modelAttribute="PostForm" method="post"
		action="savep">

		<div class="container">
			<div class="column">
				<div class="col-sm-10">
					<div class="form-group">
						<input type="hidden" class="form-control" name="aid"
							style="width: 1100px" value="${postlist.aid }" />
					</div>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" name="facility_name"
							style="width: 1100px" value="${postlist.facility_name}" required />
					</div>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" name="description"
							style="width: 1100px" value="${postlist.description}" required />
					</div>
					<br>

					<div class="form-group">
						<input type="text" class="form-control" name="phno"
							style="width: 1100px" value="${postlist.phno}" required />

					</div>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" name="locality"
							style="width: 1100px" value="${postlist.locality.localityid}"
							required />
					</div>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" name="subcategory"
							style="width: 1100px"
							value="${postlist.subcategory.subcategoryid}" required />
					</div>


					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary btn-sx"
							value="Update Post">Submit</button>
					</div>

				</div>
			</div>
		</div>
	</form:form>

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