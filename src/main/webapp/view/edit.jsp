<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/27/2024
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Edit tour</title>

    <style>
        .message{
            color:green;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            background: whitesmoke;
            font-family: 'Poppins', sans-serif;

        }

        h1 {
            text-align: center;
        }

        form {
            height: 83%;
            width: 70%;
            background-color: white;
            padding: 15px;
            border-radius: 20px;
            margin-top: 60px;
        }

        .btn-primary, .btn-dark {
            width: 100%;
            border-radius: 50px;
            border: none;
        }
        .form-control {
            color: rgba(0, 0, 0, .87);
            border-bottom-color: rgba(0, 0, 0, 42);
            box-shadow: none !important;
            border: none;
            border-bottom: 1px solid;
            border-radius: 4px 4px 0;
        }

        .button {
            display: flex;
        }

        h4 {
            font-size: 2rem !important;
            font-weight: 700;
        }

        .form-label {
            font-weight: 800 !important;
        }

        @media only screen and (max-width: 870px) {
            form {
                width: 100% !important;
            }

            h4 {
                width: 100% !important;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <form class="mx-auto" method="post">
        <div>
            <label for="id" class="form-label">ID</label>
            <input type="text" class="form-control" id="id" name="id" value="${requestScope["tour"].getId()}">
        </div>
        <div>
            <label for="code" class="form-label">Code</label>
            <input type="text" class="form-control" id="code" name="code" value="${requestScope["tour"].getCode()}">
        </div>
        <div>
            <label for="destination" class="form-label">Destination</label>
            <input type="text" class="form-control" id="destination" name="destination" value="${requestScope["tour"].getDestination()}">
        </div>
        <div>
            <label for="img" class="form-label">Image</label>
            <input type="text" class="form-control" id="img" name="img" value="${requestScope["tour"].getImg()}">
        </div>
        <div>
            <label for="price" class="form-label">Price</label>
            <input type="text" class="form-control" id="price" name="price" value="${requestScope["tour"].getPrice()}">
        </div>

        <div class="button">
            <button type="submit" class="btn btn-primary mt-4" value="Update tour">Update tour</button>
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
