package net.sppan.base.common.utils;

import net.sppan.base.common.JsonResult;
import net.sppan.base.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/**
 * 获取登陆用户信息
 */
public class SysSessionUtils {

    private SysSessionUtils(){}

	public static String getUserName() {
		Subject subject = SecurityUtils.getSubject();
		Object principal = subject.getPrincipal();
		if(principal== null){
			throw new RuntimeException("您尚未登录");
		}

		return ((User) principal).getUserName();
	}

}