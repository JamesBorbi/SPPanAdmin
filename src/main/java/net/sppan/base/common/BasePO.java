package net.sppan.base.common;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Description: 表实体基础类
 *
 * @author zhuhengyong Email:zhuhengyong@shein.com
 * @date created in 2018/11/6 11:05
 */
@Data
public class BasePO {
    @TableField(value = "create_by", fill = FieldFill.INSERT)
    private String createBy;
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    @JSONField(format = DatePattern.NORM_DATETIME_PATTERN)
    private Date createTime;
    @TableField(value = "update_by", fill = FieldFill.UPDATE)
    private String updateBy;
    @TableField(value = "update_time", fill = FieldFill.UPDATE)
    @JSONField(format = DatePattern.NORM_DATETIME_PATTERN)
    private Date updateTime;
    @TableField(value = "last_update_time", fill = FieldFill.UPDATE)
    @JSONField(format = DatePattern.NORM_DATETIME_PATTERN)
    private Date lastUpdateTime;
    @TableField("is_delete")
    @TableLogic
    private Integer isDelete;


}
