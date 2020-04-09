package com.neko.order.util;

import com.neko.filght.util.Filght;

public class Order {

    private String o_id;
    Filght filght = new Filght();
    private String o_type;
    private int amount;
    private int total_price;
    private String u_name;
    private String tip;
    private String u_id;

    public Order() {
    }

    public Order(Filght filght,String u_name,int amount,String o_type) {
        this.filght = filght;
        this.o_type = o_type;
        this.amount = amount;
        this.u_name = u_name;
        this.total_price = amount*filght.getPrice();
        this.tip = "待乘机";
    }

    public Order(Filght filght, String o_type, int amount, String u_name, String tip, String u_id) {
        this.filght = filght;
        this.o_type = o_type;
        this.amount = amount;
        this.u_name = u_name;
        this.tip = tip;
        this.u_id = u_id;
        this.total_price = amount*filght.getPrice();
    }

    public Order(String o_id, Filght filght, String o_type, int amount, int total_price, String u_name, String tip, String u_id) {
        this.o_id = o_id;
        this.filght = filght;
        this.o_type = o_type;
        this.amount = amount;
        this.total_price = total_price;
        this.u_name = u_name;
        this.tip = tip;
        this.u_id = u_id;
    }

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public Filght getFilght() {
        return filght;
    }

    public void setFilght(Filght filght) {
        this.filght = filght;
    }

    public String getO_type() {
        return o_type;
    }

    public void setO_type(String o_type) {
        this.o_type = o_type;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }
}
