package com.neko.order.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
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
import java.util.List;

@WebServlet(name = "ChangeOrderServ",urlPatterns = "/changeOrder.do")
public class ChangeOrderServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        OrderBiz orderBiz = new OrderBizImpl();
        FilghtBiz filghtBiz = new FilghtBizImpl();
        HttpSession session=request.getSession();
        String o_id = request.getParameter("id");

        List<Order> list = orderBiz.findAll();
        Order old_order = new Order();
        Order new_order = new Order();
        for (Order o:list){
            if (o.getO_id().equals(o_id)){
                old_order = o;
            }
            if (o.getO_id().equals("改"+o_id)){
                new_order = o;
            }
        }

        filghtBiz.addSeat(old_order.getAmount(),old_order.getFilght().getF_id());
        filghtBiz.seat(new_order.getAmount(),new_order.getFilght().getF_id());
        String new_o_id = old_order.getO_id();
        orderBiz.delete(old_order.getO_id());
        orderBiz.apply(new_order.getO_id(),"待乘机");
        orderBiz.change(new_order.getO_id(),new_o_id);

        PrintWriter out = response.getWriter();
        out.print("<script>alert('审核通过!');location.href='changeApply.do'</script>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
