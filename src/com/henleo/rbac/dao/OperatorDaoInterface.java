package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Operator;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 用户表持久层操作接口
 */
public interface OperatorDaoInterface {
    /**
     * 增加用户
     * @param operator
     */
    @Insert("insert into operator(username, password, image, role_id) values(#{username}, #{password}, #{image}, #{operator.role_id})")
    void add(Operator operator);

    /**
     * 根据 id 删除用户
     * @param id
     */
    @Delete("delete from operator where operator_id = #{id}")
    void delete(int id);

    /**
     * 修改用户
     * @param operator
     */
    @Update("update operator set username = #{username}, password = #{password}, image =  #{image}, role_id = #{operator.role_id} where operator_id = #{operator_id}")
    void update(Operator operator);

    /**
     * 查询所有用户
     * @return 所有用户集合
     */
    @Select("select * form operator")
    List<Operator> findAll();

    /**
     * 根据 id 查询指定用户
     * @param id
     * @return 指定用户
     */
    @Select("select * from where operator_id = #{id}")
    Operator findById(int id);
}
