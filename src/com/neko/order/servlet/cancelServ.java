package com.neko.order.servlet;

import com.neko.order.util.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "cancelServ",urlPatterns = "/cancel.do")
public class cancelServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        HttpSession session=request.getSession();
        String o_id = request.getParameter("id");
        List<Order> list = (List<Order>)session.getAttribute("o_list");
        Order order = new Order();
        for (Order o:list){
            if (o.getO_id().equals(o_id)){
                order = o;
            }
        }
        session.setAttribute("order",order);
        request.getRequestDispatcher("cancel.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
