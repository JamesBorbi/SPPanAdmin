package net.sppan.base.back.entity.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;
import net.sppan.base.common.utils.BasePO;

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
public class TbMemberVO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    private Long id;
    /**
     * 昵称
     */
    private String nickName;

    /**
     * 自动投:0否 1是
     */
    private Integer isTuo;
    /**
     * 可查流水
     */
    private Integer searchable;

    /**
     * 是否私聊
     */
    private Integer isPrivate;

    /**
     * 只进网页群
     */
    private Integer onlyWeb;



}
