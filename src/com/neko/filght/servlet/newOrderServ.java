package com.neko.filght.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;
import com.neko.user.util.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "newOrderServ",urlPatterns = "/newOrder.do")
public class newOrderServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String f_id = request.getParameter("id");
        FilghtBiz filghtBiz = new FilghtBizImpl();
        Filght filght = filghtBiz.findByid(f_id);

        HttpSession session = request.getSession();
        User u =(User) session.getAttribute("u");
        session.setAttribute("f",filght);
        request.getRequestDispatcher("newOrder.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
