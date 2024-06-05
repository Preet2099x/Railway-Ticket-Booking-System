<!DOCTYPE html>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>  
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> 
</head>
<body> 
<div class="container">
			<c:if test="${msg != null}">
				<div class="alert alert-success" role="alert">
					${msg}
				</div>
			</c:if>
			<c:if test="${msg == null}">
			<h3>Your reservation is confirmed successfully. Please, re-check the details.</h3>
			</c:if>
        
        <table border="1" class="table">
        	<tr>
        		<td>Ticket Id </td>
        		<td>${reservation.id}</td>
        	</tr>
        	
        	<tr>
        		<td>First name: </td>
        		<td>${reservation.firstName}</td>
        	</tr>
        	
        	<tr>
        		<td>Last Name: </td>
        		<td>${reservation.lastName}</td>
        	</tr>
        	
        	<tr>
        		<td>Gender</td>
        		<td>${reservation.gender}</td>
        	</tr>
        	
        	<tr>
        		<td>Meals</td>
        		<td>${reservation.food}</td>
        	</tr>
        	
        	<tr>
        		<td>Leaving From : </td>
        		<td>${reservation.cityFrom}</td>
        	</tr>
        	
        	<tr>
        		<td>Going To : </td>
        		<td>${reservation.cityTo}</td>
        	</tr>        	
        </table>     
        <h2><a href="/ReservationHome">Click Here to goto Home Page</a></h2>
    </div>  

</body>  
</html>  