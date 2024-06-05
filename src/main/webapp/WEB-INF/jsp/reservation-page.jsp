<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Reservation Form</title> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> 
</head>  
  
<body>  
    <div class="container">
    <h3>Railway Reservation Form</h3>
    <form:form action="saveReservationDetails" modelAttribute="reservation" method="post">  
        <table border="1" class="table">
        	<tr>
        		<td>First name: </td>
        		<td><form:input path="firstName" cssClass="form-control" /></td>
        	</tr>
        	
        	<tr>
        		<td> Last Name: </td>
        		<td><form:input path="lastName"  cssClass="form-control" /> </td>
        	</tr>
        	
        	<tr>
        		<td> Gender</td>
        		<td>
        			Male : <form:radiobutton path="gender" value="Male"/>
        			Female : <form:radiobutton path="gender" value="Female"/>
        		</td>
        	</tr>
        	
        	<tr>
        		<td>Meals</td>
        		<td>
        			BreakFast : <form:checkbox path="food" value="BreakFast"/>
        			Lunch : <form:checkbox path="food" value="Lunch"/>
        			Dinner : <form:checkbox path="food" value="Dinner"/>        			
        		</td>
        	</tr>
        	
        	<tr>
        		<td>Leaving From Station: </td>
        		<td>
        			<form:select path="cityFrom"  cssClass="form-control" >
        				<form:option value="Noida" label="Noida"/>
        				<form:option value="Ghaziabad" label="Ghaziabad"/>
        				<form:option value="Ranchi" label="Ranchi"/>
        				<form:option value="Jamshedpur" label="Jamshedpur"/>
        				<form:option value="Dhanbad" label="Dhanbad"/>
        				<form:option value="Hazaribagh" label="Hazaribagh"/>
        			</form:select>	
        		</td>
        	</tr>
        	
        	<tr>
        		<td>Going To Station : </td>
        		<td>
        			<form:select path="cityTo"  cssClass="form-control" >
        				<form:option value="Noida" label="Noida"/>
        				<form:option value="Ghaziabad" label="Ghaziabad"/>
        				<form:option value="Ranchi" label="Ranchi"/>
        				<form:option value="Jamshedpur" label="Jamshedpur"/>
        				<form:option value="Dhanbad" label="Dhanbad"/>
        				<form:option value="Hazaribagh" label="Hazaribagh"/>
        			</form:select>	
        		</td>
        	</tr>
        	
        	<tr>
        		<td colspan=2 align="center">
        			<input type="submit" value="Submit" class="btn btn-primary"/>
        			<a class="btn btn-danger" href="/ReservationHome" role="button">Cancel</a> 
        		</td>
        	</tr>
        </table>     
    </form:form>
    </div>  
</body>  
</html>  