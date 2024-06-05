<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Management System</title>
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
	
	<h3>Reservation Management System</h3>
	<table border=1 class="table">
		<tr><td colspan = 2><b>Menu Details</b></td>
		<tr>
			<td width="40%">Booking Form</td>
			<td  width="40%"><a href="/bookingForm">Click Here</a></td>
		</tr>		
		<tr>
			<td width="40%">View All Bookings</td>
			<td  width="40%"><a href="/viewAllBookings">Click Here</a></td>
		</tr>
		<tr>
			<td width="40%">View Bookings By Id</td>
			<td  width="40%"><a href="#" onclick="getBookingById()">Click Here</a></td>
		</tr>
	</table>
	</div>
</body>
<script>
function getBookingById(){
	let bookingId = prompt("Please enter booking id");
	if (bookingId != null) {
		location.href="/booking/"+bookingId;
	}
}
</script>
</html>