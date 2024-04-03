package net.sppan.base.x.entity.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import javax.validation.constraints.NotNull;
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
public class TbXDTO {

    private static final long serialVersionUID = 1L;

    /**
     * 页码
     */
    @NotNull(message = "页码不能为空")
    private Integer pageIndex;
    /**
     * 条数
     */
    @NotNull(message = "条数不能为空")
    private Integer pageSize;
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
    private Date tweetDate;

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
