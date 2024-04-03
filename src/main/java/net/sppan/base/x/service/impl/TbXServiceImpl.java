package net.sppan.base.x.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import net.sppan.base.x.entity.dto.TbXDTO;
import net.sppan.base.x.entity.po.TbXPO;
import net.sppan.base.x.dao.TbXDao;
import net.sppan.base.x.entity.vo.TbXVO;
import net.sppan.base.x.service.TbXService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * x列表 服务实现类
 * </p>
 *
 * @author x
 * @since 2024-04-02
 */
@Service
public class TbXServiceImpl extends ServiceImpl<TbXDao, TbXPO> implements TbXService {


    @Resource
    private TbXDao tbXDao;

    @Override
    public Page<TbXVO> selectPage(TbXDTO xdto) {

        Page<TbXPO> page = new Page(xdto.getPageIndex(),xdto.getPageSize());
        LambdaQueryWrapper<TbXPO> queryWrapper = new LambdaQueryWrapper();
        queryWrapper.orderByDesc(TbXPO::getId);
        if(StrUtil.isNotBlank(xdto.getDisplayName())){
            queryWrapper.like(TbXPO::getDisplayName,xdto.getDisplayName());
        }
        if(StrUtil.isNotBlank(xdto.getUserName())){
            queryWrapper.eq(TbXPO::getUserName,xdto.getUserName());
        }
        Page<TbXPO> pageList = tbXDao.selectPage(page,queryWrapper);


        List<TbXVO> tbXVOList = CollUtil.newArrayList();
        for (TbXPO record : pageList.getRecords()) {
            TbXVO tbXVO = new TbXVO();
            BeanUtil.copyProperties(record,tbXVO);
            tbXVOList.add(tbXVO);
        }

        Page<TbXVO> tbXVOPage = new Page<>();
        tbXVOPage.setTotal(pageList.getTotal());
        tbXVOPage.setRecords(tbXVOList);
        return tbXVOPage;
    }
}
