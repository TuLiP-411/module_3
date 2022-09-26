import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculateServlet", value = "/display-discount")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("product");
        float price = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount"));

        double amount = price * discountPercent * 0.01;
        double discountPrice = price - amount;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h2>Product Description: " + product + "</h2>");
        writer.println("<h2>Discount Amount: " + amount + "</h2>");
        writer.println("<h2>Discount Price: " + discountPrice + "</h2>");
        writer.println("</html>");

    }
}
