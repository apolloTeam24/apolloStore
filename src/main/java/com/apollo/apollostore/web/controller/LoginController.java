package com.apollo.apollostore.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    // 这里只是提供登录表单显示，真正的登录由shiro代理。
    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public String loginForm() {
        return "login";
    }

    // 这个方法只有用户登录后刷新post的时候才会到这里
    // 如果到这里，那么用户已经成功登录，所以默默地返回主页就是了
    @RequestMapping(value = "/login.html", method = RequestMethod.POST)
    public String afterLogin() {
        return "redirect: ../";
    }
}
