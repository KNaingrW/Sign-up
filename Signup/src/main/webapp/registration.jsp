<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .image-container {
            width: 500px;
            height: 500px;
            margin-top: 10px;
            flex-shrink: 0; /* Prevents the image from shrinking */
            margin-left: 20px; /* Add margin to separate form and image */
        }

        img {
            width: 100%;
            border-radius: 8px;
        }
    </style>
</head>
<body>
 <div class="image-container">
        <img src="sign-up-4922762-4097209.png" alt="Beautiful Image">
    </div>
    <div class="container">
        <h1>Registration Form</h1>
        <form action="RegistrationServlet" method="post">
            <input type="text" name="firstname" placeholder="First Name" required>
            <input type="text" name="secondname" placeholder="Second Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="tel" name="phoneno" placeholder="Phone Number" pattern="[0-9]{10}" required>
            <button type="submit">Register</button>
        </form>
    </div>

    </body>
</html>