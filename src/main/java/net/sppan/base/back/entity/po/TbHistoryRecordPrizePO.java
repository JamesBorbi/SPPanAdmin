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
 * 开奖历史记录表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_history_record_prize")
public class TbHistoryRecordPrizePO extends BasePO {

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
     * 开奖时间
     */
    @TableField("prize_time")
    private Date prizeTime;

    /**
     * 开奖号码
     */
    @TableField("prize_number")
    private String prizeNumber;

    /**
     * 状态:0否 1是
     */
    @TableField("hostory_status")
    private Boolean hostoryStatus;


}
