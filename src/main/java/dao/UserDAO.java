package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.DatabaseConnection;
import controller.User;

public class UserDAO {
    // Phương thức để lấy người dùng dựa trên email
    public User getUserByEmail(String email) throws SQLException {
        User user = null;
        String query = "SELECT * FROM users WHERE email = ?";
        
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    user = new User(resultSet.getString("email"), resultSet.getString("password"));
                }
            }
        }
        return user;
    }

    // Phương thức để đăng ký người dùng mới
    public boolean registerUser(User user) throws SQLException {
        String query = "INSERT INTO users (email, password) VALUES (?, ?)";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            int result = preparedStatement.executeUpdate();
            return result > 0; // Trả về true nếu có ít nhất một hàng bị ảnh hưởng
        }
    }

	public boolean registerUser1(User newUser) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean validateUser(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}
}
