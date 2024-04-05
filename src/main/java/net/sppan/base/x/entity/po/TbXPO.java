package net.sppan.base.x.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

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
     * 推文日期
     */
    @TableField("tweet_date")
    private Date tweetDate;

    /**
     * 显示名称
     */
    @TableField("display_name")
    private String displayName;

    /**
     * 用户名称
     */
    @TableField("user_name")
    private String userName;

    /**
     * 推文链接
     */
    @TableField("tweet_url")
    private String tweetUrl;

    /**
     * 媒体类型
     */
    @TableField("media_type")
    private String mediaType;

    /**
     * 媒体链接
     */
    @TableField("media_url")
    private String mediaUrl;
    /**
     * 本地媒体链接
     */
    @TableField("local_media_url")
    private String localMediaUrl;

    /**
     * 保存的文件名
     */
    @TableField("saved_filename")
    private String savedFilename;

    /**
     * 推文内容
     */
    @TableField("tweet_content")
    private String tweetContent;

    /**
     * 收藏数
     */
    @TableField("favorite_count")
    private Integer favoriteCount;

    /**
     * 转发数
     */
    @TableField("retweet_count")
    private Integer retweetCount;

    /**
     * 回复数
     */
    @TableField("reply_count")
    private Integer replyCount;


}
