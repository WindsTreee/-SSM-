package com.bookstore.dao;

import com.bookstore.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public interface UserDao {
    public User getUserByUsername(String username);
    public int saveuser();
    public int updateLastvisit(@Param("username") String username, @Param("last_visit") Date last_visit);
    public int updateBalance(@Param("username") String username,@Param("balance") int balance);
}
