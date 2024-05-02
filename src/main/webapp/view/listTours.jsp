<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/27/2024
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="/css/listTour.css">
    <title>Tour list</title>
</head>
<body>
    <div class="header">
        <h3>Tour list</h3>
        <button onclick="window.location.href='/tours?action=create'"><i class="fa-solid fa-plus"></i> Create new tour</button>
    </div>


    <table class="table table-bordered">
        <thead class="table-dark" action="<%= request.getContextPath() %>">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Code</th>
            <th scope="col">Destination</th>
            <th scope="col">Price</th>
            <th scope="col">Image</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${requestScope["tours"]}' var="tour">
            <tr>
                <td>${tour.getId()}</td>
                <td>${tour.getCode()}</td>
                <td>${tour.getDestination()}</td>
                <td>${tour.getPrice()} VND</td>
                <td><img src="${tour.getImg()}" alt="Hình ảnh của tour ${tour.destination}">
                </td>
                <td>
                    <button type="button" class="btn btn-info" onclick="window.location.href='/tours?action=edit&id=${tour.getId()}'">Edit</button>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" onclick="window.location.href='/tours?action=delete&id=${tour.getId()}'">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
