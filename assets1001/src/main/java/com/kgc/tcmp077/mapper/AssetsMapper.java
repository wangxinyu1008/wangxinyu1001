package com.kgc.tcmp077.mapper;

import com.kgc.tcmp077.pojo.Assets;
import com.kgc.tcmp077.pojo.AssetsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AssetsMapper {
    int countByExample(AssetsExample example);

    int deleteByExample(AssetsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Assets record);

    int insertSelective(Assets record);

    List<Assets> selectByExample(AssetsExample example);

    Assets selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Assets record, @Param("example") AssetsExample example);

    int updateByExample(@Param("record") Assets record, @Param("example") AssetsExample example);

    int updateByPrimaryKeySelective(Assets record);

    int updateByPrimaryKey(Assets record);
}