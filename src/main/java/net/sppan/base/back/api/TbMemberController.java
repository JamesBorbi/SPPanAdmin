package net.sppan.base.back.api;


import net.sppan.base.back.entity.po.TbMemberPO;
import net.sppan.base.back.entity.vo.TbMemberVO;
import net.sppan.base.back.service.TbMemberService;
import net.sppan.base.common.JsonResult;
import net.sppan.base.common.utils.SysSessionUtils;
import net.sppan.base.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;

/**
 * <p>
 * 会员管理表 前端控制器
 * </p>
 *
 * @author musk
 * @since 2023-04-04
 */
@RestController
@RequestMapping("/sys")
public class TbMemberController {


    @Autowired
    private TbMemberService tbMemberService;

    /**
     * 添加会员
     * @param tbMemberVO
     * @return
     */
    @RequestMapping(value = "/member", method = RequestMethod.POST)
    @ResponseBody
    public JsonResult member(TbMemberVO tbMemberVO) {
        try {
            Subject subject = SecurityUtils.getSubject();
            User principal = (User) subject.getPrincipal();
            if(principal== null){
                return JsonResult.failure("您尚未登录");
            }
            TbMemberPO tbMemberPO = new TbMemberPO();
            tbMemberPO.setNick(tbMemberVO.getNickName());
            tbMemberPO.setIsTora(tbMemberVO.getIsTuo());
            tbMemberPO.setIsCheck(tbMemberVO.getSearchable());
            tbMemberPO.setIsTalk(tbMemberVO.getIsPrivate());
            tbMemberPO.setIsInWeb(tbMemberVO.getOnlyWeb());
            tbMemberPO.setCreateBy(SysSessionUtils.getUserName());
            tbMemberPO.setCreateTime(new Timestamp(System.currentTimeMillis()));
            tbMemberService.saveOrUpdate(tbMemberPO);


        } catch (Exception e) {
            e.printStackTrace();
            return JsonResult.failure(e.getMessage());
        }
        return JsonResult.success();
    }
}
