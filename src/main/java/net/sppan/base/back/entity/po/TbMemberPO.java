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
 * 会员管理表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_member")
public class TbMemberPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 微信昵称
     */
    @TableField("wx_nick")
    private String wxNick;

    /**
     * 昵称
     */
    @TableField("nick")
    private String nick;

    /**
     * 积分
     */
    @TableField("product_num")
    private Integer productNum;

    /**
     * 投分
     */
    @TableField("cast_num")
    private Integer castNum;

    /**
     * 盈亏
     */
    @TableField("loss_num")
    private Integer lossNum;

    /**
     * 自动托:0否 1是
     */
    @TableField("is_tora")
    private Integer isTora;

    /**
     * 吃:0否 1是
     */
    @TableField("is_eat")
    private Integer isEat;

    /**
     * 可查流水:0否 1是
     */
    @TableField("is_check")
    private Integer isCheck;

    /**
     * 绑定:0否 1是
     */
    @TableField("is_binding")
    private Integer isBinding;

    /**
     * 头像
     */
    @TableField("logo")
    private String logo;

    /**
     * 是否私聊:0否 1是
     */
    @TableField("is_talk")
    private Integer isTalk;

    /**
     * 只进网页群:0否 1是
     */
    @TableField("is_in_web")
    private Integer isInWeb;


}
