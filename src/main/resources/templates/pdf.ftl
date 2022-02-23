<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <style type="text/css">
        body {
            margin: 0;
            border: 0;
        }
        /*@page {*/
        /*    size: 210mm 297mm;*/
        /*    margin: 0.25in;*/
        /*    padding: 1em;*/
        /*    @bottom-center {*/
        /*        content: "Bamboo © 版权所有";*/
        /*        font-family: SimSun, monospace;*/
        /*        font-size: 12px;*/
        /*        color: #000;*/
        /*    };*/
        /*    @top-center {*/
        /*        content: element(header)*/
        /*    };*/
        /*    @bottom-right {*/
        /*        content: "第" counter(page) "页  共 " counter(pages) "页";*/
        /*        font-family: SimSun, monospace;*/
        /*        font-size: 12px;*/
        /*        color: #000;*/
        /*    };*/
        /*}*/
        @page a4 {
            size: 210mm 297mm;
            /*margin: 0.25in;*/
            /*padding: 1em;*/
            /*@bottom-center {*/
            /*    content: "Bamboo © 版权所有";*/
            /*    font-family: SimSun, monospace;*/
            /*    font-size: 12px;*/
            /*    color: #000;*/
            /*};*/
            /*@top-center {*/
            /*    content: element(header)*/
            /*};*/
            /*@bottom-right {*/
            /*    content: "第" counter(page) "页  共 " counter(pages) "页";*/
            /*    font-family: SimSun, monospace;*/
            /*    font-size: 12px;*/
            /*    color: #000;*/
            /*};*/
        }

        @page a3 {
            size: 297mm 420mm;
            /*margin: 0.25in;*/
            /*padding: 1em;*/
            /*@bottom-center {*/
            /*    content: "Bamboo © 版权所有";*/
            /*    font-family: SimSun, monospace;*/
            /*    font-size: 12px;*/
            /*    color: #000;*/
            /*};*/
            /*@top-center {*/
            /*    content: element(header)*/
            /*};*/
            /*@bottom-right {*/
            /*    content: "第" counter(page) "页  共 " counter(pages) "页";*/
            /*    font-family: SimSun, monospace;*/
            /*    font-size: 12px;*/
            /*    color: #000;*/
            /*};*/
        }

        body {
            font-family: SimSun, monospace;
        }
        table, td, th {
            border: 1px solid black;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        td {
            height: 35pt;
            text-align: center;
        }
        /*div {*/
        /*    width: 21cm;*/
        /*    min-height: 29.7cm;*/
        /*    padding: 1cm;*/
        /*    margin: 1cm auto;*/
        /*    border: 1px #eee solid;*/
        /*    background: white;*/
        /*    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);*/
        /*}*/
    </style>
</head>
<body>
<div id="page1" style="page: a4;border: black 5px solid;">
    <p style="font-size: 22pt;text-align: center">重庆市食品生产加工小作坊登记证</p>
    <p style="font-size: 22pt;text-align: center">补 办 申 请 书</p>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <p style="font-size: 16pt;text-align: center">申请人名称：<span style="font-size: 16pt;text-align: center;text-decoration: underline">${sqrmc} （与登记证一致）  （公章）</span></p>
    <p style="font-size: 16pt;text-align: center">申请日期：<span style="font-size: 16pt;text-align: center;text-decoration: underline">${sqrq}</span></p>
</div>
<div style="page-break-after:always;"></div>
<div id="page2" style="page: a3;">
    <table>
        <tr>
            <td colspan="4" style="text-align: center;font-size: 14pt;">一、申请人基本情况</td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;width: 25%;">申请人名称</td>
            <td colspan="3"><span style="text-align: center;font-size: 12pt;">${sqrmc}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;width: 25%;">住所（经营场所）</td>
            <td colspan="3"><span style="text-align: center;font-size: 12pt;">${dom}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;width: 25%;">生产地址</td>
            <td colspan="3"><span style="text-align: center;font-size: 12pt;">${scdz}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;">法定代表人（负责人）</td>
            <td><span style="text-align: center;font-size: 12pt;">${fddbr}</span></td>
            <td style="text-align: center;font-size: 12pt;">联 系 人</td>
            <td><span style="text-align: center;font-size: 12pt;">${lxr}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;">电    话</td>
            <td><span style="text-align: center;font-size: 12pt;">${phone}</span></td>
            <td style="text-align: center;font-size: 12pt;">传   真</td>
            <td><span style="text-align: center;font-size: 12pt;">${fax}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;">原登记证编号</td>
            <td><span style="text-align: center;font-size: 12pt;">${ydjzbh}</span></td>
            <td style="text-align: center;font-size: 12pt;">原登记证有效期</td>
            <td><span style="text-align: center;font-size: 12pt;">${ydjzyxq}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;width: 25%;">获证生产经营品种</td>
            <td colspan="3"><span style="text-align: center;font-size: 12pt;">${jypz}</span></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 12pt;">补办原因</td>
            <td><span style="text-align: center;font-size: 12pt;">${bbyy}</span></td>
            <td style="text-align: center;font-size: 12pt;">遗失或损坏时间</td>
            <td><span style="text-align: center;font-size: 12pt;">${yssj}</span></td>
        </tr>
        <tr>
            <td></td>
            <td colspan="4">
                <p style="font-size: 12pt;text-indent: 24pt">我（单位）因保管不善，遗失（损坏）重庆市食品生产加工小作坊登记证，申请补办。</p>
                <p style="font-size: 12pt;text-indent: 24pt">根据《中华人民共和国行政许可法》第三十一条“申请人申请行政许可，应当如实向行政机关提交有关材料和反映真实情况，并对其申请材料实质内容的真实性负责。”的规定，申请人对提供的材料的真实性负责，并承担因提供不实材料而产生的法律后果。</p>
                <br/><br/><br/><br/>
                <p style="font-size: 12pt;">申请人签字（公章）：</p>
                <p style="font-size: 12pt;text-align: right">2022年2月7日</p>
            </td>
        </tr>
    </table>
</div>
</body>
</html>