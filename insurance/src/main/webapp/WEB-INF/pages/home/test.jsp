<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 页面描述 -->
    <meta name="description" content="保险网纪淼为您提供在线免费的投保需求测试服务。">
    <!-- 页面关键词 -->
    <meta name="keywords" content="投保需求测试">
<title>投保需求测试_保险网纪淼</title>
</head>
<body>
<%@include file="_head.jsp" %>
<div class="plan-detail">
    <div class="breadcrumb">
        <ul class="wrapper clear">
            <li><a href="http://www.syywxki.cn/">首页</a></li>
            <li>&gt;</li>
            <li>投保测试</li>
        </ul>
    </div>
    <div class="wrapper clear Insurance">
<form novalidate="novalidate" action="/home/insertbaorequest" id="TouBaoForm" method="post"><input name="__RequestVerificationToken" value="Hlo-2VAGtzymarUAZ1jVLv_cQG8GfN1WvcWh0MWjDwIsg5upHLneo8slFOkuxdNVoqvgo-PaOhSij-Kep_nquBNlGKEUeyufjamGj5HO_M41" type="hidden"><input value="10211" data-val="true" data-val-number="字段 MonTp 必须是一个数字。" data-val-required="MonTp 字段是必需的。" id="MonTp" name="MonTp" type="hidden">            <div class="box sex">
                <label><i class="c-red">*</i>性别：</label>
                <div class="dib">
                    <input checked="checked" class="regular-radio" data-val="true" data-val-number="字段 PersonSex 必须是一个数字。" data-val-required="请选择您的性别" id="PersonSex_1" name="PersonSex" value="1" type="radio">
                    <label for="PersonSex_1" id="PersonSex1">男</label>
                    <input class="regular-radio" id="PersonSex_0" name="PersonSex" value="0" type="radio">
                    <label for="PersonSex_0" id="PersonSex0">女</label>
                </div>
                <span class="field-validation-valid iconfont error" data-valmsg-for="PersonSex" data-valmsg-replace="true"></span>
            </div>
            <div class="box select">
                <label><i class="c-red">*</i>出生年月：</label>
                <select data-val="true" data-val-number="字段 BornYear 必须是一个数字。" data-val-required="BornYear 字段是必需的。" id="BornYear" name="BornYear"><option value="1939">1939年</option>
<option value="1940">1940年</option>
<option value="1941">1941年</option>
<option value="1942">1942年</option>
<option value="1943">1943年</option>
<option value="1944">1944年</option>
<option value="1945">1945年</option>
<option value="1946">1946年</option>
<option value="1947">1947年</option>
<option value="1948">1948年</option>
<option value="1949">1949年</option>
<option value="1950">1950年</option>
<option value="1951">1951年</option>
<option value="1952">1952年</option>
<option value="1953">1953年</option>
<option value="1954">1954年</option>
<option value="1955">1955年</option>
<option value="1956">1956年</option>
<option value="1957">1957年</option>
<option value="1958">1958年</option>
<option value="1959">1959年</option>
<option value="1960">1960年</option>
<option value="1961">1961年</option>
<option value="1962">1962年</option>
<option value="1963">1963年</option>
<option value="1964">1964年</option>
<option value="1965">1965年</option>
<option value="1966">1966年</option>
<option value="1967">1967年</option>
<option value="1968">1968年</option>
<option value="1969">1969年</option>
<option value="1970">1970年</option>
<option value="1971">1971年</option>
<option value="1972">1972年</option>
<option value="1973">1973年</option>
<option value="1974">1974年</option>
<option value="1975">1975年</option>
<option value="1976">1976年</option>
<option value="1977">1977年</option>
<option value="1978">1978年</option>
<option value="1979">1979年</option>
<option value="1980">1980年</option>
<option value="1981">1981年</option>
<option value="1982">1982年</option>
<option value="1983">1983年</option>
<option value="1984">1984年</option>
<option value="1985">1985年</option>
<option value="1986">1986年</option>
<option value="1987">1987年</option>
<option value="1988">1988年</option>
<option selected="selected" value="1989">1989年</option>
<option value="1990">1990年</option>
<option value="1991">1991年</option>
<option value="1992">1992年</option>
<option value="1993">1993年</option>
<option value="1994">1994年</option>
<option value="1995">1995年</option>
<option value="1996">1996年</option>
<option value="1997">1997年</option>
<option value="1998">1998年</option>
<option value="1999">1999年</option>
<option value="2000">2000年</option>
<option value="2001">2001年</option>
<option value="2002">2002年</option>
<option value="2003">2003年</option>
<option value="2004">2004年</option>
<option value="2005">2005年</option>
<option value="2006">2006年</option>
<option value="2007">2007年</option>
<option value="2008">2008年</option>
<option value="2009">2009年</option>
<option value="2010">2010年</option>
<option value="2011">2011年</option>
<option value="2012">2012年</option>
<option value="2013">2013年</option>
<option value="2014">2014年</option>
<option value="2015">2015年</option>
<option value="2016">2016年</option>
<option value="2017">2017年</option>
<option value="2018">2018年</option>
<option value="2019">2019年</option>
</select>
                <select data-val="true" data-val-number="字段 BornMouth 必须是一个数字。" data-val-range="月份不正确" data-val-range-max="12" data-val-range-min="1" data-val-required="BornMouth 字段是必需的。" id="BornMouth" name="BornMouth"><option selected="selected" value="1">01月</option>
