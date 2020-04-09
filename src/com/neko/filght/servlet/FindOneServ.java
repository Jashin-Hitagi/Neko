package com.neko.filght.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FindOneServ",urlPatterns = "/findOne.do")
public class FindOneServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String f_id = request.getParameter("id");
        System.out.println(f_id);
        FilghtBiz filghtBiz = new FilghtBizImpl();
        Filght filght = filghtBiz.findByid(f_id);

        JSONObject obj =JSONObject.fromObject(filght);
        PrintWriter out = response.getWriter();
        out.print(obj);
        System.out.println(obj);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
