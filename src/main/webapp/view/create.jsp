<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/27/2024
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="/css/create.css">
    <title>Create new tour</title>
</head>
<body>

    <div class="container">
        <form class="mx-auto" method="post">
            <h4 class="text-center">Tour information</h4>
            <div>
                <label for="id" class="form-label">ID</label>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            <div>
                <label for="code" class="form-label">Code</label>
                <input type="text" class="form-control" id="code" name="code">
            </div>
            <div>
                <label for="destination" class="form-label">Destination</label>
                <input type="text" class="form-control" id="destination" name="destination">
            </div>
            <div>
                <label for="img" class="form-label">Image</label>
                <input type="text" class="form-control" id="img" name="img">
            </div>
            <div>
                <label for="price" class="form-label">Price</label>
                <input type="text" class="form-control" id="price" name="price">
            </div>

            <div class="button">
                <button type="submit" class="btn btn-primary mt-4" value="Create tour">Create tour</button>
                <button type="button" class="btn btn-dark mt-4" onclick="goToTourList()">Back to tour list</button>
            </div>

            <div class="show-message">
                <p>
                    <c:if test='${requestScope["message"] != null}'>
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script>
        function goToTourList() {
            window.location.href = "/tours";
        }
    </script>
</body>
</html>
