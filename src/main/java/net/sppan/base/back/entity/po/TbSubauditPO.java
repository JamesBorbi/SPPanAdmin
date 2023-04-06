package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import net.sppan.base.common.utils.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 上下分审核表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_subaudit")
public class TbSubauditPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 昵称
     */
    @TableField("nick")
    private String nick;

    /**
     * 分数
     */
    @TableField("num")
    private Integer num;

    /**
     * 类型
     */
    @TableField("su_type")
    private Boolean suType;

    /**
     * 状态
     */
    @TableField("su_status")
    private Boolean suStatus;


}
