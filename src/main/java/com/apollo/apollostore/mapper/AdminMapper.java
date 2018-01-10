package com.apollo.apollostore.mapper;

import com.apollo.apollostore.model.Admin;
import com.apollo.apollostore.model.User;

import java.util.List;

public interface AdminMapper extends BaseMapper<Admin,Integer>{
    List<User> listWithRecords();
}
