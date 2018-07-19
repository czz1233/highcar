package com.buyticket.bean.mapper;

import com.buyticket.bean.po.Seat;

import java.util.List;

public interface SeatMapper {
   public int addSeat(Seat seat);
   public List<Seat> selectSeats();
   public Seat viewSeat(int id);
   public int deleteSeat(int id);
   public int updateSeat(Seat seat);
   public List<Seat> seachbytrainid(String train_tno);
}
