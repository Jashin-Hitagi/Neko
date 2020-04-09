package com.neko.user.dao;

import com.neko.user.util.User;

import java.util.List;

public interface UserDao {

    User login(String u_id, String u_pwd);

    void registered(User u);

    List<User> findAll();

    void delete(String u_id);

    void changePassword(String u_id,String u_pwd);

}
