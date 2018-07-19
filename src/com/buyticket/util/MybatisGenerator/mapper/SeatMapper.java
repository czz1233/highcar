package com.buyticket.util.MybatisGenerator.mapper;

import com.buyticket.util.MybatisGenerator.po.Seat;
import com.buyticket.util.MybatisGenerator.po.SeatExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SeatMapper {
    int countByExample(SeatExample example);

    int deleteByExample(SeatExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Seat record);

    int insertSelective(Seat record);

    List<Seat> selectByExample(SeatExample example);

    Seat selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Seat record, @Param("example") SeatExample example);

    int updateByExample(@Param("record") Seat record, @Param("example") SeatExample example);

    int updateByPrimaryKeySelective(Seat record);

    int updateByPrimaryKey(Seat record);
}