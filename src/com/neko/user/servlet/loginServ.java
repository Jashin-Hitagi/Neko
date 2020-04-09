package com.neko.user.servlet;

import com.neko.user.biz.UserBiz;
import com.neko.user.biz.impl.UserBizImpl;
import com.neko.user.util.User;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginServ",urlPatterns = "/login.do")
public class loginServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String u_id = request.getParameter("u_id");
        String u_pwd = request.getParameter("u_pwd");

        UserBiz userBiz = new UserBizImpl();
        User u  = userBiz.login(u_id,u_pwd);

        HttpSession session = request.getSession();
        session.setAttribute("u",u);

        JSONObject obj = JSONObject.fromObject(u);
        PrintWriter print =response.getWriter();
        print.print(obj);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
