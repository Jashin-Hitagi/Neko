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
import java.io.PrintWriter;

@WebServlet(name = "userPasswordServ",urlPatterns = "/userPassword.do")
public class userPasswordServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String old_u_pwd = request.getParameter("old_u_pwd");
        String new_u_pwd = request.getParameter("new_u_pwd");
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("u");

        PrintWriter out = response.getWriter();
        UserBiz userBiz = new UserBizImpl();
        if (old_u_pwd.equals(user.getU_pwd())){
            userBiz.changePassword(user.getU_id(),new_u_pwd);
            out.print("<script>alert('修改密码成功，请重新登录!');location.href='exit.do'</script>");
        }else {
            out.print("<script>alert('密码错误，请重新输入!')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
