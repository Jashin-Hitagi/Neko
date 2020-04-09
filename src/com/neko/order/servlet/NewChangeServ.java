package com.neko.order.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;
import com.neko.order.biz.OrderBiz;
import com.neko.order.biz.impl.OrderBizImpl;
import com.neko.order.util.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NewChangeServ",urlPatterns = "/newChange.do")
public class NewChangeServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");


        String f_id = request.getParameter("f_id");
        FilghtBiz filghtBiz = new FilghtBizImpl();
        Filght filght = filghtBiz.findByid(f_id);

        HttpSession session = request.getSession();
        Order oldOrder = (Order)session.getAttribute("order");
        Order newOrder = new Order(filght,oldOrder.getO_type(),oldOrder.getAmount(),oldOrder.getU_name(),"审核",oldOrder.getU_id());

        OrderBiz orderBiz = new OrderBizImpl();
        orderBiz.addChangeOrder("改"+oldOrder.getO_id(),filght,newOrder.getU_name(),newOrder.getAmount(),newOrder.getO_type(),newOrder.getTotal_price(),newOrder.getTip(),newOrder.getU_id());
        orderBiz.apply(oldOrder.getO_id(),"待改签");
        PrintWriter out = response.getWriter();
        out.print("<script>alert('申请改签成功!');location.href='myOrder.do'</script>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
