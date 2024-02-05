<%@ page import="com.registertesting.model.Register" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Thank You</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 30px;
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thank you for registering!</h1>

        <%
            Register registeredUser = (Register) request.getAttribute("registeredUser");
            if (registeredUser != null) {
        %>
            <table>
                <tr>
                    <th>Field</th>
                    <th>Information</th>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%= registeredUser.getFirstname() %> <%= registeredUser.getSecondname() %></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%= registeredUser.getEmail() %></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><%= registeredUser.getPassword() %></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><%= registeredUser.getPhoneno() %></td>
                </tr>
            </table>
        <%
            }
        %>
    </div>
</body>
</html>
