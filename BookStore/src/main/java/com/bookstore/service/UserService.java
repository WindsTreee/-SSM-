package com.bookstore.service;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User getUserByUsername(String username){
        return userDao.getUserByUsername(username);
    }

    public int saveuser(User user) throws Exception {
        if (user.getUsername().isEmpty() || user.getPassword().isEmpty() || user==null){
            throw new Exception("用户输入数据有误，请重新输入！");
        }
        return userDao.saveuser();
    }

    public int updateLastvisit(String username, Date lastvisit){
        return userDao.updateLastvisit(username,lastvisit);
    }

    public int updateBalance(String username,int balance){
        return userDao.updateBalance(username,balance);
    }

}