<option value="2">02月</option>
<option value="3">03月</option>
<option value="4">04月</option>
<option value="5">05月</option>
<option value="6">06月</option>
<option value="7">07月</option>
<option value="8">08月</option>
<option value="9">09月</option>
<option value="10">10月</option>
<option value="11">11月</option>
<option value="12">12月</option>
</select>
            </div>
            <div class="box select">
                <label><i class="c-red">*</i>现 居 地：</label>
                <select class="AreaIdChange" data-appendid="#AreaId2" data-emptytag="#AreaId2,#AreaId3" data-url="/common/getarea" data-val="true" data-val-number="字段 AreaId1 必须是一个数字。" data-val-required="AreaId1 字段是必需的。" id="AreaId1" name="AreaId1"><option value="1">安徽</option>
<option value="710938900658">澳门</option>
<option selected="selected" value="2">北京市</option>
<option value="3">福建</option>
<option value="6">广东</option>
<option value="4">甘肃</option>
<option value="7">广西</option>
<option value="8">贵州</option>
<option value="395">湖北</option>
<option value="10">河北</option>
<option value="12">黑龙江</option>
<option value="11">河南</option>
<option value="14">湖南</option>
<option value="9">海南</option>
<option value="15">吉林</option>
<option value="16">江苏</option>
<option value="17">江西</option>
<option value="18">辽宁</option>
<option value="19">内蒙古</option>
<option value="20">宁夏</option>
<option value="21">青海</option>
<option value="26">四川</option>
<option value="22">山东</option>
<option value="25">上海市</option>
<option value="23">山西</option>
<option value="24">陕西</option>
<option value="27">天津市</option>
<option value="710938894382">台湾</option>
<option value="28">西藏</option>
<option value="5">香港</option>
<option value="29">新疆</option>
<option value="30">云南</option>
<option value="31">浙江</option>
<option value="32">重庆市</option>
</select>
                <select class="AreaIdChange" data-appendid="#AreaId3" data-emptytag="#AreaId3" data-url="/common/getarea" data-val="true" data-val-number="字段 AreaId2 必须是一个数字。" data-val-required="请选择您的地区" id="AreaId2" name="AreaId2"><option selected="selected" value="49">北京</option>
