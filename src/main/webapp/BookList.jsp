<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Online Farmers Market</title>
    <link rel = "icon" href =  "https://chinmaystorageaccount.blob.core.windows.net/farmer-market/icon-fruits.png"   type = "image/x-icon">
    <!--  <style> 
		body {
		  background-image: url("https://chinmaystorageaccount.blob.core.windows.net/farmer-market/Fresh-farmers-market-fruit-and-vegetable.jpg");
		  background-repeat: no-repeat;
		}
	</style>
	-->
</head>
<body style="background-color:offwhite;">
    <center>
        <h1>Farm fresh Fruits and Vegetables from Tiwari's</h1>
        <h3 style="color:brown;">| Bridging the gap between producers and consumers | Organic/Natural/Safe-to-eat fruits and vegetables sold directly at your door | </h3>
        <h2>
            <a href="/VegitableStore/new">Add New Items</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/VegitableStore/list">List All Items</a>
             
        </h2>
    </center>
    <div align="center" >
        <table border="1" cellpadding="5">
            <caption><h2>Categories Lineup</h2></caption>
            <tr>
                <th>Product ID</th>
                <th>Item</th>
                <th>Category</th>
                <th>Price/ Kg</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                        <a href="/VegitableStore/edit?id=<c:out value='${book.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/VegitableStore/delete?id=<c:out value='${book.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>  
    <center>
    	<br><img align="center" src="https://chinmaystorageaccount.blob.core.windows.net/farmer-market/Fresh-farmers-market-fruit-and-vegetable.jpg" />
    </center>   
</body>
</html>