<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Medical Facilities</title>

      <%-- <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet"> --%>
      
      <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </head>

  <body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

		<a class="navbar-brand" href="welcome" style="font-family: verdana;">Medical
			Facilities</a> 

		<br>

	</nav>
    <div class="container">
      <form method="POST" action="${contextPath}/login" class="form-signin">
      <br>
      <center><h2 class="form-heading">Log in</h2>
      
        
<br>
        <div class="form-group ${error != null ? 'has-error' : ''}">
            <%-- <span>${message}</span> --%>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/><br><br>
            <input name="password" type="password" class="form-control" placeholder="Password"/><br><br>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-primary btn-sx" type="submit">Log In</button><br> <br>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
            <br>
            <center><h3>${message}</h3></center>
        </div>
      </form>
    </div>


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    
    <br><br><br><br><br><br><br>
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
