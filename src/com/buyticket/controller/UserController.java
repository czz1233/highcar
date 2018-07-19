package com.buyticket.controller;

import com.buyticket.bean.po.User;
import com.buyticket.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
@RequestMapping("/ticketSystem/template")
@Controller
public class UserController {
   @Resource
   private UserService userService;

   /**
    * 跳转到用户目录界面
    * @param model
    * @return
    */
   @RequestMapping("/checkUsers.do")
   public String check(Model model){
      List<User> userList = userService.selectUsers();
      model.addAttribute("userList",userList);
      return "userList";
   }
   /**
    * 登录账号检测
    * @param username
    * @param password
    * @return
    */
   @RequestMapping("/login.do")
   public String login(String username,String password,Model model){
      List<User> userList = userService.selectUsers();
      model.addAttribute("users",userList);
      if(userList!=null) {
         for (User u : userList) {
            if (username.equals(u.getUsername()) && password.equals(u.getPassword())) {
               return "index";
            }
         }
      }
      return "login";
   }

   /**
    * 注册账号
    * @param user
    * @return
    */
   @RequestMapping(value = "/register.do",produces={"text/html;charset=UTF-8"})
   public String register(User user){
      List<User> userList = userService.selectUsers();
      if(user!=null) {
         for(User u:userList){
            if(user.getUsername().equals(u.getUsername())){
               return "register";
            }
         }
         userService.insertUserInfor(user);
      }
      return "login1";
   }
   /**
    * 查看用户信息
    * @param model
    * @param userId
    * @return
    */
   @RequestMapping("/viewUser.do")
   public String viewUser(Model model,int userId) {
      User user = userService.viewUser(userId);
      model.addAttribute("user",user);
      return "viewUser";
   }

   /**
    * 跳转编辑页面
    * @param userId
    * @param model
    * @return
    */
   @RequestMapping("/jumpEdit.do")
   public String jumpEdit(int userId,Model model){
      User user = userService.viewUser(userId);
      model.addAttribute("user",user);
      model.addAttribute("userId",userId);
      return "edit";
   }
   /**
    * 修改用户信息
    * @param model
    * @param user
    * @return
    */
   @RequestMapping("/updateUser.do")
   public String updateUser(Model model,User user){
      int rows = userService.updateUser(user);
      List<User> userList = userService.selectUsers();
      model.addAttribute("userList",userList);
      return "userList";
   }
   /**
    * 删除用户
    * @param userId
    * @param model
    * @return
    */
   @RequestMapping("/deleteUser.do")
   public String deleteUser(int userId,Model model){
      int rows = userService.deleteUser(userId);
      List<User> userList = userService.selectUsers();
      model.addAttribute("userList",userList);
      return "userList";
   }

   /**
    * 查询用户
    * @param sex
    * @return
    */
   @RequestMapping("/quaryUser.do")
   public String quaryUser(String username,String sex,Model model){
      User user = new User();
      List<User> userList = null;
      if("".equals(username)){
         username=null;
      }
      if("".equals(sex)){
         sex=null;
      }
      if(username!=null && sex!=null){
         user.setUsername(username);
         user.setSex(sex);
         userList = userService.selectUserbyusernamesex(user);
      }else if(username==null && sex!=null){
         user.setSex(sex);
         userList = userService.selectUserbysex(user);
      }else if(username!=null && sex==null){
         user.setUsername(username);
         userList = userService.selectUserbyusername(user);
      }else {
         userList = userService.selectUsers();
      }
      model.addAttribute("userList",userList);
      return "userList";
   }

   /**
    * 添加用户
    * @param user
    * @param name
    * @return
    */
   @RequestMapping("/addUser.do")
   public String addUser(User user,String name){
      List<User> userList = userService.selectUsers();
      if(user!=null) {
         for(User u:userList){
            if(user.getUsername().equals(u.getUsername())){
               return "add";
            }
         }
         userService.insertUserInfor(user);
      }
      return "main";
   }
}
