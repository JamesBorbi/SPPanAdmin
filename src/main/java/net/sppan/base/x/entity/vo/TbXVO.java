package net.sppan.base.x.entity.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import net.sppan.base.common.BasePO;

import java.util.Date;

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
     * 创建时间
     */
    private Date createTime;

    /**
     * 创建人
     */
    private String createBy;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 更新人
     */
    private String updateBy;

    /**
     * 最后更新时间
     */
    private Date lastUpdateTime;

    /**
     * 是否删除：0否 1是
     */
    private Integer isDelete;

    /**
     * 推文日期
     */
    private String tweetDate;

    /**
     * 显示名称
     */
    private String displayName;

    /**
     * 用户名称
     */
    private String userName;

    /**
     * 推文链接
     */
    private String tweetUrl;

    /**
     * 媒体类型
     */
    private String mediaType;

    /**
     * 媒体链接
     */
    private String mediaUrl;
    /**
     * 本地媒体链接
     */
    private String localMediaUrl;

    /**
     * 保存的文件名
     */
    private String savedFilename;

    /**
     * 推文内容
     */
    private String tweetContent;

    /**
     * 收藏数
     */
    private Integer favoriteCount;

    /**
     * 转发数
     */
    private Integer retweetCount;

    /**
     * 回复数
     */
    private Integer replyCount;


}
