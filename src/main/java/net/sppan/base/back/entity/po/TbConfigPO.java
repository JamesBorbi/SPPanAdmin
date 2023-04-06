package net.sppan.base.back.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import net.sppan.base.common.utils.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 配置管理表
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("tb_config")
public class TbConfigPO extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 会员网址
     */
    @TableField("vip_url")
    private String vipUrl;

    /**
     * 会员用户名
     */
    @TableField("vip_name")
    private String vipName;

    /**
     * 密码
     */
    @TableField("vip_password")
    private String vipPassword;

    /**
     * 报警值
     */
    @TableField("warn_num")
    private Integer warnNum;

    /**
     * 老板模式:0关闭 1开启
     */
    @TableField("is_boss")
    private Boolean isBoss;

    /**
     * 玩法:0普通
     */
    @TableField("play_module")
    private Boolean playModule;

    /**
     * 服务器域名
     */
    @TableField("server_com")
    private String serverCom;


}
