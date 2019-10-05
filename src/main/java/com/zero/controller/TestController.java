package com.zero.controller;

import com.zero.beans.Page;
import com.zero.beans.User;
import com.zero.service.projectSe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class TestController {

    @Autowired
    private projectSe pts;



    @RequestMapping("totest")
    public String test(Model model){
        List<User> theRes = pts.findAll();
        model.addAttribute("userData",theRes);
        return "userMes";
    }


    @RequestMapping("toEdit")
    public String editor(@RequestParam(required = false) Integer id,Model model){
        List<User> theRes = pts.findByID(id);
        model.addAttribute("userDataByID",theRes);
        return "edit";
    }

    @RequestMapping("toDelete")
    public String delete(@RequestParam(required = false) Integer id){
        pts.deleteByID(id);
        return "redirect:totest";
    }

    @RequestMapping("toUpdate")
    public String update(@RequestParam(required = false)Integer id,Integer code,String name,Integer age,String sex,Double money){
        User setMes = new User();
        setMes.setId(id);
        setMes.setName(name);
        setMes.setSex(sex);
        setMes.setCode(code);
        setMes.setMoney(money);
        setMes.setAge(age);
        pts.updateUser(setMes);
        return "redirect:totest";
    }

    @RequestMapping("toAdd")
    public String addUser(@RequestParam(required = false)Integer code,String name,Integer age,String sex,Double money){
        User setMes = new User();
        setMes.setName(name);
        setMes.setSex(sex);
        setMes.setCode(code);
        setMes.setMoney(money);
        setMes.setAge(age);
        pts.addUser(setMes);
        return "redirect:totest";
    }

    @RequestMapping("jumpAdd")
    public String jumpadd(){
        return "add";
    }



    @RequestMapping("toOrder")
    public String getOrder(HttpServletRequest request ,HttpServletResponse response){
        int start = 0;
        int count = 5;

        try {
            start = Integer.parseInt(request.getParameter("page.start"));
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
            e.printStackTrace();
        }

        Page page = new Page(start,count);

        List<User> theRes = pts.getMesOrder(page.getStart(),page.getCount());
        int total = pts.getAllSe();
        page.setTotal(total);
        request.setAttribute("betaData",theRes);
        request.setAttribute("page",page);
        return "beta";
    }

//    @RequestMapping("betapage")
//    public


}
