package com.buyticket.bean.po;
//id, train_tno, start, end, startTime, endTime, totle, order_ticket
public class Train {
    private Integer id;

    private String train_tno;

    private String start;

    private String end;

    private String startTime;

    private String endTime;

    private Integer totle;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTrain_tno() {
        return train_tno;
    }

    public void setTrain_tno(String train_tno) {
        this.train_tno = train_tno;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getTotle() {
        return totle;
    }

    public void setTotle(Integer totle) {
        this.totle = totle;
    }

}