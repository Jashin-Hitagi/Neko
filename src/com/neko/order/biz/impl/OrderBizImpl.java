package com.neko.order.biz.impl;

import com.neko.filght.util.Filght;
import com.neko.order.biz.OrderBiz;
import com.neko.order.dao.OrderDao;
import com.neko.order.dao.impl.OrderDaoImpl;
import com.neko.order.util.Order;

import java.util.List;

public class OrderBizImpl implements OrderBiz {

    OrderDao order = new OrderDaoImpl();

    @Override
    public void addOrder(Filght filght, String u_name, int amount, String o_type, int total_price, String tip,String u_id) {
        order.addOrder(filght,u_name,amount,o_type,total_price,tip,u_id);
    }

    @Override
    public List<Order> findOrder(String u_id) {
        List<Order> list = order.findOrder(u_id);
        return  list;
    }

    @Override
    public void apply(String o_id, String tip) {
        order.apply(o_id,tip);
    }

    @Override
    public void addChangeOrder(String o_id, Filght filght, String u_name, int amount, String o_type, int total_price, String tip, String u_id) {
        order.addChangeOrder(o_id,filght,u_name,amount,o_type,total_price,tip,u_id);
    }

    @Override
    public List<Order> findAll() {
        List<Order> list = order.findAll();
        return list;
    }

    @Override
    public void delete(String o_id) {
        order.delete(o_id);
    }

    @Override
    public void change(String o_id, String new_o_id) {
        order.change(o_id,new_o_id);
    }
}
