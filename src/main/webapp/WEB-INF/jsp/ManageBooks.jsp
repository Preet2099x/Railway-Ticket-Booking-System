<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management System</title>
</head>
<body>
	<h1>Book Management System(In WEB-INF)</h1>
	<table border=1>
		<tr><td colspan = 2>Menu Details</td>
		<tr>
			<td width="40%">See All Books</td>
			<td  width="40%"><a href="/ITPCST/all_book">Click Here</a></td>
		</tr>
		<tr>
			<td width="40%">See Book by Id</td>
			<td  width="40%"><a href="/ITPCST/all_book_byId">Click Here</a></td>			
		</tr>
	</table>
	
		<c:if test="${booksData != null}">
			<p>
            Book List-
	            <ul>
	                <c:forEach items="${booksData}" var="bk">
	                    <li>${bk.bookname}</li>
	                </c:forEach>        
	            </ul>
        	</p>
		</c:if>
		
</body>
</html>