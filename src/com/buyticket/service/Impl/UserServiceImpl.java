package com.buyticket.service.Impl;
import com.buyticket.bean.mapper.UserMapper;
import com.buyticket.bean.po.User;
import com.buyticket.service.UserService;

import javax.annotation.Resource;
import java.util.List;

public class UserServiceImpl implements UserService{
   @Resource
   private UserMapper userMapper;
   @Override
   public int insertUserInfor(User user) {
      return userMapper.insertUser(user);
   }

   @Override
   public List<User> selectUsers() {
      return userMapper.selectUsers();
   }

   @Override
   public int deleteUser(int id) {
      return userMapper.deleteUser(id);
   }

   @Override
   public User viewUser(int id) {
      return userMapper.viewUser(id);
   }

   @Override
   public int updateUser(User user) {
      return userMapper.updateUser(user);
   }
   @Override
   public List<User> selectUserbyusername(User user) {
      return userMapper.selectUserbyusername(user);
   }

   @Override
   public List<User> selectUserbysex(User user) {
      return userMapper.selectUserbysex(user);
   }

   @Override
   public List<User> selectUserbyusernamesex(User user) {
      return userMapper.selectUserbyusernamesex(user);
   }
}
