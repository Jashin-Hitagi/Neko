package com.neko.user.biz.impl;

import com.neko.user.biz.UserBiz;
import com.neko.user.dao.UserDao;
import com.neko.user.dao.impl.UserDaoImpl;
import com.neko.user.util.User;

import java.util.List;

public class UserBizImpl implements UserBiz{

  UserDao user = new UserDaoImpl();

    @Override
    public User login(String u_id, String u_pwd) {
        User u = user.login(u_id,u_pwd);
        return u;
    }

    @Override
    public void registered(User u) {
        user.registered(u);
    }

    @Override
    public List<User> findAll() {
        List<User> list = user.findAll();
        return list;
    }

    @Override
    public void delete(String u_id) {
        user.delete(u_id);
    }

    @Override
    public void changePassword(String u_id, String u_pwd) {
        user.changePassword(u_id,u_pwd);
    }
}
