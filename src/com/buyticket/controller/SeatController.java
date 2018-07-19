package com.buyticket.controller;

import com.buyticket.bean.po.Seat;
import com.buyticket.bean.po.Train;
import com.buyticket.service.SeatService;
import com.buyticket.service.TrainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
@RequestMapping("/ticketSystem/template")
@Controller
public class SeatController {
   @Resource
   private SeatService seatService;
   @Resource
   private TrainService trainService;

   /**
    * 添加列车座位信息
    * @param seat
    * @return
    */
   @RequestMapping("/addSeat.do")
   public String addSeat(Seat seat,Model model){
      List<Seat> oldseatList = seatService.selectSeats();
      int flag = 1;
      if(seat != null) {
         for (Seat s : oldseatList) {
            if (seat.getTrain_tno().equals(s.getTrain_tno())) {
               if (seat.getSeatType().equals(s.getSeatType()) && seat.getSeat_tno().equals(s.getSeat_tno())) {
                  flag = 0;
                  model.addAttribute("flag", flag);
                  return "addSeat";
               }
            }
         }
         seatService.addSeat(seat);
      }else {
         flag = 0;
         model.addAttribute("flag", flag);
         return "addSeat";
      }
      return "main";
   }

   /**
    * 查看列车座位信息列表
    * @param model
    * @return
    */
   @RequestMapping("/checkSeats.do")
   public String checkSeats(Model model){
      List<Seat> seatList = seatService.selectSeats();
      List<Train> trainList = trainService.selectTrains();
      model.addAttribute("seatList",seatList);
      model.addAttribute("trainList",trainList);
      return "SeatList";
   }

   /**
    * 查看座位信息
    * @param id
    * @param model
    * @return
    */
   @RequestMapping("/viewSeat.do")
   public String viewSeat(int id,Model model){
      Seat seat = seatService.viewSeat(id);
      model.addAttribute("seat",seat);
      return "viewSeat";
   }
   /**
    * 删除座位信息
    * @param id
    * @param model
    * @return
    */
   @RequestMapping("/deleteSeat.do")
   public String deleteSeat(int id,Model model){
      int row = seatService.deleteSeat(id);
      List<Seat> seatList = seatService.selectSeats();
      model.addAttribute("seatList",seatList);
      return "SeatList";
   }
   /**
    * 跳转座位编辑
    * @param id
    * @param model
    * @return
    */
   @RequestMapping("/jumpEditSeat.do")
   public String jumpEditSeat(int id,Model model){
      Seat seat = seatService.viewSeat(id);
      model.addAttribute("seat",seat);
      return "editSeat";
   }

   /**
    * 编辑座位信息
    * @param seat
    * @param model
    * @return
    */
   @RequestMapping("/editSeat.do")
   public String editSeat(Seat seat,Model model){
      int row = seatService.updateSeat(seat);
      List<Seat> seatList = seatService.selectSeats();
      model.addAttribute("seatList",seatList);
      return "SeatList";
   }
   @RequestMapping("/orderSeat.do")
   public String orderSeat(Model model){
      List<Train> trainList = null;
      model.addAttribute("trainList",trainList);
      return "orderSeat";
   }
   @RequestMapping("/quaryAndBook.do")
   public String quaryAndBook(Model model,Train train){
      List<Train> trainList = trainService.seachbytic(train);
      List<Integer> t_sums = new ArrayList<>();
      List<Integer> y_sums = new ArrayList<>();
      List<Integer> e_sums = new ArrayList<>();
      List<Integer> sums = new ArrayList<>();
      int t_sum = 0;
      int y_sum = 0;
      int e_sum = 0;
      for(Train t:trainList){
         List<Seat> seatList = seatService.seachbytrainid(t.getTrain_tno());
         for(Seat s:seatList){
            if("商务座".equals(s.getSeatType())){
               t_sum+=s.getSeatNum();
            }else if("一等座".equals(s.getSeatType())){
               y_sum+=s.getSeatNum();
            }else if("二等座".equals(s.getSeatType())){
               e_sum+=s.getSeatNum();
            }
         }
         t_sums.add(t_sum);
         y_sums.add(y_sum);
         e_sums.add(e_sum);
         sums.add(t_sum+y_sum+e_sum);
      }
      model.addAttribute("t_sums",t_sums);
      model.addAttribute("y_sums",y_sums);
      model.addAttribute("e_sums",e_sums);
      model.addAttribute("sums",sums);
      model.addAttribute("trainList",trainList);
      return "orderSeat";
   }
   @RequestMapping("/quarybyTno.do")
   public String quarybyTno(Model model,String train_tno){
      List<Seat> seatList = seatService.seachbytrainid(train_tno);
      model.addAttribute("seatList",seatList);
      return "TrainSeatList";
   }
   @RequestMapping("/bookTrainseat.do")
   public String bookTrainseat(int id){
      Seat seat = seatService.viewSeat(id);
      seat.setSeatNum(seat.getSeatNum()-1);
      seatService.updateSeat(seat);
      return "orderSeat";
   }
}
