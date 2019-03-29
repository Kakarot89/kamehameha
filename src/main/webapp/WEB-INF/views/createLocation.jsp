<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style>
  <style> 
input[type=text] {
  width: 50%;
  padding: 3px 9px;
  margin: 30px 0;
  box-sizing: border-box;
  border-radius: 4px;
  margin-left: 96px;
  
}</style>
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
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>

<style>
body {background-color: powderblue;}
input[type=submit] {
    width: 7em;  height: 4em;
}
</style>

<link rel="stylesheet" type="text/css" href="style.css">


<title>Kreiraj Lokaciju</title>
</head>



<body>

<h2>Srbija Do Tokiya</h2>


<div class="container" style="font-size: 30px" >
<form action="saveLocation" method="post">  <!-- Post zato sto nesto kreiramo, ovde kreiramo Location -->
<pre>
Id:        <input style="margin-left: 87px;" type="text" name="id" id="idmargin"/>
Kontinent: <input style="margin-left: 84px" type="text" name="continent"/>
Drzava:    <input style="margin-left: 84px" type="text" name="country"/>
Oznaka:   <input type="text" name="code"/>
Ime:      <input type="text" name="name"/>
Tip: Grad <input type="radio" name="type" value="GRAD"/><br>
     Selo <input type="radio" name="type" value="SELO"/><br>
<input type="submit" class="btn btn-secondary" value="SAVE"/>  <br>    
</pre>
</form>

</div>

<div class="container" style="font-size: 30px" >
<h3>${msg}</h3>
</div>

<div class="container"  >
<a href="displayLocations" class="btn btn-secondary" >Vidi Sve</a><br><br>
</div>


</body>
</html>