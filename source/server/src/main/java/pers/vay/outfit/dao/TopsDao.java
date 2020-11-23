package pers.vay.outfit.dao;

import org.apache.ibatis.annotations.Mapper;
import pers.vay.outfit.vo.Tops;

import java.util.List;

@Mapper
public interface TopsDao {

    int insert(List<Tops> list);
}
