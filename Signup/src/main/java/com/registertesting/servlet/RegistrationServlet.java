package com.registertesting.servlet;

import com.registertesting.model.Register;
import com.registertesting.dao.RegisterDAO;
import com.registertesting.utils.ValidationUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;	


public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String firstname = request.getParameter("firstname");
        String secondname = request.getParameter("secondname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneno = request.getParameter("phoneno");

        // Validate form data
        if (ValidationUtils.isValidEmail(email) && ValidationUtils.isValidPhone(phoneno)) {
            // Create a Register object
            Register register = new Register();
            register.setFirstname(firstname);
            register.setSecondname(secondname);
            register.setEmail(email);
            register.setPassword(password);
            register.setPhoneno(phoneno);

            // Save to database
            RegisterDAO.saveClient(register);

            // Set the registered user object as a request attribute
            request.setAttribute("registeredUser", register);

            // Forward to Thank You page
            request.getRequestDispatcher("thankYou.jsp").forward(request, response);
        } else {
            // Handle invalid data, perhaps redirect back to the registration page with an error message
            response.sendRedirect("registration.jsp?error=invalid");
        }
    }
}