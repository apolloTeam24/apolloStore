package com.apollo.apollostore.web.controller;

import com.apollo.apollostore.model.Goods;
import com.apollo.apollostore.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/mvc")
public class GoodsController {

    private final GoodsService goodsService;
    @Autowired
    public GoodsController(GoodsService goodsService) {
        this.goodsService = goodsService;
    }
    // 只是spring 4.x中推荐的注入模式。（构造方法注入模式）


    @RequestMapping("goods")
    public String list(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) {
        // 防止坏人恶意试探
        if (page < 1) {
            // 带他们去正确的地方
            return "redirect: goods";
        }

        List<Goods> goods = goodsService.list(page, 3);


        model.addAttribute("goods", goodsService.list(page,3));
        return "goods-list";
    }

    @RequestMapping(value = "goods/add", method = RequestMethod.GET)
    public String add() {
        return "goods-add";
    }

    @RequestMapping(value = "goods/add", method = RequestMethod.POST)
    public String add(Goods goods, Model model) {
        try {
            goodsService.create(goods);
        } catch (RuntimeException e) {
            // TODO: log me
            model.addAttribute("errorMessage", "添加失败");
            return "goods-add";
        }
        // 到达这里，表示没有异常，也就是说添加成功。所以重定向到列表页。
        // 这里可以使用相对路径，如果是mvc内部的资源的话。
        return "redirect: ../goods";
    }

    @RequestMapping(value = "goods/edit", method = RequestMethod.GET)
    // 如果id转换整数失败，目前用户会得到一个400错误。
    public String edit(Integer id, Model model) {
        if (id != null) {
            Goods goods = goodsService.getById(id);
            if (goods != null) {
                model.addAttribute("goods", goods);
                return "goods-edit";
            }
        }
        return "redirect: ../goods";
    }

    @RequestMapping(value = "goods/edit", method = RequestMethod.POST)
    public String edit(Goods goods, Model model) {
        try {
            goodsService.update(goods);
        } catch (RuntimeException e) {
            // TODO: log me
            model.addAttribute("errorMessage", "更新失败");
            return "goods-edit";
        }
        return "redirect: ../goods";
    }

    @RequestMapping(value = "goods/delete")
    public String delete(Integer id) {
        goodsService.delete(id);
        return "redirect: ../goods";
    }
}
