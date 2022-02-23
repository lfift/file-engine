package com.ift.file.engine.utils;

import com.itextpdf.text.pdf.BaseFont;
import com.spire.doc.Document;
import com.spire.doc.FileFormat;
import com.spire.doc.documents.XHTMLValidationType;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.xhtmlrenderer.pdf.ITextRenderer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.util.Locale;

/**
 * PDF模板工具
 *
 * @author liufei
 * @date 2022/1/25
 */
public class PdfTemplateUtils {

    /**
     * classpath路径
     */
    private String classpath = getClass().getResource("/").getPath();

    /**
     * 指定FreeMarker模板文件的位置
     */
    private String templatePath = "/templates";

    /**
     * freeMarker模板文件名称
     */
    private String templateFileName = "pdf.ftl";

    /**
     * 图片路径 —— 默认是classpath下面的images文件夹
     */
    private String imagePath = "/images/";

    /**
     * 字体资源文件 存放路径
     */
    private String fontPath = "fonts/";

    /**
     * 字体   [宋体][simsun.ttc]   [黑体][simhei.ttf]
     */
    private String font = "simsun.ttc";

    /**
     * 指定编码
     */
    private String encoding = "UTF-8";


    /**
     * 通过模板生成Html
     * @param data  传入到freemarker模板里的数据
     */
    public String templateToHtml(Object data) throws IOException, TemplateException {
        // 创建一个FreeMarker实例, 负责管理FreeMarker模板的Configuration实例
        Configuration cfg = new Configuration(Configuration.DEFAULT_INCOMPATIBLE_IMPROVEMENTS);
        // 指定FreeMarker模板文件的位置
        cfg.setClassForTemplateLoading(getClass(), templatePath);
        // 设置模板的编码格式
        cfg.setEncoding(Locale.CHINA, encoding);
        // 获取模板文件 template.ftl
        Template template = cfg.getTemplate(templateFileName, encoding);
        StringWriter writer = new StringWriter();
        // 将数据输出到html中
        template.process(data, writer);
        writer.flush();
        return writer.toString();
    }

    public void htmlToPdf(String html, OutputStream out) throws Exception {
        ITextRenderer renderer = new ITextRenderer();
        // 设置 css中 的字体样式（暂时仅支持宋体和黑体）
        renderer.getFontResolver().addFont(classpath + fontPath + font, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
        // 把html代码传入渲染器中
        renderer.setDocumentFromString(html);
        // 解决图片的相对路径问题 ##必须在设置document后再设置图片路径，不然不起作用
        // 如果使用绝对路径依然有问题，可以在路径前面加"file:/"
        String url = PdfTemplateUtils.class.getClassLoader().getResource("images").toURI().toString();
        renderer.getSharedContext().setBaseURL(url);
        renderer.layout();
        renderer.createPDF(out, false);
        renderer.finishPDF();
        out.flush();
        out.close();
    }

    public void htmlToPdfWithSpire(String html, OutputStream out) {
        Document document = new Document();
        document.loadFromFile("1.html", FileFormat.Html, XHTMLValidationType.None);
//        document.loadFromStream(new ByteArrayInputStream(html.getBytes(StandardCharsets.UTF_8)), FileFormat.Html);
        document.saveToFile("spire.pdf", FileFormat.PDF);
    }


    public void setClasspath(String classpath) {
        this.classpath = classpath;
    }


    public void setTemplatePath(String templatePath) {
        this.templatePath = templatePath;
    }


    public void setTemplateFileName(String templateFileName) {
        this.templateFileName = templateFileName;
    }


    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }


    public void setFontPath(String fontPath) {
        this.fontPath = fontPath;
    }


    public void setFont(String font) {
        this.font = font;
    }


    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }


    @Override
    public String toString() {
        return   "[templatePath] : " + templatePath + " \r\n "
                +"[templateFileName] : " + templateFileName + " \r\n "
                +"[imagePath] : " + imagePath + " \r\n "
                +"[fontPath] : " + fontPath + " \r\n "
                +"[font] : " + font + " \r\n "
                +"[encoding] : " + encoding;
    }
}
