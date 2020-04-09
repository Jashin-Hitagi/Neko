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

@WebServlet(name = "DeleteOrderServ",urlPatterns = "/deleteOrder.do")
public class DeleteOrderServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        HttpSession session=request.getSession();
        String o_id = request.getParameter("id");
        List<Order> list = (List<Order>)session.getAttribute("list");
        Order order = new Order();
        for (Order o:list){
            if (o.getO_id().equals(o_id)){
                order = o;
            }
        }

        FilghtBiz filghtBiz = new FilghtBizImpl();
        filghtBiz.addSeat(order.getAmount(),order.getFilght().getF_id());

        OrderBiz orderBiz = new OrderBizImpl();
        orderBiz.delete(o_id);

        PrintWriter out = response.getWriter();
        out.print("<script>alert('审核通过!');location.href='cancelApply.do'</script>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
