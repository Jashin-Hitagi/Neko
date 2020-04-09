package com.neko.order.servlet;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;
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
import java.io.PrintWriter;

@WebServlet(name = "AddOrderServ",urlPatterns = "/addOrder.do")
public class AddOrderServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Filght filght = (Filght) session.getAttribute("f");
        User user = (User) session.getAttribute("u");
        int amount = Integer.parseInt(request.getParameter("amount"));
        String o_type = request.getParameter("o_type");


        if (amount>filght.getSeat()){
            out.print("<script>alert('余票不足，请重新购买!');location.href='findPage.do'</script>");
        }else {
            Order order = new Order(filght,user.getU_name(),amount,o_type);
            FilghtBiz filghtBiz = new FilghtBizImpl();
            filghtBiz.seat(amount,filght.getF_id());

            OrderBiz orderBiz = new OrderBizImpl();
            orderBiz.addOrder(filght,user.getU_name(),amount,o_type,order.getTotal_price(),order.getTip(),user.getU_id());
            out.print("<script>alert('购票成功!');location.href='findPage.do'</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
