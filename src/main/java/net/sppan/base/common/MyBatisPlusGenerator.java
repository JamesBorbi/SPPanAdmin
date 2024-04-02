package net.sppan.base.common;


import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import net.sppan.base.common.BasePO;
import org.apache.commons.lang3.StringUtils;

import java.util.Collections;
import java.util.Scanner;

/**
 * Description: 自动生成代码
 *
 * @author huangkebin Email:huangkebin@shein.com
 * @date created in 2018/11/13 13:29
 */
public class MyBatisPlusGenerator {


    /**
     * <p>
     * 读取控制台内容
     * </p>
     */
    public static String scanner(String tip) {
        Scanner scanner = new Scanner(System.in);
        StringBuilder help = new StringBuilder();
        help.append("请输入").append(tip).append("：");
        System.out.println(help);
        if (scanner.hasNext()) {
            String ipt = scanner.next();
            if (StringUtils.isNotEmpty(ipt)) {
                return ipt;
            }
        }
        return null;
//        throw new Exception("请输入正确的" + tip + "！");
    }



    public static void main(String[] args) {
        String moduleName = scanner("模块名");
        String[] tableNames = scanner("表名,多个以逗号隔开").split(",");
        String projectPath = System.getProperty("user.dir");

//        String jdbcUrl = "jdbc:mysql://ops-dbproxy-dev05.shein.com:4002/pims_dev?useSSL=false&useUnicode=yes&characterEncoding=UTF-8&autoReconnect=true&connectTimeout=1800000";
        String jdbcUrl = "jdbc:mysql://localhost:3306/base?characterEncoding=utf8";
        String userName = "root";
        String passWord = "mjb20069";

        FastAutoGenerator.create(jdbcUrl,userName,passWord)
                .globalConfig(builder -> builder.author("x")
//                        .outputDir(projectPath+"/pims-service/src/main/java")
                        .outputDir(projectPath+"/src/main/java")
//                        .enableSwagger()
                        .disableOpenDir()
                        .dateType(DateType.ONLY_DATE))
                .packageConfig(builder -> builder.moduleName(moduleName)
                        .entity("entity.po")
                        .mapper("dao")
                        .controller("api")
                        //设置父包名
//                        .parent("com.shein.pims")
                        .parent("net.sppan.base")
                        //设置mapperXml生成路径
                        .pathInfo(Collections.singletonMap(OutputFile.mapperXml,
//                                projectPath + "/pims-service/src/main/resources/com/shein/sqlscript/" + moduleName)))
                                projectPath + "/src/main/resources/com/" + moduleName)))
                .strategyConfig(builder -> builder.addInclude(tableNames)
                        .addTablePrefix(moduleName+"_")
                        .mapperBuilder()
                        .formatMapperFileName("%sDao")
                        .formatXmlFileName("%sDao")
                        .serviceBuilder()
                        .formatServiceFileName("%sService")
                        .formatServiceImplFileName("%sServiceImpl")
                        .entityBuilder()
                        .enableChainModel()
                        .formatFileName("%sPO")
                        .naming(NamingStrategy.underline_to_camel)
                        .columnNaming(NamingStrategy.underline_to_camel)
                        .enableTableFieldAnnotation()
                        .superClass(BasePO.class)
                        .addSuperEntityColumns("create_time","create_user","update_user","update_time","is_delete","version","last_update_time")
                        .enableLombok()
                        .controllerBuilder()
                        .formatFileName("%sController")
                        .enableRestStyle()
                        .enableHyphenStyle())
                //使用Freemarker引擎模板，默认的是Velocity引擎模板
                .templateEngine(new FreemarkerTemplateEngine())
                .execute();
    }
}
