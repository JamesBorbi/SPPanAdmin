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
 * 订单表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_order")
public class TbOrderPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 期号
     */
    @TableField("issue_num")
    private String issueNum;

    /**
     * 文本
     */
    @TableField("comment")
    private String comment;

    /**
     * 会员
     */
    @TableField("member")
    private String member;

    /**
     * 总金额
     */
    @TableField("total_amount")
    private BigDecimal totalAmount;

    /**
     * 状态
     */
    @TableField("order_status")
    private Boolean orderStatus;


}
