package net.sppan.base.x.entity.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;

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
     * 标题
     */
    private String tittle;

    /**
     * 内容
     */
    private String comment;

    /**
     * 媒体地址
     */
    private String mediaUrl;


}
