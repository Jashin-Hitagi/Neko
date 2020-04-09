package com.neko.order.servlet;

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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "cancelApplyServ",urlPatterns = "/cancelApply.do")
public class cancelApplyServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        OrderBiz orderBiz = new OrderBizImpl();
        List<Order> list1 = orderBiz.findAll();
        List<Order> list = new ArrayList<>();
        for (Order o:list1){
            if (o.getTip().equals("待退订")){
                list.add(o);
            }
        }

        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        request.getRequestDispatcher("cancelApply.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
