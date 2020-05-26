<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Online Farmers Market</title>
    <link rel = "icon" href =  "https://chinmaystorageaccount.blob.core.windows.net/farmer-market/icon-fruits.png"   type = "image/x-icon">
    <!--  
    <style> 
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
        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${book != null}">
                        Edit Items
                    </c:if>
                    <c:if test="${book == null}">
                        Add New Items
                    </c:if>
                </h2>
            </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
            <tr>
                <th>Item: </th>
                <td>
                    <input type="text" name="title" size="45"
                            value="<c:out value='${book.title}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Category: </th>
                <td>
                    <input type="text" name="author" size="45"
                            value="<c:out value='${book.author}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Price/ Kg: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${book.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
        <br><img align="center" src="https://chinmaystorageaccount.blob.core.windows.net/farmer-market/Fresh-farmers-market-fruit-and-vegetable.jpg" />
    </div>     
</body>
</html>