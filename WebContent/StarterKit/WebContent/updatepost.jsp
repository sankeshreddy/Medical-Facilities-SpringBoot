
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Welcome Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">

<script>
    </script>
 
</head>
<body>
	<nav class="navbar  navbar-expand-sm bg-dark navbar-dark">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"> <img
				src="http://praxis.ac.in/wp-content/uploads/2018/03/talent-sprint-logo-1024x614.png"
				alt="Logo" style="width: 50px;">
			</a> <a class="navbar-brand"><b><font color="green">Schools/Colleges</b></font></a>
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

						<a class="dropdown-item" href="mypostlist">My Post</a> <a
							class="dropdown-item"
							href="StarterSpringController?action=My Favourite">My
							Favourite</a> <a class="dropdown-item"
							onclick="document.forms['logoutForm'].submit()">Logout</a>

					</div></li>
			</ul>
		</c:if>
	</div>
	</nav>
 
	<div class="container text-center">
		<h3>update post</h3>
	
		<form:form class="form-horizontal" modelAttribute="PostForm"
			method="post" action="savep">
			<div class="container text-center">
				<div class="form-group">
					<label class="control-label col-md-3"></label>
					<div class="col-md-7">
						<input type="hidden" class="form-control" name="aid"
							value="${postlist.aid }" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-3">Institute name</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="institutename"
							value="${postlist.institutename}" required />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">Description</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="description"
							value="${postlist.description}" required />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">contactnumber</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="phno"
							value="${postlist.phno}" required />
					</div>
				</div>


				<div class="form-group ">
					<input type="submit" class="btn btn-primary" value="Update Post">
				</div>
			</div>


		</form:form>
	
	  <form action="${contextpath}/savep" method="post" onsubmit="this.form.submit();"  modelAttribute="PostForm">
		 	 <!-- <table style="with: 80%">
				<tr>
					<td><b>Institute name</b></td>
					<td><input type="text" name="institutename" /></td>
				</tr>
				</table> -->
			
			 <!-- <div class="form-group form-inline"> -->
			 <input type="hidden" class="form-control" name="aid"
							value="${postlist.aid }" /><br>
							Institute name:<input type="text" class="form-control" name="institutename"
							value="${postlist.institutename}" required /><br>
						Description:	<input type="text" class="form-control" name="description"
							value="${postlist.description}" required /><br>
						Contact Number:	<input type="text" class="form-control" name="phno"
							value="${postlist.phno}" required /><br>
							<input type="submit" class="btn btn-primary" value="Update Post">

</form>

 
	</div>

</body>
</html> --%>
<%-- <%@page import="com.example.demo.model.Test"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">


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


<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	
</script>

</head>
<body>
	<nav class="navbar  navbar-expand-sm bg-dark navbar-dark">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/"> <img
					src="http://praxis.ac.in/wp-content/uploads/2018/03/talent-sprint-logo-1024x614.png"
					alt="Logo" style="width: 50px;">
				</a> <a class="navbar-brand"><b><font color="green">Medical
							Facility</b></font></a>
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

							<a class="dropdown-item" href="mypostlist">My Post</a> <a
								class="dropdown-item" href="Myfavouritelist">My Favourite</a> <a
								class="dropdown-item"
								onclick="document.forms['logoutForm'].submit()">Logout</a>

						</div></li>
				</ul>
			</c:if>
		</div>
	</nav>
	<div class="container text-center">
		<h3>update post</h3>

		<form:form class="form-horizontal" modelAttribute="PostForm"
			method="post" action="savep">
			<div class="container text-center">
				<div class="form-group">
					<label class="control-label col-md-3"></label>
					<div class="col-md-7">
						<input type="hidden" class="form-control" name="aid"
							value="${postlist.aid }" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-3">Doctor name</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="doctor_name"
							value="${postlist.doctor_name}" required />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">Description</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="description"
							value="${postlist.description}" required />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">contactnumber</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="phno"
							value="${postlist.phno}" required />
					</div>
				</div>


				<div class="form-group ">
					<input type="submit" class="btn btn-primary" value="Update Post">
				</div>
			</div>


		</form:form>
	</div>
</body>
</html>