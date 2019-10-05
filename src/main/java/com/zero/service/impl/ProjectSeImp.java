package com.zero.service.impl;

import com.zero.beans.User;
import com.zero.mapper.mapperCat;
import com.zero.service.projectSe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectSeImp implements projectSe {

    @Autowired
    private mapperCat mapperCat;

    @Override
    public List<User> findByID(Integer id) {
        System.out.println("now is search for the user of id :" + id );
        List<User> theRes = mapperCat.getUser(id);
        return theRes;
    }

    @Override
    public List<User> findAll() {
        System.out.println("now is search for all users");
        List<User> theRes = mapperCat.getAllUser();
        return theRes;
    }

    @Override
    public void deleteByID(Integer id) {
        mapperCat.deleteUser(id);
    }

    @Override
    public int addUser(User user) {
        int num = mapperCat.addToSql(user);
        return num;
    }

    @Override
    public void updateUser(User user) {
        System.out.println("now is update the new user message");
        System.out.println(user);
        mapperCat.updateMes(user);
    }

    @Override
    public List<User> getMesOrder(Integer start, Integer count) {
       List<User> theRes = mapperCat.getUserByOrder(start,count);
        for(User user :theRes){
            System.out.println(user);
        }
       return theRes;
    }

    @Override
    public int getAllSe() {
        return mapperCat.getTotal();
    }


}
