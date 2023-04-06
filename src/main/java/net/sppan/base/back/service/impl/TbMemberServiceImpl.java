package net.sppan.base.back.service.impl;

import net.sppan.base.back.entity.po.TbMemberPO;
import net.sppan.base.back.dao.TbMemberDao;
import net.sppan.base.back.service.TbMemberService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 会员管理表 服务实现类
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@Service
public class TbMemberServiceImpl extends ServiceImpl<TbMemberDao, TbMemberPO> implements TbMemberService {

}
