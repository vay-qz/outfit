package pers.vay.outfit.constants.yz;

/**
 * @author qiaozhe
 * @date 2020/11/23
 */
public enum TypeEnum {

    /**
     * 男生类型
     */
    TREND(1, "潮流"),
    SPORTSMAN(2, "型男"),
    JAPAN_KOREA(3, "日韩"),
    ART(4, "艺术"),
    GENTLEMAN(5, "绅士"),
    LOCAL_TYCOON(6, "土豪")
    ;

    private int value;

    private String desc;

    TypeEnum(int value, String desc) {
        this.value = value;
        this.desc = desc;
    }
}
