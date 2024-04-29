<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/27/2024
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View tour</title>
</head>
<body>
    <h1>Tour details</h1>
    <p>
        <a href="/tours">Back to tour list</a>
    </p>

    <table>
        <tr>
            <td>ID: </td>
            <td>${requestScope["tour"].getId()}</td>
        </tr>

        <tr>
            <td>Code: </td>
            <td>${requestScope["tour"].getCode()}</td>
        </tr>

        <tr>
            <td>Destination: </td>
            <td>${requestScope["tour"].getDestination()}</td>
        </tr>

        <tr>
            <td>Price: </td>
            <td>${requestScope["tour"].getPrice()}</td>
        </tr>

        <tr>
            <td>Image: </td>
            <td>${requestScope["tour"].getImg()}</td>
        </tr>
    </table>
</body>
</html>
