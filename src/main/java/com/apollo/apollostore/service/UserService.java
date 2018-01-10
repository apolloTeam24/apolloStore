package com.apollo.apollostore.service;

import com.apollo.apollostore.mapper.UserMapper;
import com.apollo.apollostore.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public List<User> list(){
        return userMapper.list();
    }


    public User getById(Integer key){
        return userMapper.getById(key);
    }

    public boolean create(User user){
        return userMapper.create(user);
    }

    public boolean update(User user){
        return userMapper.update(user);
    }

    public boolean delete(Integer key){
        return userMapper.delete(key);
    }


    public List<User> list(int page, int rowsPerPage) {
        // 专门针对mysql语法，其它咱也不知道
        return userMapper.pagedList((page - 1) * rowsPerPage, rowsPerPage);
    }

    /**
     *
     * @param rowsPerPage 每页有几行，不能等于零
     * @return 一共有多少页
     */
    public int totalPage(int rowsPerPage) {
        Integer rowCount = userMapper.totalRowCount();
        int page = rowCount / rowsPerPage;
        // 处理余数，有余数加一页
        if (rowCount % rowsPerPage != 0) {
            page++;
        }
        return page;
    }

}
