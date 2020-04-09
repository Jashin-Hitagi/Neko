package com.neko.order.servlet;

import com.neko.order.biz.OrderBiz;
import com.neko.order.biz.impl.OrderBizImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NewCancelServ",urlPatterns = "/newCancel.do")
public class NewCancelServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String o_id = request.getParameter("o_id");
        OrderBiz orderBiz = new OrderBizImpl();
        orderBiz.apply(o_id,"待退订");

        PrintWriter out = response.getWriter();
        out.print("<script>alert('申请退票成功!');location.href='myOrder.do'</script>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
