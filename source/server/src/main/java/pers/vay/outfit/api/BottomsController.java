package pers.vay.outfit.api;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pers.vay.outfit.dao.BottomsDao;
import pers.vay.outfit.vo.Bottoms;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/bottoms")
public class BottomsController {

    @Resource
    private BottomsDao service;

    @PostMapping("")
    public void addBottom(@RequestBody Bottoms bottoms, HttpServletResponse response) {
        List<Bottoms> list = new ArrayList<>();
        list.add(bottoms);
        service.insert(list);
    }

}
