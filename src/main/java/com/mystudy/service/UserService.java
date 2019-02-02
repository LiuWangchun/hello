package com.mystudy.service;

import com.mystudy.domian.PageBean;
import com.mystudy.domian.User;

import java.util.List;
import java.util.Map;

public interface UserService {

    PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String,String[]> condition);

    User findUserById(String id);

    void updateUser(User user);

    List<User> findAll();

    void addUser(User user);

    void delSelectedUser(String[] ids);

    void deleteUser(String id);
}
