package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * 吃码额度设定
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_eat_set")
public class TbEatSetPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 吃码类型：1一定位 2二定位 3三定位 4四定位 5二字现 6三字现 7四字现 8盈亏上限 9盈亏下限
     */
    @TableField("eat_type")
    private Boolean eatType;

    /**
     * 吃码数值
     */
    @TableField("eat_num")
    private Integer eatNum;


}
