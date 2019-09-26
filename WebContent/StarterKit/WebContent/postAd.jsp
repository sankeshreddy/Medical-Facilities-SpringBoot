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
	<div class="container">
		<h1 class="text-center" color="red">
			<u>PostAd</u>
		</h1>
		<br> <br>
		<form action="${contextPath}/post" method="get"
			onsubmit="this.form.submit();">
			<!-- <table style="with: 80%">
				<tr>
					<td><b>Institute name</b></td>
					<td><input type="text" name="institutename" /></td>
				</tr>
				</table>
			 -->
			<!-- <div class="form-group form-inline"> -->


			<b>Doctor Name:</b> <input type="text" class="form-control"
				name="doctor_name" style="width: 100%;"><br> <b>Description:</b>
			<textarea name="description" class="form-control"
				style="width: 100%;"></textarea>
			<br> <b>Contact No:</b><input type="text" name="phno"
				class="form-control"><br>
			<!-- <div class="form-group form-inline">  -->
			<select class="form-control input-lg" name="locality" id="locality"
				placeholder="Select Locality">
				<option value="0">select locality</option>
				<c:forEach items="${loclist}" var="loc">
					<option value="${loc.localityid}">${loc.localityname}</option>
				</c:forEach>
			</select> <br> <select class="form-control input-lg" name="subcategory"
				id="subcategory" placeholder="Select SubCategory">

				<option value="0">Select SubCategory</option>
				<c:forEach items="${sublist}" var="s">
					<option value="${s.subcategoryid}">${s.subcategoryname}</option>
				</c:forEach>

			</select> <br>


			<button type="submit" class="btn btn-danger">Submit</button>
	</div>
	</form>
	</div>
</body>
</html>
