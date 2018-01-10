package com.apollo.apollostore.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 公用父接口，封装基本操作
 */
public interface BaseMapper<E,K> {
    List<E> list();

    E getById(K key);

    boolean create(E entity);

    boolean update(E entity);

    boolean delete(K key);

    //不一定好用
    List<E> pagedList(@Param("offset") Integer offset, @Param("rows") Integer rows);

    Integer totalRowCount();
}
