package com.neko.filght.dao.impl;

import com.neko.filght.dao.FilghtDao;
import com.neko.filght.util.Filght;
import com.neko.util.BaseDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilghtDaoImpl extends BaseDao implements FilghtDao {

    @Override
    public List<Filght> findAll() {
        List<Filght> list = new ArrayList<>();
        String sql = "select * from neko_filght";
        try {
            while (rs.next()){
                Filght filght = new Filght(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getTimestamp(6),
                        rs.getTimestamp(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11));
                list.add(filght);
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
    public List<Filght> findPage(Integer index, Integer size) {
        List<Filght> list = new ArrayList<>();
        String sql = "select d.* from (select f.*,rownum r from neko_filght f) d where r>? and r<=?";
        super.query(sql,(index-1)*size,index*size);
        try {
            while (rs.next()){
                Filght filght = new Filght(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getTimestamp(6),
                        rs.getTimestamp(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11));
                list.add(filght);
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
    public Filght findByid(String f_id) {
        Filght filght = null;
        String sql = "select * from neko_filght where f_id = ?";
        super.query(sql,f_id);
        try {
            while (rs.next()){
                filght = new Filght(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getTimestamp(6),
                        rs.getTimestamp(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return filght;
    }

    @Override
    public List<Filght> findByCity(String s_place, String a_place, Integer index, Integer size) {
        List<Filght> list = new ArrayList<>();
        String sql = "select d.* from (select f.*,rownum r from neko_filght f where s_place like ? and a_place like ?) d where r>? and r<=?";
        super.query(sql,"%"+s_place+"%","%"+a_place+"%",(index-1)*size,index*size);
        try {
            while (rs.next()){
                Filght filght = new Filght(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getTimestamp(6),
                        rs.getTimestamp(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11));
                list.add(filght);
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
    public void update(Filght filght) {
        String sql = "update neko_filght set f_id=?,s_place=?,a_place?,s_airport=?,a_airport=?,s_time=?,a_time=?,company=?,f_type=?,price=?,seat=? where f_id=?";
        super.update(sql,filght.getF_id(),filght.getS_place(),filght.getA_place(),
                filght.getS_airport(),filght.getA_airport(),
                filght.getS_date(),filght.getA_date(),
                filght.getCompany(),filght.getF_type(),
                filght.getPrice(),filght.getSeat(),filght.getF_id());
    }

    @Override
    public void delete(String f_id) {
        String sql="delete from neko_filght where f_id=?";
        super.update(sql,f_id);
    }

    @Override
    public int count() {
        int count = 0;
        String sql = " select count(*) from neko_filght";
        super.query(sql);
        try {
            if (rs.next()){
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public int countCity(String s_place,String a_place) {
        int count = 0;
        String sql = "SELECT COUNT(*) from neko_filght where s_place like ? and a_place like ?";
        super.query(sql,"%"+s_place+"%","%"+a_place+"%");
        try {
            if (rs.next()){
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public void seat(int amount,String f_id) {
        String sql = "update neko_filght set seat=seat-? where f_id=?";
        super.update(sql,amount,f_id);
    }

    @Override
    public void addSeat(int amount, String f_id) {
        String sql = "update neko_filght set seat=seat+? where f_id=?";
        super.update(sql,amount,f_id);
    }

    @Override
    public void newFilght(Filght filght) {
        String sql = "insert into neko_filght values(?,?,?,?,?,to_date(?,'yyyy-MM-dd HH24:mi:ss'),to_date(?,'yyyy-MM-dd HH24:mi:ss'),?,?,?,?)";
        super.update(sql,filght.getF_id(),filght.getS_place(),filght.getA_place(),filght.getS_airport(),filght.getA_airport(),
                filght.getS_time(),filght.getA_time(),filght.getCompany(),filght.getF_type(),filght.getPrice(),filght.getSeat());
    }
}
