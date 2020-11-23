package pers.vay.outfit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

    @RequestMapping("bottom")
    public String index() {
        return "bottom.html";
    }

    @RequestMapping("top")
    public String top() {
        return "top.html";
    }

}
