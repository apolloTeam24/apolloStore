package com.apollo.apollostore.web.controller;

import com.apollo.apollostore.model.Admin;
import com.apollo.apollostore.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/mvc")
public class AdminController {
    private final AdminService adminService;
    @Autowired
    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("admins")
    public String list(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) {
        if (page < 1) {
            return "redirect: admins";
        }
        model.addAttribute("admins", adminService.list(page,3));
        return "admin-list";
    }

    @RequestMapping(value = "admin/add", method = RequestMethod.GET)
    public String add() {
        return "admin-add";
    }

    @RequestMapping(value = "admin/add", method = RequestMethod.POST)
    public String add(Admin admin, Model model) {
        try {
            adminService.create(admin);
        } catch (RuntimeException e) {
            model.addAttribute("errorMessage", "添加用户失败");
            return "admin-add";
        }
        // 到达这里，表示没有异常，也就是说添加成功。所以重定向到列表页。
        // 这里可以使用相对路径，如果是mvc内部的资源的话。
        return "redirect: ../users";

    }

    @RequestMapping(value = "admin/edit", method = RequestMethod.GET)
    // 如果id转换整数失败，目前用户会得到一个400错误。
    public String edit(Integer id, Model model) {
        if (id != null) {
            Admin admin = adminService.getById(id);
            if (admin != null) {
                model.addAttribute("admin", admin);
                return "admin-edit";
            }
        }
        return "redirect: ../admins";
    }

    @RequestMapping(value = "admin/edit", method = RequestMethod.POST)
    public String edit(Admin admin, Model model) {
        try {
            adminService.update(admin);
        } catch (RuntimeException e) {
            // TODO: log me
            model.addAttribute("errorMessage", "更新失败");
            return "admin-edit";
        }
        return "redirect: ../admins";
    }

    @RequestMapping(value = "admin/delete")
    public String delete(Integer id) {
        adminService.delete(id);
        return "redirect: ../admins";
    }
}
