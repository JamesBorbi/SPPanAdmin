package net.sppan.base.x.api;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import net.sppan.base.x.entity.dto.TbXDTO;
import net.sppan.base.x.entity.vo.TbXVO;
import net.sppan.base.x.service.TbXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * x列表 前端控制器
 * </p>
 *
 * @author x
 * @since 2024-04-02
 */
@RestController
@RequestMapping("/x/tbx")
public class TbXController {


    @Autowired
    private TbXService tbXService;

    /**
     * x分页列表
     * @param xdto
     * @return
     */
    @RequestMapping(value = { "/selectPage" })
    @ResponseBody
    public Page<TbXVO> selectPage(@RequestBody TbXDTO xdto) {

        Page<TbXVO> page = tbXService.selectPage(xdto);
        return page;
    }
}
