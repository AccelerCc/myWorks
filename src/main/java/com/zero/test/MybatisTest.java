package com.zero.test;

import com.mysql.cj.Session;
import com.zero.beans.User;
import com.zero.mapper.mapperCat;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import javax.net.ssl.SSLSocketFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MybatisTest
{
    @Test
    public void test01() throws IOException {
        InputStream ism = Resources.getResourceAsStream("mybatisConfig.xml");
        SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(ism);
        SqlSession ss =  ssf.openSession();

        mapperCat theRes = ss.getMapper(mapperCat.class);

        User theMes  = new User();

        theMes.setName("zero");
        theMes.setMoney(236d);
        theMes.setCode(0);
        theMes.setAge(19);
        theMes.setSex("mal");
//        theMes.setId(1);

//        theRes.firstAdd(theMes);
        theRes.addToSql(theMes);

        List<User> userL = theRes.getAllUser();

        for(User user :userL ){
            System.out.println(user);
        }

        ss.commit();
        ss.close();
    }
}
