package com.neko;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.biz.impl.FilghtBizImpl;
import com.neko.filght.util.Filght;
import com.neko.order.biz.OrderBiz;
import com.neko.order.biz.impl.OrderBizImpl;
import com.neko.user.biz.UserBiz;
import com.neko.user.biz.impl.UserBizImpl;
import com.neko.user.util.User;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class test {

    public static void main(String[] args) {
       /* FilghtBiz filghtBiz = new FilghtBizImpl();
        List<Filght> list = filghtBiz.findByCity("北","南",1,4);
        for (Filght f:list){
            SimpleDateFormat formattime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time = formattime.format(f.getA_date());
            System.out.println(f.getA_date());
            System.out.println(time);
            System.out.println(f.getF_id());
        }*/

    /*   Date date = new Date();
        System.out.println(date);
        java.sql.Date time = new java.sql.Date(date.getTime());
        System.out.println(time);*/

        /*OrderBiz orderBiz = new OrderBizImpl();
        String new_o_id = "82";
        orderBiz.change("改82",new_o_id);*/

       /* UserBiz userBiz = new UserBizImpl();
        List<User> list = userBiz.findAll();
        for(User u:list){
            System.out.println(u.getU_name());
        }*/
    /*
       Date date = new Date();
        String time = "2019-10-21 13:17:00";
        SimpleDateFormat formattime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            date = formattime.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        System.out.println(date);*/

     Filght filght = new Filght("KN5905","北京","南京","南苑机场","禄口机场T2","2019-09-23 09:40:00","2019-09-23 15:55:00","中国联合航空","波音737(中)",582,51);
     FilghtBiz filghtBiz = new FilghtBizImpl();
     filghtBiz.newFilght(filght);
    }

}
