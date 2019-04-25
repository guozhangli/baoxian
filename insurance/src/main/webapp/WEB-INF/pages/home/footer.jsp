<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<footer id="footer">
	<div class="container">
		<div class="copyrights">
			© 2019 <a href="https://templatemag.com/">WuYan-Web Site Center</a> - All
			Rights Reserved.
		</div>
		<div class="footer-menu">
			<a href="https://templatemag.com/terms/">Terms of Service </a> <span>|</span>
			<a href="https://templatemag.com/license/">License</a> <span>|</span>
			<a href="https://templatemag.com/privacy/">Privacy Policy</a> <span>|</span>
			<a href="https://twitter.com/TemplateMag" target="_blank"
				class="sidebar-twitter" title="Follow us on Twitter"><i
				class="icon-twitter"></i></a> <a href="https://facebook.com/TemplateMag"
				target="_blank" class="sidebar-facebook"
				title="Follow us on Facebook"><i class="icon-facebook"></i></a> <a
				href="https://feeds.feedburner.com/TemplateMag" target="_blank"
				class="sidebar-rss" title="Subscribe to our RSS feed"><i
				class="icon-rss"></i></a> <a
				onclick="javascript:window.open('https://feedburner.google.com/fb/a/mailverify?uri=TemplateMag', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true"
				class="sidebar-mail" title="Subscribe via Email"><i
				class="icon-mail-alt" style="cursor: pointer;"></i></a>
		</div>
	</div>
	</footer>
	<a style="display: none;" href="#" class="scrolltop"><i
		class="icon-up-open" title="Go to top"></i></a>
	<div id="cookie-law-info-again"
		style="display: none; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); position: fixed; font-family: inherit; width: auto; bottom: 0px; right: 100px;">
		<span id="cookie_hdr_showagain">Privacy &amp; Cookies Policy</span>
	</div>
	<div class="cli-modal-backdrop cli-fade cli-settings-overlay"></div>
	<div class="cli-modal-backdrop cli-fade cli-popupbar-overlay"></div>
	<script>
		window.lazyLoadOptions = {
			elements_selector : "img[data-lazy-src],.rocket-lazyload",
			data_src : "lazy-src",
			data_srcset : "lazy-srcset",
			data_sizes : "lazy-sizes",
			skip_invisible : false,
			class_loading : "lazyloading",
			class_loaded : "lazyloaded",
			threshold : 300,
			callback_load : function(element) {
				if (element.tagName === "IFRAME"
						&& element.dataset.rocketLazyload == "fitvidscompatible") {
					if (element.classList.contains("lazyloaded")) {
						if (typeof window.jQuery != "undefined") {
							if (jQuery.fn.fitVids) {
								jQuery(element).parent().fitVids();
							}
						}
					}
				}
			}
		};

		// Listen to the Initialized event
		window
				.addEventListener(
						'LazyLoad::Initialized',
						function(e) {
							// Get the instance and puts it in the lazyLoadInstance variable
							var lazyLoadInstance = e.detail.instance;

							if (window.MutationObserver) {
								var observer = new MutationObserver(
										function(mutations) {
											mutations
													.forEach(function(mutation) {
														mutation.addedNodes
																.forEach(function(
																		node) {
																	if (typeof node.getElementsByTagName !== 'function') {
																		return;
																	}

																	imgs = node
																			.getElementsByTagName('img');
																	iframes = node
																			.getElementsByTagName('iframe');
																	rocket_lazy = node
																			.getElementsByClassName('rocket-lazyload');

																	if (0 === imgs.length
																			&& 0 === iframes.length
																			&& 0 === rocket_lazy.length) {
																		return;
																	}

																	lazyLoadInstance
																			.update();
																});
													});
										});

								var b = document.getElementsByTagName("body")[0];
								var config = {
									childList : true,
									subtree : true
								};

								observer.observe(b, config);
							}
						}, false);
	</script>
	<script data-no-minify="1" async=""
		src="${ctx}/home_files/lazyload.js"></script>
	<script
		src="${ctx}/home_files/19095b9815d3858e3419e78e4bd3d64b.js"
		data-minify="1"></script>
	<nav style="top: 75px;" id="mobile-nav">
	<ul id="" class="">
		<li><a href="${ctx}/" class="active">首页</a></li>
		<li><a href="${ctx}/product/">保险产品</a></li>
		<li><a href="https://templatemag.com/license/">保险咨讯</a></li>
		<li><a href="https://templatemag.com/blog/">工作招聘</a></li>
		<li><a href="https://templatemag.com/members/?nav=support"
			rel="nofollow">个人介绍</a></li>
		<li><a href="https://templatemag.com/contact/">咨询留言</a></li>
		<li class="members"><a href="https://templatemag.com/members/"
			rel="nofollow"> <i class="icon-login"></i> 登录
		</a></li>
	</ul>
	</nav>
	<div id="mobile-body-overly"></div>
</body>
</html>