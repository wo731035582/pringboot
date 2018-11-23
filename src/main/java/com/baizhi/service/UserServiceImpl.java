package com.baizhi.service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public List<User> getAll(String username) {
        List<User> list=userDao.getAll(username);
        return list;
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public User getOne(int id) {
        User user=userDao.getOne(id);
        return user;
    }

    @Override
    public void update(User user) {
        userDao.update(user);

    }

    @Override
    public void add(User user) {
        userDao.add(user);
    }
}
