package top.wsuo.web;

import top.wsuo.bean.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BooksServlet", urlPatterns = "/jsp/books.do")
public class BooksServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> list = new ArrayList<>();
        list.add(new Book("lsu-2020-08", "Java从入门到入土", 30));
        list.add(new Book("lsu-2020-08", "JavaScript从入门到入土", 30));
        list.add(new Book("lsu-2020-08", "GoLang从入门到入土", 30));
        request.setAttribute("books", list);
        request.getRequestDispatcher("books.jsp").forward(request, response);
    }
}
