package com.buyticket.service.Impl;

import com.buyticket.bean.mapper.SeatMapper;
import com.buyticket.bean.po.Seat;
import com.buyticket.service.SeatService;

import javax.annotation.Resource;
import java.util.List;

public class SeatServiceImpl implements SeatService{
   @Resource
   private SeatMapper seatMapper;
   @Override
   public int addSeat(Seat seat) {
      return seatMapper.addSeat(seat);
   }

   @Override
   public List<Seat> selectSeats() {
      return seatMapper.selectSeats();
   }

   @Override
   public Seat viewSeat(int id) {
      return seatMapper.viewSeat(id);
   }

   @Override
   public int deleteSeat(int id) {
      return seatMapper.deleteSeat(id);
   }

   @Override
   public int updateSeat(Seat seat) {
      return seatMapper.updateSeat(seat);
   }

   @Override
   public List<Seat> seachbytrainid(String train_tno) {
      return seatMapper.seachbytrainid(train_tno);
   }
}
