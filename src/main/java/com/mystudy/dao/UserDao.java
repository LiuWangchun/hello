package com.mystudy.dao;

import com.mystudy.domian.User;

import java.util.List;
import java.util.Map;

public interface UserDao {

    /**
     * 查询总记录数
     * @param condition
     * @return
     */
    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int start, int rows, Map<String, String[]> condition);

    User findUserById(int id);

    void updateUser(User user);

    List<User> findAll();

    void add(User user);

    void delete(int id);
}
