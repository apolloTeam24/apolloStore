package com.apollo.apollostore.service;


import com.apollo.apollostore.mapper.GoodsMapper;
import com.apollo.apollostore.model.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;


    public List<Goods> list() {
        return goodsMapper.list();
    }

    public Goods getById(Integer key) {
        return goodsMapper.getById(key);
    }

    public boolean create(Goods goods) {
        return goodsMapper.create(goods);
    }

    public boolean update(Goods goods) {
        return goodsMapper.update(goods);
    }

    public boolean delete(Integer key) {
        return goodsMapper.delete(key);
    }

    public List<Goods> list(int page, int rowsPerPage) {

        return goodsMapper.pagedList((page - 1) * rowsPerPage, rowsPerPage);
    }
}
