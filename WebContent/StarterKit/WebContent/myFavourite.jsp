
<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>List of Details</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>




<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="//img2.talentsprint.com/misc/files/img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Source+Sans+Pro:300,400,600"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/misc/prime/css/style.css">
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet">
<style>
body {
	color: #646464e8;
	font-family: 'Source Sans Pro', sans-serif;
}

.mt-10 {
	margin-top: 10px;
}

.mt-15 {
	margin-top: 15px;
}

.mt-20 {
	margin-top: 20px;
}

.lh-0 {
	line-height: 0;
}

.h-10 {
	line-height: 10px;
}

.br-15 {
	border-radius: 15px;
}

.text-white {
	color: #fff;
}

.home-btn {
	padding-left: 25px;
	padding-right: 25px;
}

.main-content {
	background-color: #F5F9FB;
	padding-top: 30px;
}

.panel:hover {
	box-shadow: 0 0 25px -5px #9e9c9e;
}

.trainee_wrap {
	padding: 15px;
	box-shadow: 0 0 25px -5px #9e9c9e;
	margin-top: 20px;
}

.sec-top {
	margin-top: 80px;
}

.trainee_img {
	border-radius: 5px;
	margin: -60px auto auto auto;
	width: 130px;
	height: 130px;
	box-shadow: 0 -3px 10px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0
		rgba(0, 0, 0, 0.13);
}

.trainee-name {
	color: #FF9800;
	font-weight: 500;
	line-height: 6px;
}

.text-light {
	color: #999;
}

.college {
	border-radius: 50px 0 0 50px;
	padding: 11px 15px 0px;
	/*padding:  1px 15px;*/
	background-color: #00a750ba;
	float: right;
	color: #fff;
	margin-right: -16px;
	clear: both;
	box-shadow: 0 3px 12px rgba(0, 0, 0, .3);
}

.college2 {
	border-radius: 50px 0 0 50px;
	/*padding:  11px 15px 0px;*/
	padding: 1px 15px;
	background-color: #00a750ba;
	float: right;
	color: #fff;
	margin-right: -16px;
	clear: both;
	box-shadow: 0 3px 12px rgba(0, 0, 0, .3);
}

.college1 {
	border-radius: 50px 0 0 50px;
	/*padding:  11px 15px 0px;*/
	padding: 1px 15px;
	background-color: #f63;
	float: right;
	color: #fff;
	margin-right: -16px;
	clear: both;
	box-shadow: 0 3px 12px rgba(0, 0, 0, .3);
}

.status {
	font-size: 18px;
}

.color_red {
	color: #f63;
}

.link_sec {
	padding: 10px;
}

.bg-footer {
	background-color: #ff9800ba;
}

.bg-footer a:hover {
	font-weight: bold;
	text-decoration: none;
	color: #fff;
}

/*accordion style student list css*/
.accordion_students .accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 5px 10px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.accordion_students .active, .accordion:hover {
	background-color: #ccc;
}

.accordion_students .accordion:after {
	content: '\002B';
	color: #777;
	font-weight: bold;
	float: right;
	margin-left: 5px;
	margin-top: 15px;
	font-size: 20px;
}

.accordion_students .active:after {
	content: "\2212";
}

.accordion_students .panel {
	padding: 0 5px;
	background-color: white;
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.2s ease-out;
	margin-bottom: 0;
}

.headerimg {
	height: 50px;
	width: 50px;
	border-radius: 50%;
	display: inline;
	margin-right: 5px;
	border: 1px solid #aaa;
	padding: 1px;
}

.inner_img {
	border-radius: 5px;
	border: 1px solid #ccc;
	padding: 1px;
	margin: 0 auto;
}

.inner_links {
	font-size: 15px;
}

.inner-name {
	color: #FF9800;
	font-weight: 600;
}

#accordion .panel-heading {
	padding: 3px 10px;
	background-color: #eee;
}

#accordion .panel-heading a:before {
	content: "\e113";
	font-size: 24px;
	color: #aaa;
	position: absolute;
	right: 5px;
	top: 10px;
	transform: rotate(180deg);
	transition: all 0.5s;
}

#accordion .panel-heading.active a:before {
	transform: rotate(0deg);
	transition: all 0.5s;
}

.rating {
	height: 15px;
}

.hacker_table {
	margin-bottom: 0;
}

.hacker_table th {
	/*background-color: #246588; */
	background-color: #2dc261;
	color: #fff
}

.hacker_success {
	color: #246588;
	font-weight: 500;
}

.placed {
	transform: rotate(-40deg);
	opacity: 0.5;
	max-height: 100px;
	margin: 20px auto;
}

.hacker_logo {
	height: 30px;
	margin-top: 10px;
}

.knowmore:hover, .knowmore:focus {
	text-decoration: none;
}

.hacker_table>tbody>tr>td, .hacker_table>tbody>tr>th, .hacker_table>tfoot>tr>td,
	.hacker_table>tfoot>tr>th, .hacker_table>thead>tr>td, .hacker_table>thead>tr>th
	{
	padding: 3px 8px;
}

@media screen and (max-width: 992px) and (min-width: 768px) {
	.placed {
		float: right;
		margin: -100px 0 0 0;
	}
}
</style>
<style>
#grad1 {
	height: 640px;
	background-color: #cccccc;
	background-image: linear-gradient(red, yellow);
}
</style>
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



	<div class="main-content">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="accordion_students">
						<h1>MyFavourites</h1>
						<hr>
						<c:forEach var="p" items="${p}">

							<div class="trainee_wrap">

								<h4>
									DoctorId : <span class="inner-name"> ${p.did.d_id}</span><br>
								</h4>


								<h4>
									Name of the Doctor : <span class="inner-name">
										${p.did.dname}</span><br>
								</h4>

								<h4>
									Description : <span class="inner-name">${p.did.d_descrption}</span>
								</h4>


								<h4>
									Contact Number: <span style="color: blue;" class="inner-name">${p.did.dcontact}</span>
								</h4>




							</div>


						</c:forEach>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
