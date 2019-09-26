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

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <br>
            <center><h2 class="form-signin-heading">Create your account</h2></center>
            <br>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
<br>
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>
<br>
            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
<br>
<div class="text-center">
            <button class="btn btn-primary btn-sx" type="submit">Submit</button>
            
            
            </div>
        </form:form>

    </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <br><br><br><br><br><br><br><br><br>
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
