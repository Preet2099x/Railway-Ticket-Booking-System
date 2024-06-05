<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
			<h3>All Reservation(s)</h3>
			<table border=1 class="table">
					<thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">First Name</th>
					      <th scope="col">Last Name</th>
					      <th scope="col">Gender</th>
					      <th scope="col">Meals</th>
					      <th scope="col">Leaving From</th>
					      <th scope="col">Going To</th>
					      <th scope="col">Action</th>
					    </tr>
				  	</thead>
				  	<tbody>
				  			<c:if test="${bookingsData != null}">
								<c:forEach items="${bookingsData}" var="bk">
									<tr>
										<td>${bk.id}</td>
      									<td>${bk.firstName}</td>
      									<td>${bk.lastName}</td>
      									<td>${bk.gender}</td>
      									<td>${bk.food}</td>
      									<td>${bk.cityFrom}</td>
      									<td>${bk.cityTo}</td>
      									<td>
      										<a href="/deleteBooking/${bk.id}">Delete</a>
      										<hr/>
      										<a href="/editBooking/${bk.id}">Edit</a>
      									</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${bookingsData == null}">
									<tr>
										<td colspan="7">No Details Available</td>
									</tr>
							</c:if>
				  	</tbody>
			</table>
			<h2><a href="/ReservationHome">Click Here to goto Home Page</a></h2>
		</div>		
</body>
</html>