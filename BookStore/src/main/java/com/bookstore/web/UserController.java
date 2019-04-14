package com.bookstore.web;

import com.bookstore.domain.User;
import com.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "/Login";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("USER_CONTEXT");
        return "redirect:/list.html";
    }

    @RequestMapping(value = "/judge",method = RequestMethod.POST)
    public ModelAndView loginjudge(HttpServletRequest request,User user) throws Exception {
        if (user.getUsername().isEmpty() || user.getPassword().isEmpty() || user==null){
            throw new Exception("用户输入数据有误，请重新输入！");
        }
        User realuser = userService.getUserByUsername(user.getUsername());
        ModelAndView view = new ModelAndView();
        if(realuser==null){
            view.setViewName("/Login");
            view.addObject("message","用户名不存在！");
            return view;
        }else if(realuser.getPassword().equals(user.getPassword())){
            userService.updateLastvisit(user.getUsername(),new Date());
            view.setViewName("redirect:/list.html");
            view.addObject("message","登录成功！");
            setSessionUser(request,user);
            return view;
        }else{
            view.setViewName("/Login");
            view.addObject("message","密码错误！");
            return view;
        }
    }

    protected void setSessionUser(HttpServletRequest request,User user){
        request.getSession().setAttribute("USER_CONTEXT",user);
    }
}
