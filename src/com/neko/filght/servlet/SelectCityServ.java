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

@WebServlet(name = "SelectCityServ",urlPatterns = "/selectCity.do")
public class SelectCityServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String s_place1 = request.getParameter("s_place");
        String a_place1 = request.getParameter("a_place");
        String s_place=null;
        String a_place=null;

        HttpSession session = request.getSession();

        if (s_place1!=null){
            session.setAttribute("s_place",s_place1);
            s_place = (String)session.getAttribute("s_place");
        }else {
            s_place = (String)session.getAttribute("s_place");
        }

        if (a_place1!=null){
            session.setAttribute("a_place",a_place1);
            a_place = (String)session.getAttribute("a_place");
        }else {
            a_place = (String)session.getAttribute("a_place");
        }

        Integer index = 1;
        Integer size = 4;
        String indexStr =request.getParameter("f_index");
        if (indexStr!=null && indexStr.length()>0){
            index = Integer.parseInt(indexStr);
        }

        FilghtBiz filghtBiz = new FilghtBizImpl();
        List<Filght> list = filghtBiz.findByCity(s_place,a_place,index,size);
        int count = filghtBiz.countCity(s_place,a_place);
        int total = count%size==0?count/size:count/size+1;

        session.setAttribute("f_list",list);
        session.setAttribute("f_index",index);
        session.setAttribute("f_total",total);
        request.getRequestDispatcher("selectCity.jsp").forward(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
