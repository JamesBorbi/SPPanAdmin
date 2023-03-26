package net.sppan.base.enums;

/**
 * 下单类型
 */
public enum YesOrNoEnum {
    /**
     * type，price，supplier
     * 0 否
     */
    CJB(1,11,"五号停机坪"),
//    YES(1,1,"是"),
//    YES(1,1,"是"),
//    YES(1,1,"是"),
//    YES(1,1,"是"),
    ;

    private YesOrNoEnum(Integer type,Integer value, String title){
        this.type = type;
        this.value = value;
        this.title = title;
    }

    private Integer type;
    private Integer value;
    private String title;

    public Integer getType() {
        return type;
    }
    public Integer getValue() {
        return value;
    }
    public String getTitle() {
        return title;
    }

}