package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.math.BigDecimal;
import net.sppan.base.common.utils.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 返水列表表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_return_amount")
public class TbReturnAmountPO extends BasePO {

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
     * 幸运五比例
     */
    @TableField("lucky_five")
    private String luckyFive;

    /**
     * 幸运五返水金额
     */
    @TableField("lucky_five_amount")
    private BigDecimal luckyFiveAmount;

    /**
     * 龙虎比例
     */
    @TableField("dragon_tiger")
    private BigDecimal dragonTiger;

    /**
     * 龙虎返水金额
     */
    @TableField("dragon_tiger_amount")
    private BigDecimal dragonTigerAmount;

    /**
     * 合计返水金额
     */
    @TableField("total_amount")
    private BigDecimal totalAmount;


}
