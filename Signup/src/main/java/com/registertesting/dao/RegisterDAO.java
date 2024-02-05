package com.registertesting.dao;
import com.registertesting.model.Register;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {
    public static void saveClient(Register register) {
        // Implement database insertion logic using JDBC
        try (Connection connection = DatabaseConnector.getConnection()) {
            String query = "INSERT INTO users (first_name, last_name, email, password, phone_number) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, register.getFirstname());
                preparedStatement.setString(2, register.getSecondname());
                preparedStatement.setString(3, register.getEmail());
                preparedStatement.setString(4, register.getPassword());
                preparedStatement.setString(5, register.getPhoneno());
                preparedStatement.executeUpdate();
                System.out.println("User registered successfully!");
            }
        } catch (SQLException e) {
            // Handle database-related exceptions
            System.err.println("Error saving client to the database:");
            e.printStackTrace();
        }
    }
}