<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>

<title>Prikaz Lokacija</title>
</head>

<body>

<h2>Lokacije</h2>
<table>
<tr>
<th>Id</th>
<th>Kontinent</th>
<th>Drzava</th>
<th>Oznaka</th>
<th>Ime</th>
<th>Tip</th>
</tr>

<c:forEach items="${locations}" var="location">
<tr>
<td>${location.id}</td>
<td>${location.continent}</td>
<td>${location.country}</td>
<td>${location.code}</td>
<td>${location.name}</td>
<td>${location.type}</td>
<td><a href="deleteLocation?id=${location.id}">Obriši</a></td>  <!-- Sa ${location.id} smo prosledili  dinamicki id -->
<td><a href="showUpdate?id=${location.id}">Ažuriraj</a></td>
</tr>
</c:forEach>
</table>
<br><br>
<a href="showCreate" class="btn btn-secondary">Dodaj Lokaciju</a><br><br>
<a href="generateReport" class="btn btn-secondary">Prikaži Izveštaj</a><br>

</body>
</html>