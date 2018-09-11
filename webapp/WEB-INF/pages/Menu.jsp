<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Raleway);

nav {
  
  padding: 32px;
  text-align: center;
  font-family: Raleway;
  box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}

#nav-2 {
  background: #5175C0;
      margin-top: -1%;
}

.link-2 {
  transition: 0.6s;
  color: #ffffff;
  font-size: 20px;
  text-decoration: none;
  border-right: 2px dotted transparent;
  padding: 30px 8px 0 10px;
  margin: 0 10px;
}
.link-2:hover {
  border-right: 2px dotted #ffffff;
  padding-bottom: 24px;
}
.pulls-right {
    float: right!important;
    margin : -20px 10px;
}
.pulls-left{
float: left!important;
    margin : -10px 10px;
}
</style>
</head>
<body>
<nav class="navMenu" id="nav-2">
	<div class="pulls-left">
  <a class="link-2" href="/"><i class="fa fa-home">&nbsp;Home</i></a>
  <a class="link-2" href="/userlist"><i class="fa fa-user">&nbsp;User</i></a>
  <a class="link-2" href="/admin"><i class="fa fa-user-secret">&nbsp;Admin</i></a></div>
  <div class="pulls-right">
  <security:authorize access="isAuthenticated()">
  <a class="link-2 pulls-right" href="/logout"><i class="fa fa fa-arrow-circle-o-right">&nbsp;Logout</i></a>
  </security:authorize>
   <security:authorize access="!isAuthenticated()">
  <a class="link-2 pulls-right" href="/login"><i class="fa fa fa-arrow-circle-o-left">&nbsp;Login</i></a>
  </security:authorize></div>
</nav>

</body>
</html>