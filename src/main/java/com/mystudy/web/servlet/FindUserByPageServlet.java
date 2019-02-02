package com.mystudy.web.servlet;

import com.mystudy.domian.PageBean;
import com.mystudy.domian.User;
import com.mystudy.service.UserService;
import com.mystudy.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/findUserByPageServlet")
public class FindUserByPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        //1.获取参数
        String currentPage = request.getParameter("currentPage");
        String rows = request.getParameter("rows");

        if (currentPage == null || "".equals(currentPage)) {
            currentPage = "1";
        }
        if (rows == null || "".equals(rows)) {
            rows = "5";
        }

        //获取条件查询参数
        Map<String, String[]> condition = request.getParameterMap();

        //2.调用service查询
        UserService userService = new UserServiceImpl();
        PageBean<User> pb = userService.findUserByPage(currentPage, rows, condition);
        System.out.println(pb);

        //3.将PageBean存入request
        request.setAttribute("pb", pb);
        request.setAttribute("condition", condition);//将查询条件存入request域

        //4.转发到list.jsp
        request.getRequestDispatcher("/list.jsp").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
