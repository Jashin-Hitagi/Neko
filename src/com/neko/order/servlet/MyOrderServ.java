package com.neko.order.servlet;

import com.neko.order.biz.OrderBiz;
import com.neko.order.biz.impl.OrderBizImpl;
import com.neko.order.util.Order;
import com.neko.user.util.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MyOrderServ",urlPatterns = "/myOrder.do")
public class MyOrderServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("u");

        OrderBiz orderBiz = new OrderBizImpl();
        List<Order> list1 = orderBiz.findOrder(u.getU_id());
        List<Order> list = new ArrayList<>();
        for (Order o:list1){
            if (o.getTip().equals("待乘机")){
                list.add(o);
            }
        }

        session.setAttribute("o_list",list);
        request.getRequestDispatcher("myOrder.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
