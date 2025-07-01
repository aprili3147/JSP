<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class = "container py-4">
  	 <%@  include file = "menu.jsp" %>
  	 <div class = "p-5 mb-4 bg-body-tertiary rounded-3">
     	<%@  include file = "main.jsp" %>
	 	<%@  include file = "footer.jsp" %>
</div>
</div>
</body>
</html>   