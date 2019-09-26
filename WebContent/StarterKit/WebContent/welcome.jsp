
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Medical Facilities</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<nav class="navbar  navbar-expand-sm bg-dark navbar-dark">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"> <img
				src="http://praxis.ac.in/wp-content/uploads/2018/03/talent-sprint-logo-1024x614.png"
				alt="Logo" style="width: 50px;">
			</a> <a class="navbar-brand"><b><font color="green">Medical Facility</b></font></a>
		</div>
	</div>




 <div class="container" style="color: blue">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Welcome
						${pageContext.request.userPrincipal.name}</a>
					<div class="dropdown-menu">

						<a class="dropdown-item"
							href="mypostlist">My Post</a> <a
							class="dropdown-item"
							href="Myfavouritelist">My
							Favourite</a> <a class="dropdown-item"
							onclick="document.forms['logoutForm'].submit()">Logout</a>

					</div></li>
       </ul>
</c:if>
	</div>
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
				<br> <br>
				<div class="carousel-item">
					<img src="images/curimg8.jpg" alt="curimg8" width="800"
						height="400">
				</div>
				<br> <br>
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
	<br>
	<br>
	<br>



	<br>

	<div class="container">
		<div class="column">
			<div class="col-sm-10">


				<form action="${contextPath}/subcategory" method="get"
					onsubmit="this.form.submit();">

					<select class="form-control input-lg" name="city" id="city"
						placeholder="Select City">
						<option value="0">select city</option>
						<c:forEach items="${clist}" var="c">
							<option value="${c.cityid}">${c.cityname}</option>
						</c:forEach>
					</select> <br> <select class="form-control input-lg" name="category"
						id="category" placeholder="Select Category">

						<option value="0">Select Category</option>
						<c:forEach items="${list}" var="l">
							<option value="${l.categoryid}">${l.categoryname}</option>
						</c:forEach>

					</select> <br> <br> 
					<div class="text-center">
						<input type="submit" value="search " name = "search" class="btn btn-primary" />
                      <input type="submit" value="postAd" name = "postAd"class="btn btn-primary"/> 
					</div>
				</form>
			</div>
		</div>
	</div>

	<br>




</body>
</html>