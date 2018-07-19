package com.buyticket.service.Impl;

import com.buyticket.bean.mapper.TrainMapper;
import com.buyticket.bean.po.Train;
import com.buyticket.service.TrainService;

import javax.annotation.Resource;
import java.util.List;

public class TrainServiceImpl implements TrainService{
   @Resource
   private TrainMapper trainMapper;
   @Override
   public int addTrain(Train train) {
      return trainMapper.addTrain(train);
   }

   @Override
   public List<Train> selectTrains() {
      return trainMapper.selectTrains();
   }

   @Override
   public int deleteTrain(int id) {
      return trainMapper.deleteTrain(id);
   }

   @Override
   public Train viewTrain(int id) {
      return trainMapper.viewTrain(id);
   }

   @Override
   public int updateTrain(Train train) {
      return trainMapper.updateTrain(train);
   }

   @Override
   public List<Train> seachForTrain(Train train) {
      return trainMapper.seachForTrain(train);
   }

   @Override
   public List<Train> seachbytic(Train train) {
      return trainMapper.seachbytic(train);
   }

}