<option value="634575231201">昌平</option>
<option value="368">朝阳</option>
<option value="640687719211">东城</option>
<option value="634575234901">大兴</option>
<option value="634575236912">房山</option>
<option value="663244390538">丰台</option>
<option value="624448971629">海淀</option>
<option value="634575239707">怀柔</option>
<option value="634575242141">门头沟</option>
<option value="634575249939">密云</option>
<option value="634575251210">平谷</option>
<option value="663244395851">石景山</option>
<option value="634575254421">顺义</option>
<option value="634575256323">通州</option>
<option value="634575259328">西城</option>
<option value="634575265954">延庆</option>
</select>
                <select data-val="true" data-val-number="字段 AreaId3 必须是一个数字。" id="AreaId3" name="AreaId3"></select>
                <span class="field-validation-valid iconfont error" data-valmsg-for="AreaId2" data-valmsg-replace="true"></span>
            </div>
            <div class="box demand">
                <label><i class="c-red">*</i>保障需求：<p>（可多选）</p></label>
                <div class="dib">
                    <input id="checkbox-1-1" class="regular-checkbox" name="BaoTagId" value="47904" data-val="true" data-val-checkboxrange="请选择保障需求" data-val-checkboxrange-max="8" data-val-checkboxrange-min="1" type="checkbox">
                    <label for="checkbox-1-1"></label><span>重疾险</span>
                    <input id="checkbox-1-2" class="regular-checkbox" name="BaoTagId" value="47903" type="checkbox">
                    <label for="checkbox-1-2"></label><span>养老险</span>
                    <input id="checkbox-1-3" class="regular-checkbox" name="BaoTagId" value="47906" type="checkbox">
                    <label for="checkbox-1-3"></label><span>人寿险</span>
                    <input id="checkbox-1-4" class="regular-checkbox" name="BaoTagId" value="47902" type="checkbox">
                    <label for="checkbox-1-4"></label><span>少儿险</span>
                    <input id="checkbox-1-5" class="regular-checkbox" name="BaoTagId" value="47901" type="checkbox">
                    <label for="checkbox-1-5"></label><span>意外险</span>
                    <input id="checkbox-1-6" class="regular-checkbox" name="BaoTagId" value="47905" type="checkbox">
                    <label for="checkbox-1-6"></label><span>医疗险</span>
                    <input id="checkbox-1-7" class="regular-checkbox" name="BaoTagId" value="47907" type="checkbox">
                    <label for="checkbox-1-7"></label><span>理赔险</span>
                    <input id="checkbox-1-8" class="regular-checkbox" name="BaoTagId" value="48001" type="checkbox">
                    <label for="checkbox-1-8"></label><span>车险</span>
                </div>
                <span class="field-validation-valid iconfont error" data-valmsg-for="BaoTagId" data-valmsg-replace="true"></span>
            </div>
            <div class="box select">
                <label><i class="c-red">*</i>年缴保费预算：</label>
                <select data-val="true" data-val-number="字段 PremiumId 必须是一个数字。" data-val-required="PremiumId 字段是必需的。" id="PremiumId" name="PremiumId"><option selected="selected" value="1">2000元以下</option>
<option value="2">2000元-5000元</option>
<option value="3">5000元-10000元</option>
<option value="4">10000元-15000元</option>
<option value="5">15000-30000元</option>
<option value="6">30000元以上</option>
<option value="7">不确定</option>
</select>
            </div>
            <p class="tips">填写联系方式，免费获得专业投保建议</p>
            <div class="box username">
                <label for="UserName"><i class="c-red">*</i>您的称呼：</label>
                <input data-val="true" data-val-length="您的称呼不能超过40个字符" data-val-length-max="40" data-val-required="请输入您的称呼" id="UserName" name="UserName" placeholder="必填" type="text">
                <span class="field-validation-valid iconfont error" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
            </div>
            <div class="box tel">
                <label for="Tel"><i class="c-red">*</i>手机号码：</label>
                <input data-val="true" data-val-regex="手机格式不正确" data-val-regex-pattern="^((1[3-8]{1}[0-9]{1})+\d{8})$" data-val-required="手机号不能为空" id="Tel" name="Tel" placeholder="必填" type="text">
                <span class="field-validation-valid iconfont error" data-valmsg-for="Tel" data-valmsg-replace="true"></span>
            </div>
            <div class="box yzm">
                <label for="Code"><i class="c-red">*</i>短信验证码：</label>
                <input data-val="true" data-val-required="验证码不能为空" id="Code" name="Code" placeholder="必填" type="text">
                <button class="code-btn yzm-btn yzm-btn-click" type="button" data-tel="#Tel" data-normalclass="yzm-btn-click" data-sendclass="yzm-btn-avtive" data-url="/common/sendverifycode" data-slidecodegeturl="/common/getslideverifycode?callback=getSlideCodeCallback" data-slidecodegeturlv="/common/checkslideverifycode?callback=slideCodeV">获取验证码</button>

                <span class="field-validation-valid iconfont error" data-valmsg-for="Code" data-valmsg-replace="true"></span>
            </div>
            <div class="box yzm">
                <label for="yzm"></label>
                <button class="test-btn iconfont" type="button" id="TouBaoFormBtn">完成测试</button>
            </div>
</form>    </div>
</div>
<!-- 验证弹出框 -->
<div class="yz_apopcon">
    <div class="yz_astit">
        <span class="yz_astitone">请完成以下验证</span> <span class="yz_sclose"></span>
    </div>
    <div class="yz_asmainl">
        <div class="htmleaf-container">
            <div class="container">
                <div id="drag">
                </div>
            </div>
        </div>
        <div class="yz_wz" style="display: none">
            <div class="yz_ts">
                <span class="yz_ts01" id="" style="display: none">验证码点击错误，请重试</span> <span class="yz_ts02">
                    <img src="ceshi_files/yz_sx011.png" alt="刷新验证码" title="">
                </span>
            </div>
            <img class="tc01">
        </div>
    </div>
</div>
<%@include file="_foot.jsp" %>
</body>
</html>