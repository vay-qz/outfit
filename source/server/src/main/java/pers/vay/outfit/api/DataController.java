package pers.vay.outfit.api;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaozhe
 * @date 2020/12/5
 */
@RestController
@RequestMapping("/data")
@CrossOrigin
public class DataController {

    @GetMapping("/male/style")
    public Object maleStyle() {
        List<String> styles = new ArrayList<>();
        styles.add("潮流");
        styles.add("型男");
        styles.add("新男");
        styles.add("文艺");
        styles.add("绅士");
        styles.add("土豪");
        return styles;
    }



}
