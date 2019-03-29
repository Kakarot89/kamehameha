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
</style>
<style> 
a:link, a:visited {
  background-color: gray;
  color: white;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: gray;
}
</style>


<style>
body {background-color: powderblue;}
input[type=submit] {
    width: 7em;  height: 4em;
}
</style>


<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>


<body>

<div class="container" style="font-size: 30px" >
<form action="login" method="post">    <!-- login je url koji mapiramo u UserController -->
<pre>
Ime Korisnika/Email: <input style="margin-left: 84px" type="text" name="email">
Password:            <input style="margin-left: 84px" type="password" name="password"><br>
                     <input type="submit" value="Login" class="btn btn-secondary" style="margin-left: 84px"><br>
                     <p style="font-size: 2em;"> ${poruka}</p>
</pre>
</form>
</div>
</body>
</html>