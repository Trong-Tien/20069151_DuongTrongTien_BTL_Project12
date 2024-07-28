package service;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.User;
import dao.PasswordUtil;
import dao.UserDAO;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();

        try {
            User user = userDAO.getUserByEmail(email);

            if (user != null && PasswordUtil.checkPassword(password, user.getPassword())) {
                // Đăng nhập thành công
                HttpSession session = request.getSession();
                session.setAttribute("user", email);
                response.sendRedirect("index.jsp"); // Redirect to home page after successful login
            } else {
                // Đăng nhập thất bại
                request.setAttribute("error", "Invalid email or password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In ra chi tiết lỗi
            request.setAttribute("error", "An error occurred while logging in. Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
