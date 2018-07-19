package com.buyticket.bean.mapper;

import com.buyticket.bean.po.User;

import java.util.List;

public interface UserMapper {
   public int insertUser(User user);
   public List<User> selectUsers();
   public int deleteUser(int id);
   public User viewUser(int id);
   public int updateUser(User user);
   public List<User> selectUserbyusername(User user);
   public List<User> selectUserbysex(User user);
   public List<User> selectUserbyusernamesex(User user);
}
