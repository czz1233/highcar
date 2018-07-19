package com.buyticket.util.MybatisGenerator.po;

public class Seat {
    private Integer id;

    private String seattype;

    private Double seatprice;

    private Integer seatnum;

    private Integer number;

    private String seatTno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSeattype() {
        return seattype;
    }

    public void setSeattype(String seattype) {
        this.seattype = seattype == null ? null : seattype.trim();
    }

    public Double getSeatprice() {
        return seatprice;
    }

    public void setSeatprice(Double seatprice) {
        this.seatprice = seatprice;
    }

    public Integer getSeatnum() {
        return seatnum;
    }

    public void setSeatnum(Integer seatnum) {
        this.seatnum = seatnum;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getSeatTno() {
        return seatTno;
    }

    public void setSeatTno(String seatTno) {
        this.seatTno = seatTno == null ? null : seatTno.trim();
    }
}