<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 선언문(Declaration): JSP 페이지 전역에서 사용될 변수 선언
        String maintitle = "도서 목록"; 
%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book" %>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<jsp:useBean id ="bookDAO" class = "dao.BookRepository" scope = "session" />
<div class="container"> 
    <div class="mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold"><%= maintitle %></h1>
            <p class="mx-auto">BookList</p>
        </div>
    </div>
</div>

<div class="container"> 
    <div class="row align-items-md-stretch text-center">
        <%
        	ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
        %>
        <div class = "row align-items-md-stretch text-center">
        	<%
        		for(int i=0; i< listOfBooks.size(); i++) {
        			Book book = listOfBooks.get(i);
        	%>
        	<div class = "col-md-4">
        		<div class = "h-100 p-2">
        			<h5><b>
        			<%= book.getName()
        			%></b></h5>
        			<p><%= book.getAuthor() %></p>
        			<br><%= book.getPublisher() %> <%= book.getReleaseDate() %>
        			<p><%= book.getDescription().substring(0, 41) %>
        			<p><%= book.getUnitPrice() %>원
        		</div>
        	</div>
        	<% } %>
        </div>
        
    </div>
</div>