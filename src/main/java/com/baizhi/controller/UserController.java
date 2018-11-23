package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.apache.catalina.LifecycleState;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/getAll")
    public String getAll(String username, Map map){

       List<User> list= userService.getAll(username);
        map.put("k",list);
        System.out.println(map);
        return "show";
    }

    @RequestMapping("/delete")
    public String delete(int id){

        userService.delete(id);
        return "redirect:/user/getAll.do";
    }

    @RequestMapping("/getOne")
    public String getOne(int id,Map map){
        User user=userService.getOne(id);
        map.put("map",user);
        System.out.println(map);
        return "update";
    }

    @RequestMapping("/update")
    public String update(User user){
        userService.update(user);
        return "redirect:/user/getAll.do";
    }

    @RequestMapping("/add")
    public String add(User user){
        userService.add(user);
        return "redirect:/user/getAll.do";
    }
}
