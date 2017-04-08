package com.fzu.dao;

import com.fzu.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDao extends BaseDao<User> {

    private final String GET_USER_BY_USERNAME = "from User u where u.username = ?";

    public User getUserByUsername(String username){
        List<User> users = (List<User>)find(GET_USER_BY_USERNAME, username);
        if (users.size() == 0) {
            return null;
        } else {
            return users.get(0);
        }
    }

}
