<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>LIST OF ALL BOOKS</h1>
<table border=1px solid black>
<tr>
  <th>Book_id</th>
  <th>Book_name</th>
  <th>Author_name</th>
  <th>No_of_pages</th>
  <th>Price</th>
  <th>Delete</th>
  <th>Update</th>
 </tr>
 
 <% ArrayList<Book> books=(ArrayList)request.getAttribute("data");
 for(Book b: books){
 %>
 <tr>
    <td><%=b.getBook_id() %></td>
    <td><%=b.getBook_name() %></td>
    <td><%=b.getAuthor_name() %></td>
    <td><%=b.getNo_of_pages() %></td>
    <td><%=b.getPrice() %></td>
    <td><a href="delete?id=<%=b.getBook_id() %>">delete</a></td>
     <td><a href="update1?id=<%=b.getBook_id() %>">edit</a></td>
    </tr>
    <%} %>
</table>
<a href="welcome.html">HOME</a>
</body>
</html>