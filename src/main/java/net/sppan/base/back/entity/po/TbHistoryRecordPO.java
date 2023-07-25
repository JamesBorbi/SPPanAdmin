package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.math.BigDecimal;

import lombok.Data;
import net.sppan.base.common.utils.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 历史记录表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_history_record")
public class TbHistoryRecordPO extends BasePO {

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
     * 投额
     */
    @TableField("use_amount")
    private BigDecimal useAmount;

    /**
     * 中奖
     */
    @TableField("is_prize")
    private Boolean isPrize;

    /**
     * 盈亏
     */
    @TableField("loss_num")
    private Integer lossNum;

    /**
     * 实投
     */
    @TableField("true_amount")
    private Integer trueAmount;

    /**
     * 网盘下单
     */
    @TableField("disk_order")
    private String diskOrder;


}
