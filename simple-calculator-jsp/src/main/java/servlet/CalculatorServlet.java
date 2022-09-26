package servlet;

import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import static model.Calculator.calculate;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result</h1>");
        try {
            float firstOp = Float.parseFloat(request.getParameter("firstOp"));
            float secondOp = Float.parseFloat(request.getParameter("secondOp"));
            char operand = request.getParameter("operator").charAt(0);
            float result = Calculator.calculate(firstOp, secondOp, operand);
            writer.println(firstOp + " " + operand + " " + secondOp + " = " + result);
        } catch (Exception e) {
            writer.println("<h3 style=\"color: red\"> Error! Reason: " + e.getMessage()+"</h3>");
        }
        writer.println("</html>");
    }
}
