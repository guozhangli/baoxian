<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 页面描述 -->
    <meta name="description" content="中国人保欢迎有识之士加盟中国人保,诚聘保险代理人/保险营销员/业务主管。">
    <!-- 页面关键词 -->
    <meta name="keywords" content="中国人保,保险招聘,北京市公司招聘,中国人保招聘,招聘,保险公司招聘,保险代理人招聘">
<title>中国人保招聘-中国人保北京市公司招聘-保险公司招聘-保险代理人招聘-保险加盟</title>
</head>
<body>
<%@include file="_head.jsp" %>

<div class="plan-detail">
    <div class="breadcrumb">
        <ul class="wrapper clear">
            <li><a href="http://www.syywxki.cn/">首页</a></li>
            <li>&gt;</li>
            <li>保险加盟</li>
        </ul>
    </div>
    <div class="wrapper clear resume">
        <div class="title">申请职位：保险代理人</div>
<form novalidate="novalidate" action="/join/insertjoin" id="JoinForm" method="post"><input name="__RequestVerificationToken" value="sCnuln2fBQFkGEkmTvnRFm1o6kyD7cPCNSfj5586nz7Rq4_chx9n_PTnrT1wv1gKhiDNcNkTQDyB-hnahDiAx7QTXw1KnkSEEND0akZZsw01" type="hidden"><input data-val="true" data-val-number="字段 RcmId 必须是一个数字。" data-val-required="RcmId 字段是必需的。" id="RcmId" name="RcmId" value="931717049394907520" type="hidden">            <div class="position-r clear">
                <div class="fl flw">
                    <label for="CandName"><i class="c-red">*</i>姓　　名：</label>
                    <input data-val="true" data-val-required="请输入您的姓名" id="CandName" name="CandName" type="text">
                    <span class="field-validation-valid iconfont error" data-valmsg-for="CandName" data-valmsg-replace="true"></span>
                </div>
                <div class="fl flw">
                    <label>性　　别：</label>
                    <div class="dib">
                        <input checked="checked" class="regular-radio" data-val="true" data-val-number="字段 CandSex 必须是一个数字。" data-val-required="CandSex 字段是必需的。" id="CandSex_1" name="CandSex" value="1" type="radio">
                        <label for="CandSex_1" id="PersonSex1">男</label>
                        <input class="regular-radio" id="CandSex_0" name="CandSex" value="0" type="radio">
                        <label for="CandSex_0" id="CandSex0">女</label>
                    </div>
                    <span class="field-validation-valid iconfont error" data-valmsg-for="CandSex" data-valmsg-replace="true"></span>
                </div>
            </div>
            <div class="position-r clear">
                <div class="fl flw">
                    <label for="CandAge"><i class="c-red">*</i>年　　龄：</label>
                    <input data-val="true" data-val-number="字段 CandAge 必须是一个数字。" data-val-range="年龄需介于0-200岁之间" data-val-range-max="200" data-val-range-min="0" data-val-regex="年龄必须是个数字" data-val-regex-pattern="\d+" data-val-required="请输入您的年龄" id="CandAge" name="CandAge" type="text">
                    <span class="field-validation-valid iconfont error" data-valmsg-for="CandAge" data-valmsg-replace="true"></span>
                </div>
                <div class="fl flw">
                    <label for="CandSchool">毕业院校：</label>
                    <input id="CandSchool" name="CandSchool" type="text">
                </div>
            </div>
            <div class="position-r clear">
                <div class="fl flw">
                    <label for="CandTel"><i class="c-red">*</i>电　　话：</label>
                    <input data-val="true" data-val-regex="手机格式不正确" data-val-regex-pattern="^((1[3-8]{1}[0-9]{1})+\d{8})$" data-val-required="请输入您的联系方式" id="CandTel" name="CandTel" type="text">
                    <span class="field-validation-valid iconfont error" data-valmsg-for="CandTel" data-valmsg-replace="true"></span>
                </div>
                <div class="fl flw">
                    <label for="CandProfessional">专　　业：</label>
                    <input id="CandProfessional" name="CandProfessional" type="text">
                </div>
            </div>
            <div class="position-r clear">
                <div class="fl flw">
                    <label for="CandEmail"><i class="c-red">*</i>邮　　箱：</label>
                    <input data-val="true" data-val-regex="邮箱格式不正确" data-val-regex-pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" data-val-required="请输入您的邮箱" id="CandEmail" name="CandEmail" type="text">
                    <span class="field-validation-valid iconfont error" data-valmsg-for="CandEmail" data-valmsg-replace="true"></span>
                </div>
                <div class="fl flw">
                    <label for="CandEducation">学 历：</label>
                    <select data-val="true" data-val-number="字段 CandEducation 必须是一个数字。" data-val-required="CandEducation 字段是必需的。" id="CandEducation" name="CandEducation"><option value="1">小学        </option>
