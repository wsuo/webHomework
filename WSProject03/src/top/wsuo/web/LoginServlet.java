package top.wsuo.web;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/chapter03/login.do")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        System.out.println("请求的编码: " + request.getCharacterEncoding());
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        String message = "";
        System.out.println(request.getRequestURL());
        if (username == null || password == null) {
            message = "用户名或密码不能为空";
//            synchronized (session) {
            session.setAttribute("msg", message);
//            }
            System.out.println("用户名密码为空" + request.getRequestURL());
            response.sendRedirect("login.jsp");
        } else {
            if (username.equals("王硕") && password.equals("18103330219")) {
                User user = new User();
                user.setUsername(username);
                user.setPassword(password);
//                synchronized (session) {
                session.setAttribute("User", user);
//                }
                System.out.println(this.getServletContext().getRealPath("/chapter03/login.jsp"));
                System.out.println("用户名密码正确" + request.getRequestURL());
                request.getRequestDispatcher("welcome.jsp")
                        .forward(request, response);
            } else {
                message = "用户名或密码错误";
//                synchronized (session) {
                session.setAttribute("msg", message);
//                }
                System.out.println("用户名密码错误" + request.getRequestURL());
                response.sendRedirect("login.jsp");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
