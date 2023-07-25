package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import net.sppan.base.common.utils.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_user")
public class TbUserPO extends BasePO {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @TableField("address")
    private String address;

    @TableField("birthday")
    private Date birthday;

    @TableField("delete_status")
    private Integer deleteStatus;

    @TableField("description")
    private String description;

    @TableField("email")
    private String email;

    @TableField("locked")
    private Integer locked;

    @TableField("nick_name")
    private String nickName;

    @TableField("password")
    private String password;

    @TableField("sex")
    private Integer sex;

    @TableField("telephone")
    private String telephone;

    @TableField("user_name")
    private String userName;


}
