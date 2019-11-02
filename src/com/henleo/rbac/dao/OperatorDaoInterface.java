package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Operator;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

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

    /**
     * 根据用户名密码查询指定用户
     * @param username
     * @param password
     * @return
     *
     * @Results 该注解用用设置实体类对象中的某个属性数据的来源
     * 此处设置了 operator 对应实体类中的 role 的数据来源于外键所对应的表,可以通过 find 查询得到
     */
    @Select("select operator_id,username,password,image,role_id from operator where username = #{username} and password = #{password}")
    @Results({
            @Result(
                    property = "role",
                    column = "role_id",
                    one = @One(select = "com.henleo.rbac.dao.RoleDaoInterface.findById", fetchType = FetchType.EAGER)
            )
    })
    Operator findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
