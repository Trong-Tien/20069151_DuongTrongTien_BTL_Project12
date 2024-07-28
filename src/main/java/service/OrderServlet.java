package service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý đơn hàng (lưu vào cơ sở dữ liệu, gửi email, v.v.)

        // Sau khi đơn hàng được xử lý thành công
        request.setAttribute("message", "Đặt hàng thành công! Cảm ơn bạn đã mua hàng.");
        request.getRequestDispatcher("blank.jsp").forward(request, response);
    }
}
