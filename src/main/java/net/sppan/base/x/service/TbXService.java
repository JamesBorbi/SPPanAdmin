package net.sppan.base.x.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import net.sppan.base.x.entity.dto.TbXDTO;
import net.sppan.base.x.entity.po.TbXPO;
import com.baomidou.mybatisplus.extension.service.IService;
import net.sppan.base.x.entity.vo.TbXVO;

/**
 * <p>
 * x列表 服务类
 * </p>
 *
 * @author x
 * @since 2024-04-02
 */
public interface TbXService extends IService<TbXPO> {


    Page<TbXVO> selectPage(TbXDTO xdto);
}
