package pers.vay.outfit.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import pers.vay.outfit.vo.Bottoms;

import java.util.List;

@Mapper
public interface BottomsDao {

    int insert(@Param("list") List<Bottoms> list);

}
