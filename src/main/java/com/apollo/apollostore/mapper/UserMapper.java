package com.apollo.apollostore.mapper;

import com.apollo.apollostore.model.User;

import java.util.List;

public interface UserMapper extends BaseMapper<User,Integer>{
    List<User> listWithRecords();
}
