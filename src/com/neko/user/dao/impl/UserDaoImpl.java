package com.neko.user.dao.impl;

import com.neko.user.dao.UserDao;
import com.neko.user.util.User;
import com.neko.util.BaseDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public User login(String u_id, String u_pwd) {
        User u = null;
        String sql = "select * from neko_user where u_id=? and u_pwd=?";
        super.query(sql,u_id,u_pwd);
        try {
            while (rs.next()){
                u = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public void registered(User u) {
        String sql="insert into neko_user values(?,?,?,?,?)";
        super.update(sql,u.getU_id(),u.getU_pwd(),u.getU_name(),u.getSex(),u.getU_type());
    }

    @Override
    public List<User> findAll() {
        List<User> list = new ArrayList<>();
        String sql = "select u_id,u_pwd,u_name,sex from neko_user where u_type=1";
        super.query(sql);
        try {
            while (rs.next()){
                User u = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
                list.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void delete(String u_id) {
        String sql = "delete from neko_user where u_id=?";
        super.update(sql,u_id);
    }

    @Override
    public void changePassword(String u_id,String u_pwd) {
        String sql = "update neko_user set u_pwd=? where u_id=?";
        super.update(sql,u_pwd,u_id);
    }
}
