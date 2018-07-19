package com.buyticket.service;
import com.buyticket.bean.po.Train;
import java.util.List;

public interface TrainService {
   public int addTrain(Train train);
   public List<Train> selectTrains();
   public int deleteTrain(int id);
   public Train viewTrain(int id);
   public int updateTrain(Train train);
   public List<Train> seachForTrain(Train train);
   public List<Train> seachbytic(Train train);
}
