package com.neko.user.servlet;

import com.neko.user.biz.UserBiz;
import com.neko.user.biz.impl.UserBizImpl;
import com.neko.user.util.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registeredServ",urlPatterns = "/registered.do")
public class registeredServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String u_id = request.getParameter("u_id");
        String u_pwd = request.getParameter("u_pwd");
        String u_name = request.getParameter("u_name");
        String sex = request.getParameter("sex");

        User u = new User(u_id,u_pwd,u_name,sex);
        UserBiz userBiz = new UserBizImpl();
        userBiz.registered(u);
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
