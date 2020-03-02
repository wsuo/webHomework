package top.wsuo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
    1.编写SimpleTestServlet来计算考试成绩 (计算规则为做对一题得25分)，
    2.并跳转到score.jsp页面上显示成绩，
    3.在score.jsp中要添加一个链接可以跳转到questions.jsp。
    （注意：获取的参数包含的多个值用request.getParameterValues方法，请通过API查找该方法的用法）
 */
@WebServlet(name = "simpleTest", urlPatterns = "/simpleTest")
public class SimpleTestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int total = 0;
        String quest1 = request.getParameter("quest1");//获取值
        String quest2 = request.getParameter("quest2");
        String[] quest3 = request.getParameterValues("quest3");//获取数组
        String quest4 = request.getParameter("quest4");
        total = appear(quest1, "1") + appear(quest2, "3");
        //判断多选题
        if (quest3.length == 2) {
            if (quest3[0].equals("1") && quest3[1].equals("3")) {
                total += 25;
            }
        }

        if (quest4.toLowerCase().equals("httpservlet")) {
            total += 25;
        }
        request.setAttribute("score", total);//将分数存储在请求域中
        System.out.println(total);
        request.getRequestDispatcher("/score.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private int appear(String str, String i) {
        if (str.equals(i)) {
            return 25;
        }
        return 0;
    }
}
