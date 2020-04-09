package com.neko.filght.biz.impl;

import com.neko.filght.biz.FilghtBiz;
import com.neko.filght.dao.FilghtDao;
import com.neko.filght.dao.impl.FilghtDaoImpl;
import com.neko.filght.util.Filght;

import java.util.List;

public class FilghtBizImpl implements FilghtBiz {

    FilghtDao filghtDao = new FilghtDaoImpl();

    @Override
    public List<Filght> findAll() {
        List<Filght> list = filghtDao.findAll();
        return list;
    }

    @Override
    public List<Filght> findPage(Integer index, Integer size) {
        List<Filght> list = filghtDao.findPage(index,size);
        return list;
    }

    @Override
    public Filght findByid(String f_id) {
        Filght filght = filghtDao.findByid(f_id);
        return filght;
    }

    @Override
    public List<Filght> findByCity(String s_place, String a_place, Integer index, Integer size) {
        List<Filght> list = filghtDao.findByCity(s_place,a_place,index,size);
        return list;
    }

    @Override
    public void update(Filght filght) {
        filghtDao.update(filght);
    }

    @Override
    public void delete(String f_id) {
        filghtDao.delete(f_id);
    }

    @Override
    public int count() {
        return filghtDao.count();
    }

    @Override
    public int countCity(String s_place, String a_place) {
        return filghtDao.countCity(s_place,a_place);
    }

    @Override
    public void seat(int amount, String f_id) {
        filghtDao.seat(amount,f_id);
    }

    @Override
    public void addSeat(int amount, String f_id) {
        filghtDao.addSeat(amount,f_id);
    }

    @Override
    public void newFilght(Filght filght) {
        filghtDao.newFilght(filght);
    }
}
