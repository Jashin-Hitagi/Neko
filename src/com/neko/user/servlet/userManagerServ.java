package com.neko.user.servlet;

import com.neko.user.biz.UserBiz;
import com.neko.user.biz.impl.UserBizImpl;
import com.neko.user.util.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "userManagerServ",urlPatterns = "/userManager.do")
public class userManagerServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        UserBiz userBiz = new UserBizImpl();
        List<User> list = userBiz.findAll();

        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        request.getRequestDispatcher("userManager.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
