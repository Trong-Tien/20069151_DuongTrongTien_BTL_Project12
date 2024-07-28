package service;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.User;
import dao.PasswordUtil;
import dao.UserDAO;


public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();

        try {
            // Kiểm tra xem người dùng đã tồn tại hay chưa
            if (userDAO.getUserByEmail(email) != null) {
                request.setAttribute("error", "Email already registered. Please use a different email.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            // Mã hóa mật khẩu
            String hashedPassword = PasswordUtil.hashPassword(password);
            User newUser = new User(email, hashedPassword);

            // Đăng ký người dùng
            boolean isRegistered = userDAO.registerUser(newUser);

            if (isRegistered) {
                // Đăng ký thành công
                request.setAttribute("success", "Registration successful. Please log in.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                // Đăng ký thất bại
                request.setAttribute("error", "An error occurred during registration. Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred during registration. Please try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
