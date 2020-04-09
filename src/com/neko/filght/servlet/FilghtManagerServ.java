package com.neko.filght.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilghtManagerServ",urlPatterns = "/filghtManager.do")
public class FilghtManagerServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Integer index = 1;
        Integer size = 6;
        String indexStr = request.getParameter("f_index");
        if (indexStr!=null && indexStr.length()>0){
            index = Integer.parseInt(indexStr);
        }

        FilghtBiz filghtBiz = new FilghtBizImpl();
        int count = filghtBiz.count();
        int total = count%size==0?count/size:count/size+1;
        List<Filght> f_list = filghtBiz.findPage(index,size);

        HttpSession session =request.getSession();
        session.setAttribute("f_list",f_list);
        session.setAttribute("f_index",index);
        session.setAttribute("f_total",total);
        request.getRequestDispatcher("filghtManager.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
