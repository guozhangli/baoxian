<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div class="city-footer">
		<div class="b_content">
			Copyright © 2008-2019 <a href="http://www.vobao.com/" target="_blank">沃保网</a>
			厦门诚创网络股份有限公司 版权所有 <br> 闽ICP备08003619号 <a
				href="http://www.syywxki.cn/" target="_blank">中国人保</a> <a
				href="http://user.vobao.com/main.shtml" target="_blank">网站管理</a> <span
				id="cnzz_stat_icon_30088425"> <a
				href="http://quanjing.cnzz.com/" target="_blank" title="全景统计"> <img
					src="index_files/2.gif" vspace="0" border="0" hspace="0">
			</a>
			</span> <span id="cnzz_stat_icon_30088424"> <a
				href="http://quanjing.cnzz.com/" target="_blank" title="全景统计"> <img
					src="index_files/2.gif" vspace="0" border="0" hspace="0">
			</a>
			</span> <a href="http://www.syywxki.cn/jiameng">人才加盟</a>
		</div>
	</div>
<div class="demand">
		<div style="left: -2000px;" class="demand-wrap" id="bottom-float">
			<form action="/home/insertpop" id="InsertPopForm" method="post">
				<input name="__RequestVerificationToken"
					value="u9JxhQcyETxX3iPdpd1bzKo8wb_1H2i6z-z3tiGvkNKtgoT32Kr9MM5zyZbCUpvtR1V9JNv6M62_reOwfSZ1FTyEBe-JDerkk51UfzmB6fw1"
					type="hidden"><input value="10214" data-val="true"
					data-val-number="字段 MonTp 必须是一个数字。"
					data-val-required="MonTp 字段是必需的。" id="MonTp" name="MonTp"
					type="hidden">
				<div class="demand-box clear">
					<div class="left">
						<p>
							<span>124901</span>个用户完善保障计划
						</p>
						<img src="index_files/demand-title.png" alt="">
					</div>
					<div class="infor">
						<input class="name" data-val="true" data-val-required="请输入您的姓名"
							id="PopUserName" name="UserName" placeholder="请输入您的姓名"
							type="text"> <input class="name" data-val="true"
							data-val-regex="手机格式不正确"
							data-val-regex-pattern="^((1[3-8]{1}[0-9]{1})+\d{8})$"
							data-val-required="请输入您的手机号码" id="PopTel" name="Tel"
							placeholder="请输入您的联系方式"
							style="width: 143px; margin: 13px 9px 0 0;" type="text">
						<input class="code" data-val="true" data-val-required="请输入验证码"
							id="PopCode" name="Code" placeholder="手机验证码" type="text">
						<input class="yzm yzm1" value="获取验证码" id="InserPopCodeBtn"
							data-url="/common/sendverifycode" type="button">
					</div>
					<textarea cols="30" data-val="true" data-val-required="请输入留言内容"
						id="PopCont" name="Cont" placeholder="请输入您要咨询的内容" rows="3"></textarea>
					<a href="javascript:void(0)" id="InsertPopBtn" class="subimt">马上<br>提交
					</a>
					<div class="WeChat">
						<img src="index_files/weix.png" alt="" style="width: 90px;">
						<p>扫一扫微信留言</p>
					</div>
					<img src="index_files/close-icon.png" alt="" class="close"
						id="bottom-close">
				</div>
			</form>
		</div>

	</div>
	<div id="divLoadFormPartial"></div>
	<script src="index_files/jquery.txt"></script>


	<script src="index_files/jquery_002.js"></script>
	<script src="index_files/Base.txt"></script>


	<script src="index_files/swiper.js"></script>
	<script src="index_files/jquery.js"></script>

	<script src="index_files/HomeIndex.txt"></script>

	<script>
		$(function() {
			var cusNo = $("#currUserID").val();
			cusNo = parseInt(cusNo.substr(cusNo.length - 1, 1));
			if (!cusNo || cusNo > 8)
				cusNo = 0;
			cusNo = new Array("沃保社区", "保险社区", "互联网保险学堂", "保险知识", "新人怎么学做保险",
					"保险课程", "保险学习", "保险学堂", "保险专业课程")[cusNo];
			$("#cusLink1").html(cusNo).attr("title", cusNo);
		});
	</script>


