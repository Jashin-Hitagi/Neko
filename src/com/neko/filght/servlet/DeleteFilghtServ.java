package com.neko.filght.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteFilghtServ",urlPatterns = "/delete.do")
public class DeleteFilghtServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String f_id = request.getParameter("id");
        FilghtBiz filghtBiz = new FilghtBizImpl();
        filghtBiz.delete(f_id);
        request.getRequestDispatcher("filghtManager.do").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
