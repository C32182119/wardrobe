package com.fzu.service;

import com.fzu.dao.UserDao;
import com.fzu.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User queryUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    public void saveUser(User user) { userDao.save(user); }

    public void updateUser(User user) { userDao.update(user); }
}
