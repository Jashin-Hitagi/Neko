package com.neko.filght.dao;

import com.neko.filght.util.Filght;

import java.util.List;

public interface FilghtDao {

    List<Filght> findAll();

    List<Filght> findPage(Integer index,Integer size);

    Filght findByid(String f_id);

    List<Filght> findByCity(String s_place,String a_place, Integer index, Integer size);

    void update(Filght filght);

    void delete(String f_id);

    int count();

    int countCity(String s_place,String a_place);

    void seat(int amount,String f_id);

    void addSeat(int amount,String f_id);

    void newFilght(Filght filght);

}
