package com.neko.filght.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddFilghtServ",urlPatterns = "/addFilght.do")
public class AddFilghtServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String f_id = request.getParameter("f_id");
        String s_place = request.getParameter("s_place");
        String a_place = request.getParameter("a_place");
        String s_airport = request.getParameter("s_airport");
        String a_airport = request.getParameter("a_airport");
        String s_time = request.getParameter("s_time");
        String a_time = request.getParameter("a_time");
        String company = request.getParameter("company");
        String f_type = request.getParameter("f_type");
        int price = Integer.parseInt(request.getParameter("price"));
        int seat = Integer.parseInt(request.getParameter("seat"));
        Filght filght = new Filght(f_id,s_place,a_place,s_airport,a_airport,s_time,a_time,company,f_type,price,seat);

        FilghtBiz filghtBiz = new FilghtBizImpl();
        filghtBiz.newFilght(filght);
        PrintWriter out = response.getWriter();
        out.print("<script>alert('添加完成!');location.href='filghtManager.do'</script>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
