package com.neko.user.util;

public class User {

    private String u_id;
    private String u_pwd;
    private String u_name;
    private String sex;
    private int u_type;

    public User() {
    }


    public User(String u_id, String u_pwd, String u_name, String sex) {
        this.u_id = u_id;
        this.u_pwd = u_pwd;
        this.u_name = u_name;
        this.sex = sex;
        this.u_type = 1;
    }

    public User(String u_id, String u_pwd, String u_name, String sex, int u_type) {
        this.u_id = u_id;
        this.u_pwd = u_pwd;
        this.u_name = u_name;
        this.sex = sex;
        this.u_type = u_type;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getU_pwd() {
        return u_pwd;
    }

    public void setU_pwd(String u_pwd) {
        this.u_pwd = u_pwd;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getU_type() {
        return u_type;
    }

    public void setU_type(int u_type) {
        this.u_type = u_type;
    }
}
