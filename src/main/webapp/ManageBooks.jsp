<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management System</title>
</head>
<body>
	<h1>Book Management System</h1>
	<table border=1>
		<tr><td colspan = 2>Menu Details</td>
		<tr>
			<td width="40%">See All Books</td>
			<td  width="40%"><a href="/ITPCST/all_book">Click Here</a></td>
			<span>Hi ;${booksData}</span>
		</tr>
		<tr>
			<td width="40%">See Book by Id</td>
			<td  width="40%"><a href="/ITPCST/all_book_byId">Click Here</a></td>			
		</tr>
	</table>
</body>
</html>