package pers.vay.outfit.constants.yz;

/**
 * @author qiaozhe
 * @date 2020/11/23
 */
public enum TypeEnum {

    /**
     * 潮流
     */
    TREND(1, "潮流");

    private int value;

    private String desc;

    TypeEnum(int value, String desc) {
        this.value = value;
        this.desc = desc;
    }
}
