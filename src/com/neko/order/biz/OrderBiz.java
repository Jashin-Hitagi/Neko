package com.neko.order.biz;

import com.neko.filght.util.Filght;
import com.neko.order.util.Order;

import java.util.List;

public interface OrderBiz {

    void  addOrder(Filght filght, String u_name, int amount, String o_type, int total_price, String tip,String u_id);

    List<Order> findOrder(String u_id);

    List<Order> findAll();

    void apply(String o_id,String tip);

    void  addChangeOrder(String o_id,Filght filght, String u_name, int amount, String o_type,int total_price,String tip,String u_id);

    void delete(String o_id);

    void change(String o_id,String new_o_id);

}
