package com.neko.filght.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Filght {

    private String f_id;
    private String s_place;
    private String a_place;
    private String s_airport;
    private String a_airport;
    private Date s_date;
    private Date a_date;
    private String s_time;
    private String a_time;
    private String company;
    private String f_type;
    private int price;
    private int seat;

    public Filght() {
    }

    public Filght(String f_id, String s_place, String a_place, String s_airport, String a_airport, Date s_date, Date a_date, String company, String f_type, int price, int seat) {
        this.f_id = f_id;
        this.s_place = s_place;
        this.a_place = a_place;
        this.s_airport = s_airport;
        this.a_airport = a_airport;
        this.s_date = s_date;
        this.a_date = a_date;
        this.company = company;
        this.f_type = f_type;
        this.price = price;
        this.seat = seat;

        SimpleDateFormat formattime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.s_time = formattime.format(s_date);
        this.a_time = formattime.format(a_date);
    }

    public Filght(String f_id, String s_place, String a_place, String s_airport, String a_airport, String s_time, String a_time, String company, String f_type, int price, int seat) {
        this.f_id = f_id;
        this.s_place = s_place;
        this.a_place = a_place;
        this.s_airport = s_airport;
        this.a_airport = a_airport;
        this.s_time = s_time;
        this.a_time = a_time;
        this.company = company;
        this.f_type = f_type;
        this.price = price;
        this.seat = seat;
    }

    public String getF_id() {
        return f_id;
    }

    public void setF_id(String f_id) {
        this.f_id = f_id;
    }

    public String getS_place() {
        return s_place;
    }

    public void setS_place(String s_place) {
        this.s_place = s_place;
    }

    public String getA_place() {
        return a_place;
    }

    public void setA_place(String a_place) {
        this.a_place = a_place;
    }

    public String getS_airport() {
        return s_airport;
    }

    public void setS_airport(String s_airport) {
        this.s_airport = s_airport;
    }

    public String getA_airport() {
        return a_airport;
    }

    public void setA_airport(String a_airport) {
        this.a_airport = a_airport;
    }

    public Date getS_date() {
        return s_date;
    }

    public void setS_date(Date s_date) {
        this.s_date = s_date;
    }

    public Date getA_date() {
        return a_date;
    }

    public void setA_date(Date a_date) {
        this.a_date = a_date;
    }

    public String getS_time() {
        return s_time;
    }

    public void setS_time(String s_time) {
        this.s_time = s_time;
    }

    public String getA_time() {
        return a_time;
    }

    public void setA_time(String a_time) {
        this.a_time = a_time;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getF_type() {
        return f_type;
    }

    public void setF_type(String f_type) {
        this.f_type = f_type;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }
}
