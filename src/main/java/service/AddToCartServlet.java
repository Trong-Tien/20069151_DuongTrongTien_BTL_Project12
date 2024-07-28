package service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");

        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        
        Product product = new Product(id, name, price);
        cart.add(product);
        session.setAttribute("cart", cart);

        // Calculate cart total
        double cartTotal = cart.stream().mapToDouble(p -> Double.parseDouble(p.getPrice().replace("$", "").replace(",", ""))).sum();
        session.setAttribute("cartTotal", String.format("$%.2f", cartTotal));

        response.getWriter().write("Product added to cart");
    }

    private class Product {
        private String id;
        private String name;
        private String price;
        private int quantity; // Add quantity if needed

        public Product(String id, String name, String price) {
            this.id = id;
            this.name = name;
            this.price = price;
            this.quantity = 1; // Default quantity
        }

		public String getPrice() {
			// TODO Auto-generated method stub
			return null;
		}

        // Getters and Setters
    }
}
