package com.buyticket.bean.po;

public class Seat {
    private Integer id;

    private String seatType;

    private Double seatPrice;

    private Integer seatNum;

    private String train_tno;

    private String seat_tno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSeatType() {
        return seatType;
    }

    public void setSeatType(String seatType) {
        this.seatType = seatType;
    }

    public Double getSeatPrice() {
        return seatPrice;
    }

    public void setSeatPrice(Double seatPrice) {
        this.seatPrice = seatPrice;
    }

    public Integer getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(Integer seatNum) {
        this.seatNum = seatNum;
    }

    public String getTrain_tno() {
        return train_tno;
    }

    public void setTrain_tno(String train_tno) {
        this.train_tno = train_tno;
    }

    public String getSeat_tno() {
        return seat_tno;
    }

    public void setSeat_tno(String seat_tno) {
        this.seat_tno = seat_tno;
    }
}