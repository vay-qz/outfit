package pers.vay.outfit.constants.yz;

/**
 * @author qiaozhe
 * @date 2020/11/27
 */
public enum SeasonEnum {

    /**
     * 四季
     */
    SPRING(1, "春"),
    SUMMER(2, "夏"),
    FALL(3, "秋"),
    WINTER(4, "冬"),

    /**
     * 热带
     */
    DRY(5, "旱季"),
    RAINY(6, "雨季")
    ;

    private int value;
    private String desc;

    SeasonEnum(int value, String desc) {
        this.value = value;
        this.desc = desc;
    }
}
