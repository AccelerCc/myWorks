package com.zero.test;

import com.zero.beans.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTest
{
    @Test
    public void test(){
        ApplicationContext takeCon = new ClassPathXmlApplicationContext("applicationContext.xml");
        User user = (User) takeCon.getBean("u");

        user.setName("acc");
        System.out.println(user.getName());
    }
}
