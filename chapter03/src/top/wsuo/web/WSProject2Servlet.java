package top.wsuo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "WSProject2Servlet", urlPatterns = "/wsProject2")
public class WSProject2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float radius = Integer.parseInt(request.getParameter("radius"));
        float height = Integer.parseInt(request.getParameter("height"));
        String area = Double.toString(2 * Math.PI * radius * radius + Math.PI * 2 * radius * height);
        String volume = Double.toString(Math.PI * radius * radius * height);
        request.setAttribute("area", area);
        request.setAttribute("volume", volume);
        request.getRequestDispatcher("/math.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
