package com.baizhi.dao;

import com.baizhi.entity.User;

import java.util.List;

public interface UserDao {
    List<User> getAll(String username);
    void delete(int id);
    User getOne(int id);
    void update(User user);
    void add(User user);
}
