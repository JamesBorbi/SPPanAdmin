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
 * 赔率设置表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_odds")
public class TbOddsPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 赔率
     */
    @TableField("odds")
    private Integer odds;

    /**
     * 最小限额
     */
    @TableField("min")
    private Integer min;

    /**
     * 最大限额

     */
    @TableField("max")
    private Integer max;


}
