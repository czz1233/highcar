package com.buyticket.controller;

import com.buyticket.bean.po.Train;
import com.buyticket.service.TrainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
@RequestMapping("/ticketSystem/template")
@Controller
public class TrainController {
   @Resource
   private TrainService trainService;

   /**
    * 新增列车信息
    * 若不存在，则添加
    * 若存在，则不添加
    * @param train 接受前台输入信息
    * @return 跳转页面
    */
   @RequestMapping("/addTrain.do")
   public String addTrain(Train train){
      List<Train> trainList = null;
      if(trainService.selectTrains()!=null){
         trainList = trainService.selectTrains();
      }
      if(trainList!=null) {
         if (train != null) {
            for (Train t : trainList) {
               if (train.getTrain_tno().equals(t.getTrain_tno())) {
                  return "addTrain";
               }
            }
            trainService.addTrain(train);
         }
      }else{
         trainService.addTrain(train);
      }
      return "main";
   }

   /**
    * 查看列车信息列表
    * @param model
    * @return
    */
   @RequestMapping("/checkTrains.do")
   public String checkTrains(Model model){
      List<Train> trainList = trainService.selectTrains();
      model.addAttribute("trainList",trainList);
      return "TrainList";
   }

   /**
    * 查看某个列车信息
    * @param model
    * @param id
    * @return
    */
   @RequestMapping("/template/viewTrain.do")
   public String viewTrain(Model model,int id) {
      Train train  = trainService.viewTrain(id);
      model.addAttribute("train",train);
      return "viewTrain";
   }

   /**
    * 删除某个列车信息
    * @param id
    * @param model
    * @return
    */
   @RequestMapping("/deleteTrain.do")
   public String deleteTrain(int id,Model model){
      int rows = trainService.deleteTrain(id);
      List<Train> trainList = trainService.selectTrains();
      model.addAttribute("trainList",trainList);
      return "TrainList";
   }

   /**
    * 跳转列车编辑信息界面
    * @param id
    * @param model
    * @return
    */
   @RequestMapping("/jumpEditTrain.do")
   public String jumpEdit(int id,Model model){
      Train train = trainService.viewTrain(id);
      model.addAttribute("train",train);
      return "editTrain";
   }

   /**
    * 修改某个列车信息
    * @param model
    * @param train
    * @return
    */
   @RequestMapping("/updateTrain.do")
   public String updateTrain(Model model,Train train){
      int rows = trainService.updateTrain(train);
      List<Train> trainList = trainService.selectTrains();
      model.addAttribute("trainList",trainList);
      return "TrainList";
   }

   /**
    * 根据查询条件，精确查找某个列车信息
    * @param train_tno
    * @param start
    * @param end
    * @param startTime
    * @param model
    * @return
    */
   @RequestMapping("/quaryTrain.do")
   public String quaryTrain(String train_tno,String start,String end,String startTime,Model model){
      Train train = new Train();
      List<Train> trainList = trainService.selectTrains();
      if((train_tno!=null||" ".equals(train_tno))&&(start!=null||" ".equals(start))&&(end!=null||" ".equals(end))&&(startTime!=null||" ".equals(startTime))){
         train.setTrain_tno(train_tno);
         train.setStart(start);
         train.setEnd(end);
         train.setStartTime(startTime);
         trainList = trainService.seachForTrain(train);
      }
      model.addAttribute("trainList",trainList);
      return "TrainList";
   }
}
