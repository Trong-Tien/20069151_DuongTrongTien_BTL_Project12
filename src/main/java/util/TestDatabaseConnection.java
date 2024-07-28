package util;

import connect.DatabaseConnection;
import java.sql.Connection;

public class TestDatabaseConnection {
    public static void main(String[] args) {
        Connection connection = null;
        try {
            connection = DatabaseConnection.getConnection();
            if (connection != null && !connection.isClosed()) {
                System.out.println("Database connection test successful.");
            } else {
                System.out.println("Database connection test failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("An error occurred during database connection test.");
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
