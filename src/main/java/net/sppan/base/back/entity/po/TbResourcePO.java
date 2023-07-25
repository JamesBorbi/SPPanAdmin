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
 * 
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Data
@Accessors(chain = true)
@TableName("tb_resource")
public class TbResourcePO extends BasePO {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @TableField("description")
    private String description;

    @TableField("icon")
    private String icon;

    @TableField("is_hide")
    private Integer isHide;

    @TableField("level")
    private Integer level;

    @TableField("name")
    private String name;

    @TableField("sort")
    private Integer sort;

    @TableField("source_key")
    private String sourceKey;

    @TableField("source_url")
    private String sourceUrl;

    @TableField("type")
    private Integer type;

    @TableField("parent_id")
    private Integer parentId;


}
