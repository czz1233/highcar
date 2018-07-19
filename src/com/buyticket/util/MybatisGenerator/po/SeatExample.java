package com.buyticket.util.MybatisGenerator.po;

import java.util.ArrayList;
import java.util.List;

public class SeatExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SeatExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSeattypeIsNull() {
            addCriterion("seatType is null");
            return (Criteria) this;
        }

        public Criteria andSeattypeIsNotNull() {
            addCriterion("seatType is not null");
            return (Criteria) this;
        }

        public Criteria andSeattypeEqualTo(String value) {
            addCriterion("seatType =", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeNotEqualTo(String value) {
            addCriterion("seatType <>", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeGreaterThan(String value) {
            addCriterion("seatType >", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeGreaterThanOrEqualTo(String value) {
            addCriterion("seatType >=", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeLessThan(String value) {
            addCriterion("seatType <", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeLessThanOrEqualTo(String value) {
            addCriterion("seatType <=", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeLike(String value) {
            addCriterion("seatType like", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeNotLike(String value) {
            addCriterion("seatType not like", value, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeIn(List<String> values) {
            addCriterion("seatType in", values, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeNotIn(List<String> values) {
            addCriterion("seatType not in", values, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeBetween(String value1, String value2) {
            addCriterion("seatType between", value1, value2, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeattypeNotBetween(String value1, String value2) {
            addCriterion("seatType not between", value1, value2, "seattype");
            return (Criteria) this;
        }

        public Criteria andSeatpriceIsNull() {
            addCriterion("seatPrice is null");
            return (Criteria) this;
        }

        public Criteria andSeatpriceIsNotNull() {
            addCriterion("seatPrice is not null");
            return (Criteria) this;
        }

        public Criteria andSeatpriceEqualTo(Double value) {
            addCriterion("seatPrice =", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceNotEqualTo(Double value) {
            addCriterion("seatPrice <>", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceGreaterThan(Double value) {
            addCriterion("seatPrice >", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("seatPrice >=", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceLessThan(Double value) {
            addCriterion("seatPrice <", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceLessThanOrEqualTo(Double value) {
            addCriterion("seatPrice <=", value, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceIn(List<Double> values) {
            addCriterion("seatPrice in", values, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceNotIn(List<Double> values) {
            addCriterion("seatPrice not in", values, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceBetween(Double value1, Double value2) {
            addCriterion("seatPrice between", value1, value2, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatpriceNotBetween(Double value1, Double value2) {
            addCriterion("seatPrice not between", value1, value2, "seatprice");
            return (Criteria) this;
        }

        public Criteria andSeatnumIsNull() {
            addCriterion("seatNum is null");
            return (Criteria) this;
        }

        public Criteria andSeatnumIsNotNull() {
            addCriterion("seatNum is not null");
            return (Criteria) this;
        }

        public Criteria andSeatnumEqualTo(Integer value) {
            addCriterion("seatNum =", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumNotEqualTo(Integer value) {
            addCriterion("seatNum <>", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumGreaterThan(Integer value) {
            addCriterion("seatNum >", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumGreaterThanOrEqualTo(Integer value) {
            addCriterion("seatNum >=", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumLessThan(Integer value) {
            addCriterion("seatNum <", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumLessThanOrEqualTo(Integer value) {
            addCriterion("seatNum <=", value, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumIn(List<Integer> values) {
            addCriterion("seatNum in", values, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumNotIn(List<Integer> values) {
            addCriterion("seatNum not in", values, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumBetween(Integer value1, Integer value2) {
            addCriterion("seatNum between", value1, value2, "seatnum");
            return (Criteria) this;
        }

        public Criteria andSeatnumNotBetween(Integer value1, Integer value2) {
            addCriterion("seatNum not between", value1, value2, "seatnum");
            return (Criteria) this;
        }

        public Criteria andNumberIsNull() {
            addCriterion("number is null");
            return (Criteria) this;
        }

        public Criteria andNumberIsNotNull() {
            addCriterion("number is not null");
            return (Criteria) this;
        }

        public Criteria andNumberEqualTo(Integer value) {
            addCriterion("number =", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotEqualTo(Integer value) {
            addCriterion("number <>", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThan(Integer value) {
            addCriterion("number >", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("number >=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThan(Integer value) {
            addCriterion("number <", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThanOrEqualTo(Integer value) {
            addCriterion("number <=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberIn(List<Integer> values) {
            addCriterion("number in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotIn(List<Integer> values) {
            addCriterion("number not in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberBetween(Integer value1, Integer value2) {
            addCriterion("number between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("number not between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andSeatTnoIsNull() {
            addCriterion("seat_tno is null");
            return (Criteria) this;
        }

        public Criteria andSeatTnoIsNotNull() {
            addCriterion("seat_tno is not null");
            return (Criteria) this;
        }

        public Criteria andSeatTnoEqualTo(String value) {
            addCriterion("seat_tno =", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoNotEqualTo(String value) {
            addCriterion("seat_tno <>", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoGreaterThan(String value) {
            addCriterion("seat_tno >", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoGreaterThanOrEqualTo(String value) {
            addCriterion("seat_tno >=", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoLessThan(String value) {
            addCriterion("seat_tno <", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoLessThanOrEqualTo(String value) {
            addCriterion("seat_tno <=", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoLike(String value) {
            addCriterion("seat_tno like", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoNotLike(String value) {
            addCriterion("seat_tno not like", value, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoIn(List<String> values) {
            addCriterion("seat_tno in", values, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoNotIn(List<String> values) {
            addCriterion("seat_tno not in", values, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoBetween(String value1, String value2) {
            addCriterion("seat_tno between", value1, value2, "seatTno");
            return (Criteria) this;
        }

        public Criteria andSeatTnoNotBetween(String value1, String value2) {
            addCriterion("seat_tno not between", value1, value2, "seatTno");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}