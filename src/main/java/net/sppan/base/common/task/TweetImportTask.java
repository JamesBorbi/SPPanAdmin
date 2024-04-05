package net.sppan.base.common.task;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.text.UnicodeUtil;
import cn.hutool.core.text.csv.CsvData;
import cn.hutool.core.text.csv.CsvRow;
import cn.hutool.core.text.csv.CsvUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import net.sppan.base.x.dao.TbXDao;
import net.sppan.base.x.entity.po.TbXPO;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;


/**
 * 定时任务落表推特数据
 */
@Component
public class TweetImportTask {

    @Resource
    private TbXDao tbXDao;

    @Value("${media.path}")
    private String mediaPath;
    @Value("${media.path.xd}")
    private String mediaPathXd;
    /**
     * 每天凌晨1点执行
     */
//    @Scheduled(cron = "0 0 1 * * ?")
//    @Scheduled(cron = "0 0/1 * * * ?")
//    public void importTweetData() {
//        // 您需要根据实际情况来设置路径
//        String path = "/Users/mima0000/IdeaProjects/SPPanAdmin/src/main/resources/static/assets/media";
//        File directory = new File(path);
//        File[] files = directory.listFiles((dir, name) -> name.endsWith(".csv"));
//
//        for (File file : files) {
//            try {
//                // 这里需要一个CSV解析器来读取CSV文件内容
//                // 以下代码仅为示例，您需要使用实际的CSV解析库
//                CsvData rows = CsvUtil.getReader().read(file);
//
//                for (CsvRow row : rows.getRows()) {
//                    List<String> list = row.getRawList();
//                    // 创建Tweet对象并设置属性
//                    TbXPO tweet = new TbXPO();
//                    tweet.setTweetDate(DateUtil.parse(list.get(0), "yyy/MM/dd HH:mm:ss"));
//                    tweet.setDisplayName(list.get(1));
//                    tweet.setUserName(list.get(2));
//                    tweet.setTweetUrl(list.get(3));
//                    tweet.setMediaType(list.get(4));
//                    tweet.setMediaUrl(list.get(5));
//                    tweet.setSavedFilename(list.get(6));
//                    tweet.setTweetContent(list.get(7));
//                    tweet.setFavoriteCount(Integer.parseInt(list.get(8)));
//                    tweet.setRetweetCount(Integer.parseInt(list.get(9)));
//                    tweet.setReplyCount(Integer.parseInt(list.get(10)));
//
//                    // 保存Tweet数据到数据库
//                    tbXDao.insert(tweet);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//    }

    @Scheduled(cron = "0 0/1 * * * ?")
    public void importTweetData() throws IOException {
        // 假设您的资源文件夹位于Web应用程序的根目录下
        // 例如，如果您的应用程序部署在/var/www/myapp，则设置相对路径如下：
        File directory = new File(mediaPath).getAbsoluteFile(); // 获取绝对路径

        Date date = new Date();
        // 确保目录存在
        if (directory.exists() && directory.isDirectory()) {
            // 递归搜索目录及其子目录中的CSV文件
            Stream<Path> walk = Files.walk(Paths.get(mediaPath));
            List<File> csvFiles = walk
                    .filter(Files::isRegularFile) // 筛选出普通文件
                    .filter(path -> path.toString().endsWith(".csv")) // 筛选出以.csv结尾的文件
                    .map(Path::toFile) // 将Path转换为File
                    .collect(Collectors.toList()); // 收集结果到列表

            for (File file : csvFiles) {
                try {
                    // 读取CSV文件内容
                    CsvData csvData = CsvUtil.getReader().read(file);

                    Integer i = 0;
                    String address = "";
                    for (CsvRow row : csvData.getRows()) {
                        List<String> list = row.getRawList();

                        if(i==0){
                            address = mediaPathXd +"/"+StringEscapeUtils.escapeJava(list.get(1))+"/";
                        }
                        i++;
                        //忽略前四行
                        if(i<5){
                            continue;
                        }
                        //校验重复
                        List<TbXPO> tbXPOList = tbXDao.selectList(new LambdaQueryWrapper<TbXPO>()
                                .eq(TbXPO::getSavedFilename,list.get(6)));
                        if(CollUtil.isNotEmpty(tbXPOList)){
                            continue;
                        }

                        // 创建Tweet对象并设置属性
                        TbXPO tweet = new TbXPO();
                        tweet.setTweetDate(DateUtil.parse(list.get(0), "yyyy-MM-dd HH:mm"));
                        tweet.setDisplayName(StringEscapeUtils.escapeJava(list.get(1)));
                        tweet.setUserName(list.get(2));
                        tweet.setTweetUrl(list.get(3));
                        tweet.setMediaType(list.get(4));
                        tweet.setMediaUrl(list.get(5));
                        tweet.setSavedFilename(list.get(6));
                        tweet.setTweetContent(StringEscapeUtils.escapeJava(list.get(7)));
                        tweet.setFavoriteCount(Integer.parseInt(list.get(8)));
                        tweet.setRetweetCount(Integer.parseInt(list.get(9)));
                        tweet.setReplyCount(Integer.parseInt(list.get(10)));
                        tweet.setLocalMediaUrl(address + list.get(6));

                        tweet.setCreateBy("root");
                        tweet.setCreateTime(date);


                        // 保存Tweet数据到数据库
                        tbXDao.insert(tweet);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            System.err.println("The specified directory does not exist or is not a directory: " + mediaPath);
        }
    }
}
