package com.apollo.apollostore.service;

import com.apollo.apollostore.mapper.AdminMapper;
import com.apollo.apollostore.model.Admin;
import com.apollo.apollostore.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class AdminService {
    @Autowired
    private AdminMapper adminMapper;

    public List<Admin> list(){
        return adminMapper.list();
    }


    public Admin getById(Integer key){
        return adminMapper.getById(key);
    }

    public boolean create(Admin admin){
        return adminMapper.create(admin);
    }

    public boolean update(Admin admin){
        return adminMapper.update(admin);
    }

    public boolean delete(Integer key){
        return adminMapper.delete(key);
    }


    public List<Admin> list(int page, int rowsPerPage) {
        // 专门针对mysql语法，其它咱也不知道
        return adminMapper.pagedList((page - 1) * rowsPerPage, rowsPerPage);
    }

    /**
     *
     * @param rowsPerPage 每页有几行，不能等于零
     * @return 一共有多少页
     */
    public int totalPage(int rowsPerPage) {
        Integer rowCount = adminMapper.totalRowCount();
        int page = rowCount / rowsPerPage;
        // 处理余数，有余数加一页
        if (rowCount % rowsPerPage != 0) {
            page++;
        }
        return page;
    }

}
