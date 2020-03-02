package top.wsuo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

/*
    编写一个Servlet1，当用户请求该Servlet时，
    显示用户于几点几分从哪个IP(Internet Protocol)地址连线至服务器，
    以及发出的查询字符串(Query String)。
 */
@WebServlet(name = "Servlet1", urlPatterns = "/servlet1")
public class Servlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //拼装时间
        Date date = new Date();
        int hours = date.getHours();
        int minutes = date.getMinutes();
        StringBuilder sb = new StringBuilder();
        sb.append(hours);
        sb.append('点');
        sb.append(minutes);
        sb.append('分');

        //存到请求域中
        request.setAttribute("host", request.getServerName());
        request.setAttribute("time", sb.toString());
        request.setAttribute("para", request.getParameter("select"));

        //转发
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
