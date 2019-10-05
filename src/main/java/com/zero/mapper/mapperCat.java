package com.zero.mapper;

import com.zero.beans.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface mapperCat
{
    @Select("select count(*) from project_dark")
    public  int getTotal();

    @Select("select * from project_dark")
    public List<User> getAllUser();

    @Select("select * from project_dark where id = #{id}")
    public List<User> getUser(Integer id);

    @Insert("insert into project_dark (id,code,name,age,sex,money)value(#{id},#{code},#{name},#{age},#{sex},#{money})")
    public int firstAdd(User user);

    @Insert("insert into project_dark (code,name,age,sex,money)value(#{code},#{name},#{age},#{sex},#{money})")
    public int addToSql(User user);

    @Update("update project_dark set code=#{code},name=#{name},age=#{age},sex=#{sex},money=#{money}where id= #{id}")
    public void updateMes(User user);

    @Delete("delete from project_dark where id = #{id}")
    public void  deleteUser(Integer id);

    @Select("select * from project_dark  limit #{param1},#{param2}")
    public List<User> getUserByOrder(Integer start,Integer count);
}
