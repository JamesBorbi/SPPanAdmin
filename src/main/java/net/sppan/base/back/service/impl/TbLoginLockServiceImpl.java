package net.sppan.base.back.service.impl;

import net.sppan.base.back.entity.po.TbLoginLockPO;
import net.sppan.base.back.dao.TbLoginLockDao;
import net.sppan.base.back.service.TbLoginLockService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 登录频繁解锁表 服务实现类
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Service
public class TbLoginLockServiceImpl extends ServiceImpl<TbLoginLockDao, TbLoginLockPO> implements TbLoginLockService {

}
