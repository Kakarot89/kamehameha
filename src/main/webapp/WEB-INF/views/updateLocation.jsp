<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>			

<title>Kreiraj Lokaciju</title>
</head>



<body>

<form action="updateLocation" method="post">  <!-- Post zato sto nesto kreiramo, ovde kreiramo Location -->
<pre>
Id:       <input type="text" name="id" value="${location.id}" readonly/>
Kontinent:<input type="text" name="continent" value="${location.continent}"/>
Drzava:   <input type="text" name="country" value="${location.country}"/>
Oznaka:   <input type="text" name="code" value="${location.code}"/>
Ime:      <input type="text" name="name" value="${location.name}"/>
Tip: Grad <input type="radio" name="type" value="GRAD" ${location.type=='GRAD'?'checked':''}/>
     Selo <input type="radio" name="type" value="SELO" ${location.type=='SELO'?'checked':''}/>
<input type="submit" value="save"/>      
</pre>
</form>

</body>
</html>