<!-- 	<script language="javascript" src="index_files/floatButton.js"></script>
	<script language="javascript"
		src="index_files/floatButtonStatic_002.js"></script>
	
	<script language="javascript" src="index_files/floatButtonStatic.js"></script>
	<div>
		<div
			style="position: absolute; z-index: 2147480000; top: 150px; right: 5px;"
			class="lim_float_icon" id="212536live800182593" lim_company="212536"
			lim_float="1" lim_close="0" lim_side="5" lim_top="150"
			lim_online="https%3A%2F%2Ficon.live800.com%2Ffileupload%2FCustomFileDownloadServer%3FcompanyID%3D212536%26fna%3D1541665388372212536"
			lim_offline="https%3A%2F%2Ficon.live800.com%2Ffileupload%2FCustomFileDownloadServer%3FcompanyID%3D212536%26fna%3D1541665388372212536">
			<div style="position: relative; z-index: 2147480000;"></div>
		</div>
	</div>
	<script language="javascript"
		src="index_files/floatButtonStatic_002_003.js"></script>
	<div></div>
	<script language="javascript"
		src="index_files/floatButtonStatic_002_002.js"></script>
	
	<script language="javascript"
		src="index_files/floatButtonStatic_003.js"></script>

	<script language="javascript"
		src="index_files/floatButtonStatic_002_002_002.js"></script>
	
	<script language="javascript" src="index_files/monitorStatic8_003.js"></script>
	<a
		style="display: none; position: absolute; top: 0px; left: 0; width: 0; height: 0"
		id="live800:link" href="javascript:void(0);">&nbsp;</a>

	<script language="javascript"
		src="index_files/monitorStatic8_002_004.js"></script>
	
	<script language="javascript"
		src="index_files/monitorStatic8_002_002.js"></script>
	
	<script language="javascript"
		src="index_files/monitorStatic8_002_003.js"></script> -->
	
	<script type="text/javascript">
		var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cspan id='cnzz_stat_icon_30088424'%3E%3C/span%3E%3Cscript src='"
						+ cnzz_protocol
						+ "w.cnzz.com/c.php%3Fid%3D30088424' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_003.js" type="text/javascript"></script>
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	<iframe class="spacer_frame" src="index_files/a.html"
		style="display: none;" id="lim_frame" width="0" height="0"></iframe>
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_006.js" type="text/javascript"></script>
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	<iframe class="spacer_frame" src="index_files/a_002.html"
		style="display: none;" id="lim_frame" width="0" height="0"></iframe>
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_005.js" type="text/javascript"></script>
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	<iframe class="spacer_frame" src="index_files/a_002_002.html"
		style="display: none;" id="lim_frame" width="0" height="0"></iframe>
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_004.js" type="text/javascript"></script>
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_003_002.js" type="text/javascript"></script>
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	<iframe class="spacer_frame" src="index_files/a_002_002_002_002.html"
		style="display: none;" id="lim_frame" width="0" height="0"></iframe>
	<span id="cnzz_stat_icon_30088424"></span>
	<script src="index_files/c_002_002.js" type="text/javascript"></script>
	
	<div class="lim_mini_wrap" style="display: none; bottom: 30px;"
		id="lim_mini_wrap">
		<div class="lim_mini_box"></div>
	</div>
	<div class="chat_entry" style="display: none;" id="lim_mini">
		<div id="lim_mini_icon" class="lim_mini_icon-message">
			<div id="lim_mini_new" class="lim_mini_badge"></div>
		</div>
	</div>
	<iframe class="spacer_frame"
		src="index_files/a_002_002_002_002_002.html" style="display: none;"
		id="lim_frame" width="0" height="0"></iframe>
	<script type="text/javascript">
		var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cspan id='cnzz_stat_icon_30088425'%3E%3C/span%3E%3Cscript src='"
						+ cnzz_protocol
						+ "w.cnzz.com/c.php%3Fid%3D30088425' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c_002.js" type="text/javascript"></script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c_002_006.js" type="text/javascript"></script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c_002_005.js" type="text/javascript"></script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c_002_004.js" type="text/javascript"></script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c_002_003.js" type="text/javascript"></script>
	<span id="cnzz_stat_icon_30088425"></span>
	<script src="index_files/c.js" type="text/javascript"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			//wjd 修改百度统计代码
			hm.src = "https://hm.baidu.com/hm.js?8947ab96e2f48e12a7491c69377ea194";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>