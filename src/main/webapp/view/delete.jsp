<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/27/2024
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Deleting tour</title>

    <style>
        form {
            text-align: center;
            margin-top: 100px;
        }

        table {
            margin-left: 600px;
        }
    </style>
</head>
<body>

    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Tour information</legend>
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
            </table>
            <button type="submit" class="btn btn-primary mt-4" value="Delete tour">Delete tour</button>
            <button type="button" class="btn btn-dark mt-4" onclick="goToTourList()">Back to tour list</button>
        </fieldset>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script>
        function goToTourList() {
            window.location.href = "/tours";
        }
    </script>
</body>
</html>
