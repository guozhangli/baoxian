package cn.wy.insurance.test;

import cn.wy.insurance.test.Detp;

public interface DetpMapper {
    int deleteByPrimaryKey(String deptId);

    int insert(Detp record);

    int insertSelective(Detp record);

    Detp selectByPrimaryKey(String deptId);

    int updateByPrimaryKeySelective(Detp record);

    int updateByPrimaryKey(Detp record);
}