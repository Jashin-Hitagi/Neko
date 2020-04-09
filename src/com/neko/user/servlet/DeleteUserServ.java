package com.neko.user.servlet;

import com.neko.user.biz.UserBiz;
import com.neko.user.biz.impl.UserBizImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUserServ",urlPatterns = "/deleteUser.do")
public class DeleteUserServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String u_id = request.getParameter("id");
        UserBiz userBiz = new UserBizImpl();
        userBiz.delete(u_id);

        request.getRequestDispatcher("userManager.do").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
