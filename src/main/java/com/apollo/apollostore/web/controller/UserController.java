package com.apollo.apollostore.web.controller;

import com.apollo.apollostore.model.User;
import com.apollo.apollostore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/mvc")
public class UserController {
    private final UserService userService;
    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("users")
    public String list(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) {
        if (page < 1) {
            return "redirect: users";
        }
        model.addAttribute("users", userService.list(page,3));
        return "user-list";
    }

    @RequestMapping(value = "user/add", method = RequestMethod.GET)
    public String add() {
        return "user-add";
    }

    @RequestMapping(value = "user/add", method = RequestMethod.POST)
    public String add(User user, Model model) {
        try {
            userService.create(user);
        } catch (RuntimeException e) {
            model.addAttribute("errorMessage", "添加用户失败");
            return "user-add";
        }
        // 到达这里，表示没有异常，也就是说添加成功。所以重定向到列表页。
        // 这里可以使用相对路径，如果是mvc内部的资源的话。
        return "redirect: ../users";

    }

    @RequestMapping(value = "user/edit", method = RequestMethod.GET)
    // 如果id转换整数失败，目前用户会得到一个400错误。
    public String edit(Integer id, Model model) {
        if (id != null) {
            User user = userService.getById(id);
            if (user != null) {
                model.addAttribute("user", user);
                return "user-edit";
            }
        }
        return "redirect: ../users";
    }

    @RequestMapping(value = "user/edit", method = RequestMethod.POST)
    public String edit(User user, Model model) {
        try {
            userService.update(user);
        } catch (RuntimeException e) {
            // TODO: log me
            model.addAttribute("errorMessage", "更新失败");
            return "user-edit";
        }
        return "redirect: ../users";
    }

    @RequestMapping(value = "user/delete")
    public String delete(Integer id) {
        userService.delete(id);
        return "redirect: ../users";
    }
}
