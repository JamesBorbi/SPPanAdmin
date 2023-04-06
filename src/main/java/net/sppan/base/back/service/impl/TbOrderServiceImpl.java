package net.sppan.base.back.service.impl;

import net.sppan.base.back.entity.po.TbOrderPO;
import net.sppan.base.back.dao.TbOrderDao;
import net.sppan.base.back.service.TbOrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 订单表 服务实现类
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Service
public class TbOrderServiceImpl extends ServiceImpl<TbOrderDao, TbOrderPO> implements TbOrderService {

}
