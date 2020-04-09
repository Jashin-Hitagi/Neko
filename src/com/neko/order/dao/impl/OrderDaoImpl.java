package com.neko.order.dao.impl;

import com.neko.filght.util.Filght;
import com.neko.order.dao.OrderDao;
import com.neko.order.util.Order;
import com.neko.util.BaseDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl extends BaseDao implements OrderDao {

    @Override
    public void addOrder(Filght filght, String u_name, int amount, String o_type,int total_price,String tip,String u_id) {
        String sql = "insert into neko_order values(neko_order_id.NEXTVAL,?,?,?,?,?,?,?)";
        super.update(sql,filght.getF_id(),o_type,amount,total_price,u_name,tip,u_id);
    }

    @Override
    public void addChangeOrder(String o_id, Filght filght, String u_name, int amount, String o_type, int total_price, String tip, String u_id) {
        String sql = "insert into neko_order values(?,?,?,?,?,?,?,?)";
        super.update(sql,o_id,filght.getF_id(),o_type,amount,total_price,u_name,tip,u_id);
    }

    @Override
    public List<Order> findAll() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT o.*,f.s_place,f.a_place,f.s_airport,f.a_airport,f.s_time,f.a_time,f.company,f.f_type,f.price,f.seat  FROM neko_order o,neko_filght f WHERE o.f_id=f.f_id";
        super.query(sql);
        try {
            while (rs.next()){
                Filght filght = new Filght(rs.getString(2),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getTimestamp(13),
                        rs.getTimestamp(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getInt(17),
                        rs.getInt(18));
                Order order = new Order(rs.getString(1),filght,
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                list.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        super.query(sql);
        return list;
    }

    @Override
    public List<Order> findOrder(String u_id) {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT o.*,f.s_place,f.a_place,f.s_airport,f.a_airport,f.s_time,f.a_time,f.company,f.f_type,f.price,f.seat  FROM neko_order o,neko_filght f WHERE o.f_id=f.f_id AND o.u_id=?";
        super.query(sql,u_id);
        try {
            while (rs.next()){
                Filght filght = new Filght(rs.getString(2),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getTimestamp(13),
                        rs.getTimestamp(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getInt(17),
                        rs.getInt(18));
                Order order = new Order(rs.getString(1),filght,
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                list.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        super.query(sql,u_id);
        return list;
    }

    @Override
    public void apply(String o_id,String tip) {
        String sql = "update neko_order set tip=? where o_id=?";
        super.update(sql,tip,o_id);
    }

    @Override
    public void delete(String o_id) {
        String sql = "delete from neko_order where o_id=?";
        super.update(sql,o_id);
    }

    @Override
    public void change(String o_id, String new_o_id) {
        String sql = "update neko_order set o_id=? where o_id=?";
        super.update(sql,new_o_id,o_id);
    }
}
