package net.sppan.base.x.entity.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import net.sppan.base.common.BasePO;

/**
 * <p>
 * x列表
 * </p>
 *
 * @author x
 * @since 2024-04-02
 */
@Data
public class TbXVO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    private Long id;

    /**
     * 标题
     */
    private String title;

    /**
     * 内容
     */
    private String comment;

    /**
     * 媒体地址
     */
    private String mediaUrl;
    /**
     * 媒体类型：1图片，2视频
     */
    private Integer mediaType;


}
