package com.neko.user.biz;

import com.neko.user.util.User;

import java.util.List;

public interface UserBiz {

    User login(String u_id, String u_pwd);

    void registered(User u);

    List<User> findAll();

    void delete(String u_id);

    void changePassword(String u_id,String u_pwd);

}
