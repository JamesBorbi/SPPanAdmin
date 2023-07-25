package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

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
@TableName("tb_user_role")
public class TbUserRolePO extends BasePO {

    private static final long serialVersionUID = 1L;

    @TableId("user_id")
    private Integer userId;

    @TableField("role_id")
    private Integer roleId;


}
