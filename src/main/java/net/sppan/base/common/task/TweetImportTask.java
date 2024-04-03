package net.sppan.base.common.task;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.text.csv.CsvData;
import cn.hutool.core.text.csv.CsvRow;
import cn.hutool.core.text.csv.CsvUtil;
import net.sppan.base.x.dao.TbXDao;
import net.sppan.base.x.entity.po.TbXPO;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.util.List;


/**
 * 定时任务落表推特数据
 */
@Component
public class TweetImportTask {

    @Resource
    private TbXDao tbXDao;

    /**
     * 每天凌晨1点执行
     */
//    @Scheduled(cron = "0 0 1 * * ?")
    @Scheduled(cron = "0 0/2 * * * ?")
    public void importTweetData() {
        // 您需要根据实际情况来设置路径
        String path = "/assets/media";
        File directory = new File(path);
        File[] files = directory.listFiles((dir, name) -> name.endsWith(".csv"));

        for (File file : files) {
            try {
                // 这里需要一个CSV解析器来读取CSV文件内容
                // 以下代码仅为示例，您需要使用实际的CSV解析库
                CsvData rows = CsvUtil.getReader().read(file);

                for (CsvRow row : rows.getRows()) {
                    List<String> list = row.getRawList();
                    // 创建Tweet对象并设置属性
                    TbXPO tweet = new TbXPO();
                    tweet.setTweetDate(DateUtil.parse(list.get(0), "yyy/MM/dd HH:mm:ss"));
                    tweet.setDisplayName(list.get(1));
                    tweet.setUserName(list.get(2));
                    tweet.setTweetUrl(list.get(3));
                    tweet.setMediaType(list.get(4));
                    tweet.setMediaUrl(list.get(5));
                    tweet.setSavedFilename(list.get(6));
                    tweet.setTweetContent(list.get(7));
                    tweet.setFavoriteCount(Integer.parseInt(list.get(8)));
                    tweet.setRetweetCount(Integer.parseInt(list.get(9)));
                    tweet.setReplyCount(Integer.parseInt(list.get(10)));

                    // 保存Tweet数据到数据库
                    tbXDao.insert(tweet);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
