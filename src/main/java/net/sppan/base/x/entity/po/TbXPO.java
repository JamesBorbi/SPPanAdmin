package net.sppan.base.x.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import net.sppan.base.common.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * x列表
 * </p>
 *
 * @author x
 * @since 2024-04-02
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_x")
public class TbXPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 标题
     */
    @TableField("title")
    private String title;

    /**
     * 内容
     */
    @TableField("comment")
    private String comment;

    /**
     * 媒体地址
     */
    @TableField("media_url")
    private String mediaUrl;
    /**
     * 媒体类型：1图片，2视频
     */
    @TableField("media_type")
    private Integer mediaType;


}
