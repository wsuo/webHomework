package top.wsuo.chapter03;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet2", urlPatterns = "loginServlet02")
public class LoginServlet2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("王硕") && password.equals("18103330219")) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            HttpSession session = request.getSession();
            synchronized (session) {
                session.setAttribute("User", user);
            }
            request.getRequestDispatcher("/chapter03/welcome.jsp")
                    .forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
