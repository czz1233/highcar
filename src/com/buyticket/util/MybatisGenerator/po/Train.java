package com.buyticket.util.MybatisGenerator.po;

public class Train {
    private Integer id;

    private String trainTno;

    private String start;

    private String end;

    private String starttime;

    private String endtime;

    private Integer totle;

    private Integer orderTicket;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTrainTno() {
        return trainTno;
    }

    public void setTrainTno(String trainTno) {
        this.trainTno = trainTno == null ? null : trainTno.trim();
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start == null ? null : start.trim();
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end == null ? null : end.trim();
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime == null ? null : starttime.trim();
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime == null ? null : endtime.trim();
    }

    public Integer getTotle() {
        return totle;
    }

    public void setTotle(Integer totle) {
        this.totle = totle;
    }

    public Integer getOrderTicket() {
        return orderTicket;
    }

    public void setOrderTicket(Integer orderTicket) {
        this.orderTicket = orderTicket;
    }
}