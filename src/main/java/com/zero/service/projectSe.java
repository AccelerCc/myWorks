package com.zero.service;

import com.zero.beans.User;

import java.util.List;

public interface projectSe
{
    public List<User> findByID(Integer id);
    public List<User> findAll();
    public void deleteByID(Integer id);
    public int addUser(User user);
    public void updateUser(User user);
    public List<User> getMesOrder(Integer start,Integer count);
    public int getAllSe();
}
