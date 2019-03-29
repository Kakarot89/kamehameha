<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>			

<style>
body {background-color: powderblue;}
input[type=submit] {
    width: 7,2em;  height: 3em;
}

a:link, a:visited {
  background-color: gray;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: lime;
}

input[type=text] {
  width: 50%;
  padding: 3px 9px;
  margin: 30px 0;
  box-sizing: border-box;
  border-radius: 4px;
  margin-left: 96px;
  
}

input[type=password] {
  width: 50%;
  padding: 3px 9px;
  margin: 30px 0;
  box-sizing: border-box;
  border-radius: 4px;
  margin-left: 96px;
  
}
/* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
</style>

<head>
<meta charset="ISO-8859-1">
<title>Registrovani Korisnik</title>
</head>


<body>
<div class="container" style="font-size: 30px" >
<form action="registerUser" method="post">    <!-- Forma Ce biti obradjena u registerControlleru u metodi POST. -->
<pre>
<h2>Registracija Korisnika:</h2>
Ime:                 <input type="text" name="ime" >  <!-- firsName ce mapirati model -->
Prezime:             <input type="text" name="prezime" > 
Ime Korisnika/Email: <input type="text" name="email" > 
Sifra:               <input type="password" name="password">
Potvrdi Sifru:       <input type="password" name="confirmPassword" >
<input type="submit" value="Registruj Se" class="btn btn-secondary"><br>
<a href="login" class="btn btn-secondary">Uloguj Se</a>
</pre>
</form>
</div>
</body>


</html>