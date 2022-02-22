package com.ift.file.engine;

import com.ift.file.engine.utils.PdfTemplateUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * @author liufei
 * @date 2022/1/25
 */
public class TestFtl {

    @Test
    public void test() throws Exception {
        Map<String, Object> data = new HashMap<>();
        data.put("title", "你的名字");
        data.put("sqrmc", "北碚区小飞小面馆");
        data.put("sqrq", "2022年1月10日");
        data.put("dom", "重庆市江北区大石坝东原D8 1-11-19");
        data.put("scdz", "重庆市江北区大石坝东原D8 1-11-19");
        data.put("fddbr", "张三");
        data.put("lxr", "李四");
        data.put("phone", "13333333333");
        data.put("fax", "010123-123123123");
        data.put("ydjzbh", "SCJ12312312312");
        data.put("ydjzyxq", "2020年12月10日");
        data.put("jypz", "小面");
        data.put("bbyy", "许可证丢失！");
        data.put("yssj", "2021年12月10日");

        FileOutputStream out = new FileOutputStream(new File("d:/flying-saucer.pdf"));
        PdfTemplateUtils pdfUtil = new PdfTemplateUtils();
        String html = pdfUtil.templateToHtml(data);
        pdfUtil.htmlToPdf(html, out);
        pdfUtil.htmlToPdfWithSpire(html, new FileOutputStream(new File("d:/spire.pdf")));
    }
}
