<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
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

<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <!-- Brand/logo -->
	<a class="navbar-brand" href="welcome" style="font-family: verdana;">Medical
		Facilities</a> &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		

	<ul class="nav navbar-nav navbar-right">
	
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
	<br>

	</nav>

	<br>

<center>
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>

			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/curimg1.jpg" alt="curimg" width="800" height="400">
				</div>
				<div class="carousel-item">
					<img src="images/curimg2.png" alt="curimg2" width="800"
						height="400">
				</div>
				<div class="carousel-item">
					<img src="images/curimg3.jpg" alt="curimg3" width="800"
						height="400">
				</div>
				<div class="carousel-item">
					<img src="images/curimg4.jpg" alt="curimg4" width="800"
						height="400">
				</div>
				<div class="carousel-item">
					<img src="images/curimg5.jpg" alt="curimg5" width="800"
						height="400">
				</div>
				<div class="carousel-item ">
					<img src="images/curimg6.jpeg" alt="curimg6" width="800"
						height="400">
				</div>
				<div class="carousel-item">
					<img src="images/curimg7.jpg" alt="curimg7" width="800"
						height="400">
				</div>
				
				<div class="carousel-item">
					<img src="images/curimg8.jpg" alt="curimg8" width="800"
						height="400">
				</div>
				
				<div class="carousel-item">
					<img src="images/curimg9.jpg" alt="curimg9" width="800"
						height="400">
				</div>

				<div class="carousel-item">
					<img src="images/curimg10.jpg" alt="curimg10" width="800"
						height="400">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</center>

	<br>
	
	<form action="${contextPath}/list" method="get" onsubmit="this.form.submit();">
		<div class="container">
			<div class="column">
				<div class="col-sm-10">

					<select class="form-control"
						style="width: 1000px;" name="locality" id="locality" placeholder="Select Locality">
						<option value="0">Select Locality</option>
						<c:forEach items="${loclist}" var="loc">
							<option value="${loc.localityid}">${loc.localityname}</option>
						</c:forEach>
						
					</select> <br> <select class="form-control"
						style="width: 1000px;" name="subcategory" id="subcategory" placeholder="Select SubCategory">
						<option value="0">Select Specialization</option>
						<c:forEach items="${sublist}" var="s">
							<option value="${s.subcategoryid}">${s.subcategoryname}</option>
						</c:forEach>

					</select> <br>
					<div class="text-center">
						<input type="submit" value="search " class="btn btn-primary" />
					</div>
				</div>

			</div>
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
</body>
</html>