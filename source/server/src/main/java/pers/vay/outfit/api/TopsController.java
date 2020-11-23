package pers.vay.outfit.api;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pers.vay.outfit.dao.TopsDao;
import pers.vay.outfit.vo.Tops;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/top")
public class TopsController {

    @Resource
    private TopsDao service;

    @PostMapping("")
    public void addBottom(@RequestBody Tops bottoms, HttpServletResponse response) {
        List<Tops> list = new ArrayList<>();
        list.add(bottoms);
        service.insert(list);
    }

}
