<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<style type="text/css">
body {
	background: url("https://images.pexels.com/photos/185343/pexels-photo-185343.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"); opacity: 0.9;
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	font-family: "Lobster";
}

html {
	height: 150%;
}
.navMenu {
    margin: -1%;
    }
#content {
	text-align: center;
	padding-top: 20%;
	padding-bottom: 15%
}
.fas {
    padding: 10px;
    font-size: 30px;
    width: 25px;
    text-align: center;
    text-decoration: none;
    border-radius: 50%;
    margin: 5px;
}

.fas:hover {
    opacity: 0.8;
    transform: scale(1.1);
  	box-shadow: 0 0 1rem red;
}

#logo {
  color: red;
  font-family: "Pacifico", cursive;
  font-size: 40px;
}

#welcome {
	margin-bottom: 15px;
}

#nav {
	font-weight: bold;
	font-size: 20px;
  font-family: "lobster";
}

.maintitle {
  font-size: 80px;
  font-family: "architects daughter";
  color: white;
  font-weight: bold;
  line-height: 75px;
}

#tagline {
  color: white;
  font-family: "architects daughter";
  font-weight: bold;
  font-size: 30px;
  line-height: 25px;
  
}

hr {
	width: 400px;
	border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0, 0, 0, .2)
}

.content {
	text-align: center;
	padding-top: 5%;
	padding-bottom: 15%
}

.construction {
	max-width: 70%;
	max-height: 70%;
	opacity: 0.8;
}

#footer {
	color: white;
	text-align: center;
	font-weight: bold;
	font-size: 22px;
}


.fa-twitter {
    background: #55ACEE;
    color: white;
}

.fa-linkedin {
	background: #007bb5;
	color: white;
}

.fa-instagram {
	background: #125688;
	color: white;
}

.fa-github {
	background: #000000;
	color: white;
}


</style>
</head>
<body>
<div class="container">
	<%@ include file = "Menu.jsp" %>
	</div>
<div class="container">
	<div class="row" id="home">
		<div class="col-lg-12" id="content">
		  <div id="welcome">
        <div data-tilt><h1 class="maintitle">Welcome</h1></div>
			<p id="tagline">I build things on the computer</p>
			<hr>
      <a type="button" class="btn-floating btn-large btn-ins" href="https://www.instagram.com/" target="_blank"><i class="fas fa fa-instagram fa-2x"></i></a>

      <a type="button" class="btn-floating btn-large btn-li" href="https://www.linkedin.com/in/" target="_blank"><i class="fas fa fa-linkedin fa-2x"></i></a>

      <a type="button" class="btn-floating btn-large btn-git" href="https://github.com/" target="_blank"><i class="fas fa fa-github fa-2x"></i></a>

      <a type="button" class="btn-floating btn-large btn-tw" href="https://twitter.com/" target="_blank"><i class="fas fa fa-twitter fa-2x"></i></a>
		  </div>
      
		</div>
	</div>
</div>
</body>
</html>