<option value="2">初中        </option>
<option value="3">中技        </option>
<option value="4">中专        </option>
<option value="5">高中        </option>
<option selected="selected" value="6">大专        </option>
<option value="7">本科        </option>
<option value="8">硕士        </option>
<option value="9">博士        </option>
</select>
                </div>
            </div>
            <div class="position-r address">
                <label for="CandAddr"><i class="c-red">*</i>地 址：</label>
                <input class="address" data-val="true" data-val-required="请输入您的地址" id="CandAddr" name="CandAddr" placeholder="如XX省XX市（区）XX县" type="text">
                <span class="field-validation-valid iconfont error" data-valmsg-for="CandAddr" data-valmsg-replace="true"></span>
            </div>
            <div class="position-r clear">
                <label class="fl" for="CandIntro"><i class="c-red">*</i>自我介绍：</label>
                <textarea cols="20" data-val="true" data-val-required="自我介绍不能为空" id="CandIntro" name="CandIntro" placeholder="建议自我介绍应包含：1、爱好、籍贯、学历或业务经历（应注意与公司有关）；2、专业知识、学术背景（应注意与岗、职有关）；3、优点、技能（应突出能对公司所作的贡献）；" rows="5"></textarea>
                <span class="field-validation-valid iconfont error" data-valmsg-for="CandIntro" data-valmsg-replace="true"></span>
            </div>
            <div class="position-r yzm clear">
                <label class="fl" for="ImgCode"><i class="c-red">*</i>验 证 码：</label>
                <input class="yzm fl" data-val="true" data-val-required="验证码不能为空" id="ImgCode" name="ImgCode" placeholder="请输入图形验证码" type="text">
                <img src="job_files/imageverifycode.jpg" class="code" alt="点击更换" onclick="this.src = '/common/imageverifycode' + '?v=' + Math.random();">
                <span class="tip">点击图片刷新</span>
                <span class="field-validation-valid iconfont error" data-valmsg-for="ImgCode" data-valmsg-replace="true"></span>
            </div>
            <div class="box">
                <label></label>
                <button class="test-btn iconfont" type="button" id="JoinFormBtn">提交</button>
            </div>
</form>
        <div class="self-contact">
                <div class="photo">
                    <img src="job_files/20181127083911964931768751964000012.jpg" alt="">
                </div>
                <ul class="iconfont">
                    <li class="name">联系我：<span class="name">纪淼</span></li>
                    <li class="location">北京市  中国人保</li>
                    <li class="tel">
                        <a href='javascript:(function(){%20$("#bottom-open").click();%20$("#PopUserName").focus();%20})();' class="order">预约咨询</a>
                    </li>
                    
                        <li class="weixin">微信咨询：</li>
                            <li>
                                <img src="job_files/HgAbABYAEQBVAB0AHwBDAF0ABQBBABQADgANAFMAXwAfAFsAGQACAE0AEwAK.txt" alt="">
                            </li>
                </ul>
            
        </div>


    </div>
</div>
<%@include file="_foot.jsp" %>
</body>
</html>