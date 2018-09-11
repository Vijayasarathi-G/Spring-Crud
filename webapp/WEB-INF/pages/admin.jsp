<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

<style type="text/css">
/* header */
header[role=banner] {
	background: white;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.15);
}

header[role=banner] h1 {
	margin: 0;
	font-weight: 300;
	padding: 1rem;
}

header[role=banner] h1:before {
	content: "\f248";
	font-family: FontAwesome;
	padding-right: .6em;
	color: turquoise;
}

header[role=banner] .utilities {
	width: 100%;
	background: slategray;
	color: #ddd;
}

header[role=banner] .utilities li {
	border-bottom: solid 1px rgba(255, 255, 255, 0.2);
}

header[role=banner] .utilities li a {
	padding: .7em;
	display: block;
}

/* header */
.utilities a:before {
	content: "\f248";
	font-family: FontAwesome;
	padding-right: .6em;
}
.lblog .box .desc .date.alignnone { margin: 5px 20px 20px 0; }
.aligncenter, div.aligncenter { display: block; margin: 5px auto 5px auto; }
.alignright { float: right; margin: 5px 0 20px 20px; }
.alignleft { float: left; margin: 5px 20px 20px 0; }
.aligncenter { display: block; margin: 5px auto 5px auto; }
a img.alignright { float: right; margin: 5px 0 20px 20px; }
a img.alignnone { margin: 5px 20px 20px 0; }
a img.alignleft { float: left; margin: 5px 20px 20px 0; }
a img.aligncenter { display: block; margin-left: auto; margin-right: auto }
.wp-caption { background: #fff; border: 1px solid #f0f0f0; max-width: 96%; padding: 5px 0 10px; text-align: center; }
.wp-caption.alignnone { margin: 5px 20px 20px 0; }
.wp-caption.alignleft { margin: 5px 20px 20px 0; }
.wp-caption.alignright { margin: 5px 0 20px 20px; }
.wp-caption img { border: 0 none; height: auto; margin: 0; max-width: 98.5%; padding: 0; width: auto; }
.wp-caption p.wp-caption-text { font-size: 11px; line-height: 17px; margin: 0; padding: 15px 4px 5px; }
html { background: #fff; }
body { font-family: 'Open Sans', sans-serif; height: auto !important; background: #fff; color: #666; font-size: 16px; line-height: 1.428571429; -webkit-backface-visibility: hidden; } 
* { box-sizing: border-box; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -o-box-sizing: border-box; -ms-box-sizing: border-box; }
form { margin: 0; }
body, input, button, select, textarea, .navbar-search .search-query { font-weight: 400; -webkit-font-smoothing: antialiased; }
label { font-weight: normal; font-size: inherit; }
h1, h2, h3, h4, h5, h6 { margin: 0 0 15px 0; color: #333; font-weight: 300; line-height: 120%; }
h1 { margin:0 0 15px 0; font-size: 48.5px; }
h1, h2 { letter-spacing: -1px; }
small { line-height: 14px; }
code, pre { padding: 2px 5px; border: none; border-radius: 0; background-color: #f5f5f5; color: #dd3f19; font-size: 13px; font-family: Menlo, Consolas, "Courier New", monospace; }
pre { padding: 20px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; }
p { margin: 0 0 20px; }
p img { margin: 10px 0; }
p img.wp-smiley { margin: 0; }
ul, ol { margin: 0 0 20px 25px; }
a, a > * { text-decoration: none; -webkit-transition: all .2s ease; -moz-transition: all .2s ease; -o-transition: all .2s ease; transition: all .2s ease; }
a, a > *, a:focus { color: #333; }
.p-lr-0{ padding-left: 0px !important; padding-right: 0px !important;}
/*a:hover { color: #dd3f19; }*/
a:hover { color:#F67107; }
a:focus, a:hover, a:focus, .btn:focus { outline: none; text-decoration: none; }
a i, a i > *, a i:focus { color: #fff; }
a.inverse, a > *.inverse, a.inverse:focus { color: #dd3f19; }
a.inverse:hover { color: #333; }
a.light-gray, a > *.light-gray, a.light-gray:focus, a.light-gray i, a.light-gray i > *, a.light-gray i:focus { color: #adadad; }
a.light-gray:hover, a.light-gray:hover i { color: #dd3f19; }
hr { margin: 0; border: 0; border-top: 1px solid #e5e5e5; border-bottom: 1px solid #ffffff; }
blockquote { position: relative; margin: 0 0 20px; padding: 5px 0 5px 25px; border-left: 3px solid #e5e5e5; font-size: 125%; }
blockquote p { margin: auto; font-weight: inherit; font-size: inherit; line-height: inherit; }
blockquote small { margin-top: 10px; }
blockquote cite { color: #dd3f19; }
.row-fluid [class*="span"] { min-height: inherit; }
.content { position: relative; width: 100%; background: #fff; z-index: 1; }
.upper { text-transform: uppercase; }
.bolder { font-weight: 400; }
.headline { margin-bottom: 15px; color: #7f7f7f; color: rgba(0, 0, 0, .5); font-size: 122%; line-height: 1.6; }
.headline.text-center { padding: 0 80px; }
 .p-lr-0{ padding-left:0px; padding-right:0px;}
 .m-b-20{margin-bottom:20px;}
p:empty { display: none; }
p.no-margin, p.no-margin img { margin: 0; }
.loose li { padding: .25em 0; }
.gap10 { height: 10px; }
.gap20 { height: 20px; }
.gap30 { height: 30px; }
.gap40 { height: 40px; }
.gap50 { height: 50px; }
.gap60 { height: 60px; }
.gap70 { height: 70px; }
.gap80 { height: 80px; }
.gap90 { height: 90px; }
.gap100 { height: 100px; }
.gap114 { height: 110px; }

/* Backup - 09-12-2015 Testing javascript Conflict. (Sunny - Dhaval)
.fadeFromTop { position: relative; top: -50px; opacity: 0; }
.fadeFromBottom { position: relative; top: 50px; opacity: 0; }
.fastFadeFromTop { position: relative; top: -50px; opacity: 0; }
.fastFadeFromBottom { position: relative; top: 50px; opacity: 0; }*/

.fadeFromTop { position: relative; top: 00px; opacity: 1 !important; }
.fadeFromBottom { position: relative; top: 00px; opacity: 1 !important; }
.fastFadeFromTop { position: relative; top: 00px; opacity: 1 !important; }
.fastFadeFromBottom { position: relative; top: 00px; opacity: 1 !important; }

.pull-top { margin-top: -475px; }
.contact-bar, .search-bar { position: fixed; left: 0; z-index: 1040; width: 100%; background: #FBAD42; color: #fff; color: rgba(255, 255, 255, .6); }
.contact-bar .container { padding: 20px 0; }
.search-bar .container { padding: 50px 0; }
.contact-bar .close, .search-bar .close { position: absolute; top: 12px; right: 12px; color: #fff; font-weight: 300; font-size: 50px; opacity: .4; filter: alpha(opacity=40); }
.contact-bar .close:hover, .search-bar .close:hover { opacity: 1; filter: alpha(opacity=100); }
.contact-bar h3 { color: #fff; }
.contact-bar p { color: #fff; color: rgba(255, 255, 255, .6); }
.contact-bar .btn-simple.btn-inverse:hover { background: #333; }
.search-bar input[type="text"].input-inverse { height: auto; border-color: #fff; border-color: rgba(255, 255, 255, .4); font-size: 20px; line-height: 26px; }
.search-bar input[type="text"].input-inverse:focus { border-color: #fff; }
.contact-bar-corner, .search-bar-corner { position: absolute; top: 0; left: 50%; display: none; margin-left: -7px; border-top: 7px solid #dd3f19; border-right: 7px solid transparent; border-left: 7px solid transparent; }
header { background: #fff; }
header .navbar-fixed-top .navbar-inner { background: #fff; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
header .navbar-inner { border: none;  background: -moz-linear-gradient(center top, #fafafa, #d2d4d4) repeat scroll 0 0 rgba(0, 0, 0, 0) filter: progid: DXImageTransform.Microsoft.gradient(startColorstr=#50000000, endColorstr=#50000000);
-webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .navbar .btn-navbar { margin: 44px 0; padding: 0; border: none; background: transparent; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: #fff; text-shadow: none; -webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .sticky.navbar .btn-navbar { margin: 24px 0; }
header .navbar-fixed-top .navbar-inner { height: 110px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.055); -webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.055); -moz-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.055); -ms-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.055); -o-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.055); }
header .navbar .btn-navbar:hover, header .navbar .btn-navbar:focus, header .navbar .btn-navbar:active, header .navbar .btn-navbar.active, header .navbar .btn-navbar.disabled, header .navbar .btn-navbar[disabled] { background: transparent; }
header .navbar .btn-navbar .icon-bar { -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background: #fff; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
header .navbar .brand { margin: auto; padding: 0; max-width: 250px; max-height: 70px; color: #fff; text-transform: uppercase; text-shadow: none; }
header .sticky.navbar .brand { max-height: 65px; }
header .navbar .brand span { color: #fff; }
header .navbar .brand img { /*max-height:47px !important;*/ max-height:67px !important; }
header .sticky.navbar .brand img { max-height: 100%; }
header .navbar .nav > li > a { position: relative; padding-top: 40px; padding-bottom: 40px; color: rgba(255, 255, 255, .6); text-transform: uppercase; text-shadow: none; font-weight: 600; font-size: 11px; }
header .sticky.navbar .nav > li > a { padding-top: 20px; padding-bottom: 20px; }
header .navbar .nav > li > a:focus, header .navbar .nav > li > a:hover, header .navbar .nav > .active > a, header .navbar .nav > .active > a:hover, header .navbar .nav > .active > a:focus { background: rgba(0, 0, 0, .4); -webkit-box-shadow: inset 0 -2px 0 #dd3f19; -moz-box-shadow: inset 0 -2px 0 #dd3f19; box-shadow: inset 0 -2px 0 #dd3f19; color: #fff; }
header .navbar .nav li.dropdown > a:hover .caret, header .navbar .nav li.dropdown > a:focus .caret { border-top-color: #dd3f19; border-bottom-color: #dd3f19; }
header .navbar .nav li.dropdown.open > .dropdown-toggle, header .navbar .nav li.dropdown.active > .dropdown-toggle, header .navbar .nav li.dropdown.open.active > .dropdown-toggle { background: rgba(0, 0, 0, .4); color: #fff; }
header .navbar .nav .dropdown-toggle .caret { position: absolute; bottom: -4px; left: 50%; margin: 5px 0 0 -3px; border-top: 4px solid #000; border-right: 4px solid transparent; border-left: 4px solid transparent; }
header .navbar .nav li.dropdown > .dropdown-toggle .caret { border-top-color: rgba(0, 0, 0, .6); border-bottom-color: rgba(0, 0, 0, .6); }
header .sticky.navbar .nav li.dropdown > .dropdown-toggle .caret { border-top-color: rgba(0, 0, 0, .8); border-bottom-color: rgba(0, 0, 0, .8); }
header .sticky.navbar .nav li.dropdown > a:hover .caret { border-top-color: #dd3f19; border-bottom-color: #dd3f19; }
header .navbar .nav li.dropdown.open > .dropdown-toggle .caret, header .navbar .nav li.dropdown.active > .dropdown-toggle .caret, header .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret { border-top-color: #dd3f19; border-bottom-color: #dd3f19; }
header .dropdown-menu { margin-top: 5px; padding: 10px 0; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background: rgba(0, 0, 0, .8); -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; -webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .sticky .dropdown-menu { background: rgba(34, 34, 34, .98); }
header .dropdown-menu > li > a { margin: 0; padding: 6px 20px; color: rgba(255, 255, 255, .8); font-size: 12px; -webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .dropdown-menu > li > a:hover, header .dropdown-menu > li > a:focus, header .dropdown-submenu:hover > a, header .dropdown-submenu:focus > a, header .dropdown-menu > .active > a, header .dropdown-menu > .active > a:hover, header .dropdown-menu > .active > a:focus { background: #dd3f19;  filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#dd3f19', endColorstr='#dd3f19', GradientType=0);
-webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; -webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .navbar .nav > li > .dropdown-menu:before { display: none; }
header .navbar .nav > li > .dropdown-menu:after { position: absolute; top: -4px; left: 10px; display: inline-block; display: none; border-right: 4px solid transparent; border-bottom: 4px solid rgba(0, 0, 0, .8); border-left: 4px solid transparent; content: ''; }
header .navbar .pull-right > li > .dropdown-menu, .navbar .nav > li > .dropdown-menu.pull-right { right: auto; left: 0; }
header .navbar .pull-right > li > .dropdown-menu:after, header .navbar .nav > li > .dropdown-menu.pull-right:after { right: auto; }
header .dropdown-submenu > a:after { margin-right: -30px; border-width: 3px 0 3px 3px; border-left-color: rgba(255, 255, 255, .6); -webkit-transition: all .2s ease-in-out; -moz-transition: all .2s ease-in-out; -o-transition: all .2s ease-in-out; transition: all .2s ease-in-out; }
header .navbar .search-bar-btn i { color: rgba(255, 255, 255, .6); }
header .navbar .search-bar-btn:hover i { color: #ff7302; }
.open > .dropdown-menu { -webkit-animation-name: slidenavAnimation; -moz-animation-name: slidenavAnimation; animation-name: slidenavAnimation; -webkit-animation-duration: .2s; -moz-animation-duration: .2s; animation-duration: .2s; -webkit-animation-timing-function: ease; -moz-animation-timing-function: ease; animation-timing-function: ease; -webkit-animation-iteration-count: 1; -moz-animation-iteration-count: 1; animation-iteration-count: 1; -webkit-animation-fill-mode: forwards; -moz-animation-fill-mode: forwards; animation-fill-mode: forwards; }
@keyframes slidenavAnimation {  from {
 opacity: 0;
}
to { opacity: 1; }
}
@-webkit-keyframes slidenavAnimation {  from {
 opacity: 0;
}
to { opacity: 1; }
}
footer { left: 0; width: 100%; float: left; background-color: #222; background-position: top center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; background-repeat: no-repeat; color: rgba(255, 255, 255, .3); text-align: center; font-size: 12px; }
.content { margin-bottom: 0px !important; }
footer .widget { margin: 50px 0; }
footer a { color: #fff; color: rgba(255, 255, 255, .6); }
footer .top-tier { }
footer .brand { display: block; height: 60px; }
footer .brand img { max-height: 100%; }
footer .social-links { display: inline-block; margin: 10px 0 0; padding: 8px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; -webkit-box-shadow: inset 0 0 0 1px #d9d9d9; -webkit-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .15); -moz-box-shadow: inset 0 0 0 1px #d9d9d9; -moz-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .15); box-shadow: inset 0 0 0 1px #d9d9d9; box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .15); }
footer .social-links li { display: inline; margin: 0; }
footer .social-links a { margin: 0; padding: 0 8px; text-align: center; opacity: 0.5; }
footer .social-links a:hover { opacity: 1; }
footer .bottom-tier { padding: 25px 0; background: #1b1b1b; }
footer .copyright { margin: 0; }
footer .copyright li { float: left; list-style: none; margin: 0 7px; }
.page-title { margin: 0; padding: 165px 0 84px; width: 100%; border: none; background-position: 49% center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; background-repeat: no-repeat; color: #fff; text-align: center; -webkit-backface-visibility: hidden; z-index: 1; position: relative; }
.page-title h1 { z-index: 2; color: #fff; text-shadow: 0 1px 1px rgba(0, 0, 0, .2); font-size: 48px; }
.page-title p { z-index: 2; margin: 0; padding: 0 150px; color: #fff; color: rgba(255, 255, 255, 0.7); font-weight: 300; font-size: 22px; font-family: "myriad-pro", "Helvetica Neue", Helvetica, Arial, sans-serif; line-height: 1.5; }
.page-title.page-title-high { padding: 175px 0 145px; }
.page-title.page-title-high h1 { font-size: 100px; }
.page-title.page-title-high p { padding: 0; font-size: 30px; }
.background-video { position: absolute; top: 0 !important; left: 0 !important; overflow: hidden; width: 100%; height: 100%; }
.background-video video { position: relative; min-width: 100%; min-height: 100%; }
[data-stellar-ratio] {
 z-index: 1;
 position: relative;
}
@media (max-width: 979px) {
body { padding-right: 0; padding-left: 0; }
.navbar-fixed-top { position: fixed; margin-bottom: 0; }
.navbar-fixed-top { margin-right: 0; margin-left: 0; }
.navbar-fixed-top .navbar-inner,  .navbar-fixed-bottom .navbar-inner { padding: 0; }
header .navbar .brand { width: 160px; position: absolute; }
header .navbar .nav > li > a { padding-top: 10px; padding-bottom: 10px; }
header .navbar .nav > li > a:focus,  header .navbar .nav > li > a:hover,  header .navbar .nav > .active > a,  header .navbar .nav > .active > a:hover,  header .navbar .nav > .active > a:focus { background: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: #fff; }
header .navbar .nav li.dropdown.open > .dropdown-toggle,  header .navbar .nav li.dropdown.active > .dropdown-toggle,  header .navbar .nav li.dropdown.open.active > .dropdown-toggle { background: #666; }
header .navbar .nav li.dropdown.open > .dropdown-toggle:hover,  header .navbar .nav li.dropdown.active > .dropdown-toggle:hover,  header .navbar .nav li.dropdown.open.active > .dropdown-toggle:hover { background: #dd3f19; }
header .sticky.navbar .nav > li > a { padding-top: 10px; padding-bottom: 10px; }
header .sticky .dropdown-menu { background: none; }
header .nav-collapse .nav > li > a,  header .nav-collapse .dropdown-menu a { color: #fff; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; }
header .nav-collapse .nav > li > a:hover,  header .nav-collapse .nav > li > a:focus,  header .nav-collapse .dropdown-menu a:hover,  header .nav-collapse .dropdown-menu a:focus { background-color: #dd3f19; }
header .navbar .nav .dropdown-toggle .caret { display: none; }
.flex-direction-nav .flex-prev { opacity: 1 !important; left: 30px !important; }
.flex-direction-nav .flex-next { opacity: 1 !important; right: 30px !important; }
.page-title h1 { font-size: 38px; }
.page-title p { font-size: 16px; padding: 0 50px; }
.page-title.page-title-high { padding: 175px 0 145px; }
.page-title.page-title-high h1 { font-size: 60px; }
.page-title.page-title-high p { padding: 0; font-size: 24; }
.single-portfolio .page-title { padding-bottom: 325px; }
.pull-top { margin-top: -375px; }
.single-portfolio .page-title h1 { font-size: 60px; }
.single-portfolio .page-title p { font-size: 23px; }
}
@media (max-width: 767px) {
h1 { font-size: 30px; }
.headline.text-center { padding: 0; }
.portfolio-fullwidth .filterable-items .row-fluid .span4 { width: 100%;  *width: 100%;
}
.portfolio-fullwidth .filterable-items .row-fluid .span6 {  width: 100%%;
}
.portfolio-fullwidth .filterable-items .row-fluid .span3 { width: 100%; }
.page-title h1 { font-size: 30px; }
.page-title p { font-size: 16px; padding: 0; }
.page-title.page-title-high h1 { font-size: 30px; }
.page-title.page-title-high p { padding: 0; font-size: 16px; }
.single-portfolio .page-title { padding-bottom: 225px; }
.pull-top { margin-top: -275px; }
.single-portfolio .page-title h1 { font-size: 36px; }
.single-portfolio .page-title p { font-size: 18px; padding: 10px 0 30px; }

.menu_mobile a i { display: none; }
.left-menu-height-6 { height: auto !important; }
.menubg-about { height: auto !important; background: none !important; }
.menubg-service { height: auto !important; background: none !important; }
.menubg-tool-platform { height: auto !important; background: none !important; }
.suppa_rwd_submenu .menu_mobile { padding-bottom: 0 !important; }
.suppaMenu_rwd_wrap .suppa_rwd_menu a div.menu-right-buton { background: none; color: #000; float: left; width: auto; padding-left: 25px; }
.menubg-tool-customers { height: auto !important; background: none !important; }
.menubg-partners { height: auto !important; background: none !important; }
.menubg-resource { height: auto !important; background: none !important; }
}
@media (max-width: 320px) {
h1 { font-size: 24px; }
}
@media (max-width: 640px) {
.qas_ul ul { margin: 0px; }
.qas_ul ul li { text-align: center !important; }
.backgrounded.fastFadeFromTop.qas-s5 p { width: 92%; }
}
.com { color: #93a1a1; }
.lit { color: #195f91; }
.pun, .opn, .clo { color: #93a1a1; }
.fun { color: #dc322f; }
.str, .atv { color: #dd3f19; }
.kwd, .prettyprint .tag { color: #3a77c1; }
.typ, .atn, .dec, .var { color: #44a22d; }
.pln { color: #48484c; }
.prettyprint { padding: 8px 15px; }
.prettyprint.linenums { }
ol.linenums { margin: 0 0 0 33px; }
ol.linenums li { padding-left: 12px; color: #bebec5; line-height: 20px; text-shadow: none; }
.single-portfolio .page-title { padding-bottom: 425px; padding-top: 130px; }
.single-portfolio .page-title.page-title-high h1 { font-size: 82px; }
.single-portfolio .page-title p { padding: 10px 100px 30px; border-bottom: 1px solid rgba(255, 255, 255, .2); }
.single-portfolio .page-title.page-title-high p { font-size: 23px; }
.project-details { position: relative; z-index: 100; margin-top: 30px; }
.project-details .info { text-align: left; font-size: 14px; line-height: 24px; }
.project-nav a { float: left; margin-left: 5px; width: 35px; height: 35px; -webkit-border-radius: 50%; -moz-border-radius: 50%; border-radius: 50%; background-size: 35px 35px; background-repeat: no-repeat; -webkit-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .4); -moz-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .4); box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .4); color: rgba(255, 2555, 255, .4); text-align: center; line-height: 33px; }
.project-nav a:hover { background-color: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; opacity: 1; }
.project-nav a.prev { background-image: url(../img/pagination_prev_inverse.png); }
.project-nav a.next { background-image: url(../img/pagination_next_inverse.png); }
.project-nav a.list { background-image: url(../img/pagination_list_inverse.png); }
.single-portfolio .project-info { font-size: 14px; line-height: 22px; }
#to-top { position: fixed; right: 30px; bottom: 30px; z-index: 9999; width: 45px; height: 45px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; background-color: #333; background-color: rgba(0, 0, 0, .5); background-image: url(../img/to_top.png); background-size: 45px 45px; background-repeat: no-repeat; text-align: center; font-size: 20px; line-height: 45px; }
#to-top:hover { background-color: #ff7302; }
#to-top i { color: #fff; }
.post { margin-bottom: 65px; font-size: 14px; line-height: 1.6; }
.post:first-child { margin-top: 0; }
.post .media-body > img, .post .media-body .picture-slider, .post .media-body .fluid-width-video-wrapper { margin-bottom: 25px; /*max-width: 100%;*/ }
.post .media-body .btn { margin-top: 10px; }
.post .date { position: relative; display: table; float: left; margin: 0 20px 0 0; width: 60px; height: 60px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; background: #dd3f19; text-align: center; font-size: 12px; line-height: 1.2; -webkit-transition: all .2s linear; -moz-transition: all .2s linear; -o-transition: all .2s linear; transition: all .2s linear; }
.post .date:after { position: absolute; top: 10px; right: -5px; display: inline-block; border-top: 5px solid transparent; border-bottom: 5px solid transparent; border-left: 5px solid #dd3f19; content: ''; -webkit-transition: all .2s linear; -moz-transition: all .2s linear; -o-transition: all .2s linear; transition: all .2s linear; }
.post .date:hover { background: #666; }
.post .date:hover:after { border-left: 5px solid #666; }
.post .date a { display: table-cell; margin: 0 auto; width: 100%; color: #fff; vertical-align: middle; }
.post .date i { font-size: 24px; }
.post h2 { margin: 0 0 15px; font-size: 48px; }
.post h2 a { color: #333; }
.post h2 a:hover { color: #dd3f19; }
.post-meta { display: inline-block; margin-bottom: 10px; border-bottom: 1px solid #dd3f19; }
.post-meta > div { display: inline-block; color: #adadad; }
.post-meta a { color: #adadad; }
.post-meta a:hover { color: #dd3f19; }
.post-entry { overflow: hidden; zoom: 1; text-align: left; }
.post-entry a { color:#F67107; }
.post-entry a:hover { text-decoration: underline; }
.media, .media-body { text-align: center; }
.thumbnail { display: block; margin-bottom: 50px; padding: 0; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.thumbnail .thumb { position: relative; text-align: center; }
.thumbnail .caption { padding: 25px 0 5px; text-align: center; }
.thumbnail .caption h4 { margin: 0 0 5px; text-align: center; }
.thumbnail .caption p { text-align: center; font-size: 12px; }
.thumbnail .caption hr { margin: 0 auto 20px; width: 50%; }
.thumbnail .caption .categores { margin-bottom: 10px; color: #a5a5a5; text-align: center; font-size: 11px; }
.thumbnail.team { margin-bottom: 20px; }
.thumbnail.team .caption .categores { margin-bottom: 20px; }
.thumbnail .post-meta { display: block; padding: 9px 25px; border-top: 1px solid #e5e5e5; border-bottom: 1px solid #e5e5e5; text-align: center; font-size: 11px; }
.thumbnail .post-meta > div { margin: 0 5px; }
.comments { font-size: 12px; }
.comments-title { margin-left: 80px; }
.comment-respond { margin-top: 20px; margin-left: 80px; }
.comment-respond p { margin-bottom: 10px !important; }
.comment-respond code { white-space: pre-line; }
.comment-reply-title { margin-bottom: 15px; }
p.form-allowed-tags { margin-bottom: 20px !important; }
.comments .media, .comments .media .media { margin-top: 25px; }
.comments .media > .media { margin-left: 80px; }
.comments .madia-image { position: relative; float: left; overflow: hidden; margin: 0 20px 0 0; width: 60px; height: 60px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; }
.comments .media-body { padding-top: 20px; border-top: 1px solid #e5e5e5; }
.comments li:last-child > .media-body { padding-bottom: 20px; border-bottom: 1px solid #e5e5e5; }
.comments .date { display: inline-block; margin-bottom: 5px; }
.comments p { margin: 0; }
.comments-form { margin-left: 80px; }
.filters { }
a.filters-btn:hover { background: transparent; -webkit-box-shadow: inset 0 0 0 1px #e5e5e5; -moz-box-shadow: inset 0 0 0 1px #e5e5e5; box-shadow: inset 0 0 0 1px #e5e5e5; color: #dd3f19; }
a.filters-btn:hover i { color: #dd3f19; }
.filters-set { position: relative; top: -1px; display: none; padding: 10px 25px; height: auto; border: 1px solid #e5e5e5; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; }
.filters-set a { display: block; margin: 7px 0 5px; color: #5c5c5c; font-size: 15px; }
.filters-set a:hover, .filters-set a:hover i { color: #dd3f19; }
.filters-set a i { margin-right: 3px; color: #5c5c5c; font-size: 14px; }
.filterable-items > .row { padding-bottom: 20px; }
.grid-item { position: relative; overflow: hidden; margin-bottom: 25px; text-align: center; -webkit-backface-visibility: hidden; }
.grid-item .thumb { position: relative; overflow: hidden; text-align: center; -webkit-backface-visibility: hidden; }
.grid-item .thumb span { position: relative; right: 50%; -webkit-backface-visibility: hidden; }
.grid-item .thumb span > img { margin-right: -100%; margin-bottom: -5px; }
.grid-item .overlay { position: absolute; top: 0; left: 0; width: 100%; height: 100%; text-align: center; opacity: 0; -webkit-transition: all .2s ease-out; -moz-transition: all .2s ease-out; -o-transition: all .2s ease-out; transition: all .2s ease-out; -webkit-backface-visibility: hidden; }
.grid-item .overlay:before { display: inline-block; height: 100%; content: ''; vertical-align: middle; }
.grid-item .thumb:hover .overlay { top: 0; background: rgba(0, 0, 0, .8); opacity: 1; }
.grid-item .title { margin-top: 10px; margin-bottom: 5px; font-size: 18px; }
.grid-item .like-btn, .grid-item .like-btn i { font-size: 12px; }
.portfolio-fullwidth .filterable-items .row-fluid .span4 { width: 33.2%;  *width: 33.333333333333333%;
}
.portfolio-fullwidth .filterable-items .row-fluid .span6 {  width: 49.8%%;
}
.portfolio-fullwidth .filterable-items .row-fluid .span3 { width: 24.9%; }
.portfolio-fullwidth .filterable-items .row-fluid [class*="span"] { margin: 0; }
.portfolio-fullwidth .grid-item { margin: 0; width: 103%; height: auto; }
.portfolio-fullwidth .gap20, .portfolio-fullwidth .gap60, .portfolio-fullwidth .gap100 { display: none; }
.portfolio-fullwidth .filters { border-bottom: 2px solid #dd3f19; background-color: #333; }
.portfolio-fullwidth a.filters-btn { padding: 10px 15px; border-radius: 0; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: rgba(255, 255, 255, .6); }
.portfolio-fullwidth a.filters-btn:hover { background-color: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.portfolio-fullwidth a.filters-btn i { color: rgba(255, 255, 255, .6); }
.portfolio-fullwidth .filters-set { top: 0; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background-color: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.portfolio-fullwidth .filters-set a { color: rgba(255, 255, 255, .6); }
.portfolio-fullwidth .filters-set a:hover, .portfolio-fullwidth .filters-set a:hover i { color: #fff; }
.portfolio-fullwidth .filters-set a i { color: rgba(255, 255, 255, .6); }
.portfolio-fullwidth .container.fastFadeFromTop { display: none; }
.portfolio-fullwidth #load-more-items { padding: 10px 0; min-height: inherit; border-top: 2px solid #dd3f19; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background-color: #222; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: rgba(255, 255, 255, .6); }
.portfolio-fullwidth #load-more-items:hover { background-color: #dd3f19; }
.project-navbar { position: fixed; top: 100px; z-index: 1040; display: none; width: 100%; background: #111; background: rgba(0, 0, 0, .5); text-align: center; }
.project-navbar .container { padding: 5px 0; }
.project-navbar .project-nav { display: inline-block; }
.like-btn, .like-btn i, .like-btn span { color: #adadad; }
.like-btn:hover, .like-btn:hover i, .like-btn:hover span { color: #dd3f19; }
.like-btn.active, .like-btn.active i, .like-btn.active span { color: #dd3f19; }
.page-template-page-blog-php .pagination { margin-left: 80px; padding-top: 30px; border-top: 1px solid #e5e5e5; font-size: 14px; }
.pagination { margin: 0; text-align: center; }
.pagination a, .pagination span { width: 35px; height: 35px; color: #666; text-align: center; text-decoration: none; line-height: 35px; }
.pagination a:hover { color: #dd3f19; }
.pagination .divider { margin: 0 5px; color: #adadad; }
.pagination .prev, .pagination .next { -webkit-border-radius: 50%; -moz-border-radius: 50%; border-radius: 50%; background-size: 35px 35px; background-repeat: no-repeat; -webkit-box-shadow: inset 0 0 0 1px #d9d9d9; -moz-box-shadow: inset 0 0 0 1px #d9d9d9; box-shadow: inset 0 0 0 1px #d9d9d9; text-indent: -9999px; }
.pagination .prev { float: left; background-image: url(../img/pagination_prev.png); }
.pagination .next { float: right; background-image: url(../img/pagination_next.png); }
.pagination a.prev:hover, .pagination a.next:hover { background-color: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.pagination a.prev:hover { float: left; background-image: url(../img/pagination_prev_inverse.png); }
.pagination a.next:hover { float: right; background-image: url(../img/pagination_next_inverse.png); }
.pagination .current { color: #dd3f19; }
.pagination .inactive { opacity: .5; filter: alpha(opacity=50); }
.project-like { margin: 20px 0 0; text-align: center; }
.project-like .like-btn, .project-like .like-btn i { font-size: 18px; }
.modal { margin-left: -375px; width: 730px; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background: #333; background: rgba(0, 0, 0, .85); -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: #cfcfcf; color: rgba(255, 255, 255, .8); }
.modal-header { padding: 50px 70px 10px; border: none; text-align: center; }
.modal-header .close { position: absolute; top: 10px; right: 15px; margin: 0; color: #fff; font-weight: 300; font-size: 30px; opacity: .4; }
.modal-header .close:hover { opacity: 1; }
.modal-header h3 { margin: 0 0 10px; color: #fff; font-size: 48px; line-height: normal; }
.modal-header p { color: rgba(255, 255, 255, .4); }
.modal-body { padding: 20px 70px 20px; }
.modal-footer { padding: 0 70px 50px; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; background: transparent; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; text-align: center; }
.modal-backdrop { background: #fff; }
.contacter button { margin-top: 15px; }
select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input { padding: 7px 6px; height: auto; border: 1px solid #666; border: 1px solid rgba(0, 0, 0, .2); -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; background-color: #fff; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: #666; vertical-align: middle; font-size: inherit; line-height: 18px; }
select.input-inverse, textarea.input-inverse, input[type="text"].input-inverse, input[type="password"].input-inverse, input[type="datetime"], input[type="datetime-local"].input-inverse, input[type="date"].input-inverse, input[type="month"].input-inverse, input[type="time"].input-inverse, input[type="week"].input-inverse, input[type="number"].input-inverse, input[type="email"].input-inverse, input[type="url"], input[type="search"].input-inverse, input[type="tel"], input[type="color"].input-inverse, .uneditable-input.input-inverse { border-color: #fff; border-color: rgba(255, 255, 255, .2); background-color: transparent; color: #fff; }
textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus { outline: 0; outline: thin dotted \9; border-color: #fff; border-color: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.input-append input, .input-append select, .input-append .uneditable-input { -webkit-border-radius: 2px 0 0 2px; -moz-border-radius: 2px 0 0 2px; border-radius: 2px 0 0 2px; }
.input-append .add-on:last-child, .input-append .btn:last-child, .input-append .btn-group:last-child > .dropdown-toggle { z-index: 9999; -webkit-border-radius: 0 2px 2px 0; -moz-border-radius: 0 2px 2px 0; border-radius: 0 2px 2px 0; }
input.input-inverse:-moz-placeholder, textarea.input-inverse:-moz-placeholder {
 color: #fff;
 color: rgba(255, 255, 255, .4);
}
input.input-inverse:-ms-input-placeholder, textarea.input-inverse:-ms-input-placeholder {
 color: #fff;
 color: rgba(255, 255, 255, .4);
}
input.input-inverse::-webkit-input-placeholder, textarea.input-inverse::-webkit-input-placeholder {
 color: #fff;
 color: rgba(255, 255, 255, .4);
}
select.error, textarea.error, input[type="text"].error, input[type="password"].error, input[type="datetime"], input[type="datetime-local"].error, input[type="date"].error, input[type="month"].error, input[type="time"].error, input[type="week"].error, input[type="number"].error, input[type="email"].error, input[type="url"], input[type="search"].error, input[type="tel"], input[type="color"].error, .uneditable-input.error { border-color: #ff0000; }
.muted { color: #999999; }
a.muted:hover, a.muted:focus { color: #333; }
.text-warning { color: #c09853; }
a.text-warning:hover, a.text-warning:focus { color: #333; }
.text-error { color: #dd3f19; }
a.text-error:hover, a.text-error:focus { color: #333; }
.text-info { color: #3a77c1; }
a.text-info:hover, a.text-info:focus { color: #333; }
.text-success { color: #44a22d; }
a.text-success:hover, a.text-success:focus { color: #333; }
.close { color: #000000; text-shadow: none; text-shadow: none; font-weight: normal; font-size: 20px; line-height: 20px; opacity: 0.2; filter: alpha(opacity=20); -webkit-transition: all .2s ease; -moz-transition: all .2s ease; -o-transition: all .2s ease; transition: all .2s ease; }
.google-map img { max-width: inherit; }
.error404 .content { margin: 0 !important; padding: 300px 0 110px; }
.error404 h1.back404 { position: absolute; top: -300px; z-index: -1; width: 100%; color: #F5F5F5; font-size: 550px; }
.error404 footer { display: none; }
.search-results .content { padding: 200px 0 30px; }
.search-no-results .content { padding: 0 0 30px; }
.alert { border: none; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; background-color: #fffcea; -webkit-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, .04); -moz-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, .04); box-shadow: inset 0 0 0 1px rgba(0, 0, 0, .04); color: #c09853; text-shadow: none; }
.alert-info { background-color: #e6f7ff; color: #3a87ad; }
.alert-danger, .alert-error { background-color: #ffecec; color: #b94a48; }
.alert-success { background-color: #f1fcea; color: #468847; }
.tooltip-inner { padding: 7px 8px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; }
span[data-toggle="tooltip"] { color: #dd3f19; cursor: pointer; }
span[data-toggle="tooltip"]:hover { color: #333333; }
.backgrounded { padding: 80px 0 55px; -webkit-background-size: cover; -moz-backgrou1266nd-size: cover; -o-background-size: cover; background-size: cover; background-repeat: no-repeat; color: #fff; }
.backgrounded h1, .backgrounded h2, .backgrounded h3, .backgrounded h4, .backgrounded h5, .backgrounded h6 { color: #666; }
/*.backgrounded p, .backgrounded .services p { color: rgba(255, 255, 255, 1); }*/
.backgrounded.inverse h1, .backgrounded.inverse h2, .backgrounded.inverse h3, .backgrounded.inverse h4, .backgrounded.inverse h5, .backgrounded.inverse h6 { color: #333; }
.backgrounded.inverse, .backgrounded.inverse p { color: #666; }
.backgrounded.inverse .headline { color: #7f7f7f; color: rgba(0, 0, 0, .5); }
.backgrounded.inverse .services p { color: #7f7f7f; color: rgba(0, 0, 0, .5); }
.backgrounded .b-img { margin-bottom: -75px; }
.services { display: block; -webkit-backface-visibility: hidden; }
a.services:hover { opacity: .7; filter: alpha(opacity=70); }
.services .service-box { position: relative; float: left; overflow: hidden; margin-right: 30px; width: 100%; height: 240px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; background-repeat: no-repeat; color: #fff; text-align: center; font-size: 34px; }
.services .service-icon { position: absolute; width: 100%; height: 230px; line-height: 110px; }
.services.text-center .service-box { display: inline-block; float: none; margin-right: 0; margin-bottom: 20px; }
.whywork .service-box { background-position: 50% 50%; background-size: 100%; }
.services h3 { margin-bottom: 10px; }
.services p { color: #7f7f7f; color: rgba(0, 0, 0, .5); }
.services.inverse { text-align: center; }
.services.inverse h3 { color: #fff; }
.services.inverse p { color: #fff; color: rgba(255, 255, 255, .5); }
.services.inverse i { display: inline-block; margin-bottom: 20px; color: #fff; color: rgba(255, 255, 255, .5); font-size: 72px; }
.client-logo { width: auto; height: auto; border: 1px solid #fff; border: 1px solid rgba(255, 255, 255, .3); -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; text-align: center; }
.accordion-group { margin-bottom: -1px; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; }
.accordion-heading { position: relative; background: #eeeeee; z-index: 9999; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; -webkit-transition: background-color .2s; -moz-transition: background-color .2s; -o-transition: background-color .2s; transition: background-color .2s; }
.accordion-heading .accordion-toggle { padding: 8px 36px; }
.accordion-heading.active .accordion-toggle { padding: 8px 35px; }
.accordion-heading:hover .accordion-toggle { padding: 8px 35px; }
.accordion-heading a { border-top: 1px solid #e5e5e5; border-bottom: 1px solid #e5e5e5; background-image: url(../img/toggle_closed.png); background-position: 13px 48%; background-size: 13px; background-repeat: no-repeat; -webkit-transition: none; -moz-transition: none; -o-transition: none; transition: none; }
.accordion-group:last-child .accordion-heading a { border-bottom: 1px solid #e5e5e5; }
.accordion-group:last-child .accordion-heading.active a, .accordion-group:last-child .accordion-heading:hover a { border-bottom: 1px solid transparent; }
.accordion-heading:hover { z-index: 99999; border-left: 1px solid #dd3f19; background-color: #E1E1E1; }
.accordion-heading:hover a { border-top: 1px solid transparent; border-bottom: 1px solid transparent; background-position: 12px 48%; }
.accordion-heading.active { border-left: 1px solid #dd3f19; background: #E1E1E1; }
.accordion-heading.active a { border-top: 1px solid transparent; border-bottom: 1px solid transparent; background-image: url(../img/toggle_opened.png); background-position: 12px 48%; }
.accordion-inner { margin-top: -1px; padding: 25px 0; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; }
.accordion-group:last-child .accordion-inner { border-bottom: 1px solid #e5e5e5; }
.nav { margin-bottom: 0; }
.nav-tabs { border-bottom: none; }
.nav-tabs > li { -webkit-transition: border-color .2s; -moz-transition: border-color .2s; -o-transition: border-color .2s; transition: border-color .2s; }
.nav-tabs > li > a { margin-right: 1px; padding: 8px 15px; border: none; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; box-shadow: 1px 0 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1); -webkit-transition: background-color .2s; -moz-transition: background-color .2s; -o-transition: background-color .2s; transition: background-color .2s; }
.nav-tabs > li:first-child > a { box-shadow: 1px 0 0 0 rgba(0, 0, 0, .1), -1px 0 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1); }
.nav-tabs > li > a:hover, .nav-tabs > li > a:focus, .nav-tabs > .active > a, .nav-tabs > .active > a:hover, .nav-tabs > .active > a:focus { border: none; background-color: #ffffff; box-shadow: 1px 0 0 0 rgba(0, 0, 0, .1), -1px 0 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 #dd3f19 !important; }
.tabs-left > .nav-tabs { margin-right: 0; }
.tabs-left > .nav-tabs > li > a { margin-bottom: 2px; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; box-shadow: -1px 0 0 0 rgba(0, 0, 0, .1), 0 1px 0 0 rgba(0, 0, 0, .1); }
.tabs-left > .nav-tabs > li:first-child > a { box-shadow: -1px 0 0 0 rgba(0, 0, 0, .1), 0 1px 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1); }
.tabs-left > .nav-tabs > li > a:hover, .tabs-left > .nav-tabs > li > a:focus, .tabs-left > .nav-tabs > .active > a, .tabs-left > .nav-tabs > .active > a:hover, .tabs-left > .nav-tabs > .active > a:focus { border: none; box-shadow: -1px 0 0 0 #dd3f19, 0 1px 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1) !important; }
.tabs-right > .nav-tabs { margin-left: 0; }
.tabs-right > .nav-tabs > li > a { margin-bottom: 2px; -webkit-border-radius: 0; -moz-border-radius: 0; border-radius: 0; box-shadow: 1px 0 0 0 rgba(0, 0, 0, .1), 0 1px 0 0 rgba(0, 0, 0, .1); }
.tabs-right > .nav-tabs > li:first-child > a { box-shadow: 1px 0 0 0 rgba(0, 0, 0, .1), 0 1px 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1); }
.tabs-right > .nav-tabs > li > a:hover, .tabs-right > .nav-tabs > li > a:focus, .tabs-right > .nav-tabs > .active > a, .tabs-right > .nav-tabs > .active > a:hover, .tabs-right > .nav-tabs > .active > a:focus { border: none; box-shadow: 1px 0 0 0 #dd3f19, 0 1px 0 0 rgba(0, 0, 0, .1), 0 -1px 0 0 rgba(0, 0, 0, .1) !important; }
.tab-content { overflow: auto; margin-top: 1px; margin-bottom: 20px; padding: 20px 15px 0; border: none; background-color: #fff; box-shadow: 0 0 0 1px rgba(0, 0, 0, .1); }
.tabs-left .tab-content, .tabs-right .tab-content { margin-top: 0; }
.btn, #commentform input[type="submit"], .wpcf7-submit { position: relative; padding: 8px 25px; border: none; -webkit-border-radius: 4px; -moz-border-radius: 4px; -ms-border-radius: 4px; -o-border-radius: 4px; border-radius: 4px; background: #e6e6e6; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; text-shadow: none; font-weight: normal; font-size: 12px; }
.btn:hover, .btn:focus, .btn:active, .btn.active, .btn.disabled, .btn[disabled], .wpcf7-submit:hover { background: #666; color: #fff; }
.btn, .btn:hover, .btn:focus, #commentform input[type="submit"], .wpcf7-submit { -webkit-transition: all .2s linear; -moz-transition: all .2s linear; -o-transition: all .2s linear; transition: all .2s linear; }
.btn-large { padding: 10px 35px; font-size: 16px; }
.btn-large i { font-size: 14px; }
.btn-small { padding: 6px 15px; font-size: 11px; }
.btn-mini { padding: 2px 8px; font-size: 10px; }
.btn-primary, #commentform input[type="submit"], .wpcf7-submit { color: #fff; background: #ff7302; }
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled], #commentform input[type="submit"]:hover, #commentform input[type="submit"]:focus, .wpcf7-submit:hover { background: #666; }
.btn-warning { background: #ffd132; color: #fff; }
.btn-warning:hover, .btn-warning:focus, .btn-warning:active, .btn-warning.active, .btn-warning.disabled, .btn-warning[disabled] { background: #666; }
.btn-danger { background: #dd3f19; color: #fff; }
.btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.active, .btn-danger.disabled, .btn-danger[disabled] { background: #815cb4; }
.btn-success { background: #37ce77; color: #fff; }
.btn-success:hover, .btn-success:focus, .btn-success:active, .btn-success.active, .btn-success.disabled, .btn-success[disabled] { background: #666; }
.btn-info { background: #59b1f6; color: #fff; }
.btn-info:hover, .btn-info:focus, .btn-info:active, .btn-info.active, .btn-info.disabled, .btn-info[disabled] { background: #666; }
.btn-inverse { background: #363636; color: #fff; }
.btn-inverse:hover, .btn-inverse:focus, .btn-inverse:active, .btn-inverse.active, .btn-inverse.disabled, .btn-inverse[disabled] { background: #dd3f19; }
.btn-link, .btn-link:active, .btn-link[disabled] { background-color: transparent; background-image: none; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; }
.btn-link:hover, .btn-link:focus { background-color: transparent; color: #005580; text-decoration: underline; }
.btn-simple { background: transparent; color: #adadad; }
.btn-simple:hover, .btn-simple.btn-inverse:hover { background: #dd3f19; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; color: #fff; }
.btn-simple i { color: #adadad; }
.btn-simple:hover i { color: #fff; }
.btn-simple.btn-inverse { -webkit-box-shadow: inset 0 0 0 1px #d9d9d9; -webkit-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .5); -moz-box-shadow: inset 0 0 0 1px #d9d9d9; -moz-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .5); box-shadow: inset 0 0 0 1px #d9d9d9; box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .5); color: #fff; color: rgba(255, 255, 255, .7); }
.btn-simple.btn-inverse i { color: #fff; color: rgba(255, 255, 255, .7); }
.btn-simple.btn-inverse:hover i { color: #fff; }
.widget { margin: 0 0 50px; font-size: 12px; }
.widget h3 { margin: -5px 0 15px; }
.widget_categories ul, .widget_archive ul, .widget_recent_entries ul { margin-left: 0; list-style: none; }
.widget_categories ul li, .widget_archive ul li, .widget_recent_entries ul li { padding: 7px 0; border-bottom: 1px solid #e5e5e5; }
.widget_categories ul li:last-child, .widget_archives ul li:last-child, .widget_recent_entries ul li:last-child { border: none; }
.tparrows { opacity: .6 !important; -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=60)" !important; -moz-opacity: .6 !important; -khtml-opacity: .6 !important; }
.tparrows:hover { opacity: 1 !important; -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)" !important; -moz-opacity: 1 !important; -khtml-opacity: 1 !important; }
.tp-leftarrow.hidearrows, .tp-leftarrow.default.hidearrows {
 left: 0 !important !important; -webkit-transition: opacity ease .2s, left ease .2s !important; -moz-transition: opacity ease .2s, left ease .2s !important; -o-transition: opacity ease .2s, left ease .2s !important; transition: opacity ease .2s, left ease .2s !important; }
.tp-rightarrow.hidearrows, .tp-rightarrow.default.hidearrows {
 right: 0 !important !important; -webkit-transition: opacity ease .2s, right ease .2s !important; -moz-transition: opacity ease .2s, right ease .2s !important; -o-transition: opacity ease .2s, right ease .2s !important; transition: opacity ease .2s, right ease .2s !important; }
.tp-leftarrow, .tp-rightarrow, .tp-leftarrow.default, .tp-rightarrow.default { width: 75px !important; height: 150px !important; background-size: 75px 150px !important; background-repeat: no-repeat !important; }
.tp-leftarrow, .tp-leftarrow.default {
 left: 30px !important !important; background-image: url(../img/paddle_prev.png) !important;  filter: progid: DXImageTransform.Microsoft.AlphaImageLoader(src='../img/paddle_prev.png', sizingMethod='scale') !important;
-webkit-transition: opacity ease .2s, left ease .2s !important; -moz-transition: opacity ease .2s, left ease .2s !important; -o-transition: opacity ease .2s, left ease .2s !important; transition: opacity ease .2s, left ease .2s !important; }
.tp-rightarrow, .tp-rightarrow.default {
 right: 30px !important !important; background-image: url(../img/paddle_next.png) !important; -webkit-transition: opacity ease .2s, right ease .2s !important; -moz-transition: opacity ease .2s, right ease .2s !important; -o-transition: opacity ease .2s, right ease .2s !important; transition: opacity ease .2s, right ease .2s !important; }
.tp-bullets.simplebullets.round .bullet, .tp-bullets.simplebullets.round .bullet:hover { position: relative !important; display: inline-block !important; float: left !important; margin-top: 2px !important; margin-right: 6px !important; margin-left: 6px !important; width: 8px !important; height: 8px !important; border-radius: 50% !important; background: #fff !important; background: rgba(255, 255, 255, .7) !important; cursor: pointer !important; -webkit-transition: background-color 0.25s, border-color 0.25s !important; -moz-transition: background-color 0.25s, border-color 0.25s !important; transition: background-color 0.25s, border-color 0.25s !important; -webkit-transform: translateZ(0) !important; }
.tp-bullets.simplebullets.round .bullet.selected { margin-top: 0 !important; margin-right: 4px !important; margin-left: 4px !important; width: 10px !important; height: 10px !important; border: 1px solid #fff !important; background: transparent !important; }
.tp-caption a { padding: 15px 50px !important; color: #fff !important; font-size: 18px; }
.tp-caption a:hover { color: #fff !important; }
.home-header { text-align: center; font-family: Helvetica; font-size: 23px; display: block }
.list { margin-bottom: 25px; }
.list .row { font-size: 14px; line-height: 16px; }
.list .row { text-transform: uppercase; font-weight: bold; margin-bottom: 10px; }
.list .row span { display: table-cell; vertical-align: middle; }
.list .row .num { font-size: 30px; font-style: italic; font-weight: bold; padding-right: 10px; }
.list .row.first .num { color: #f15d2a; }
.list .row.second .num { color: #fbad17; }
.list .row.third .num { color: #2a8e91; }
.divleft { float: left }
.divright { float: right }
.bodytextcolor { color: #666 !important; }
.img-wrap { background: url("../img/attesto-third-block-bg.png") no-repeat center top; background-size: contain; padding: 6.5% 17% 7%; }
.mqmty { line-height: 45px !important; font-size: 45px !important; }
.grid-item { border: 1px solid #939598; box-shadow: 0 5px 0 #c5c5c6; min-height: 323px; }
/* .row-fluid a{text-transform:uppercase;}*/

.gray { color: #666 !important; }
.md_product_raw { margin-top: 15px; }
.span35 { width: 220px; height: 150px; margin: 0 20px 0 0; overflow: hidden; }
.span35:hover { overflow: visible; }
.ctitle { min-height: 75px; }
.ctitle h2 { font-size: 17px; text-transform: uppercase; }
.ctitle p { color: #f15d2a; }
.cdesignation { color: #f15d2a !important; text-align: center; font-weight: bold; font-size: 15px; }
.rev_slider_wrapper .s-21 .s-22 { font-size: 32px !important; }
.news .row-fluid .span3 { width: 6%; }
/*.newsletters .row-fluid .span3{width:6%;}*/
/* modified 4-8-2015 */

.client-video-text p { color: #666; }
.client-video-text span { float: left; margin-top: 20px; }

.menu_mobile_button { margin: 0 0 30px 20px; }
.w240 { width: 240px }
.menu_award { display: block; margin: 0 auto; max-width: 10%; padding: 10px; }
.qm_list { font-size: 120%; margin: 0; text-align: center; list-style-type: none; color: #fff }
.text-justify { text-align: justify !important; }
.pricecon { width: 250px; float: right; background: #E1E1E1; margin-left: 20px; padding: 10px; }
.pricetable { margin: 0 auto; text-align: center; font-weight: bold; font-size: 17px; }
ul.headline.bodytextcolor { margin-bottom: 15px; }
a#slider-button-menu:hover { background: #f5f5f5 !important; color: #000 !important; }
a#slider-button-menu { background: #ff7302 !important; color: #fff !important; -webkit-text-stroke: 0.5px }
a#slider-button { background: #ff7302; color: #fff!important; }
a#slider-button:hover { opacity: 0.8; }
.slider-button-active { background: #ff7302; color: #fff!important; }
.slider-button-inactive { background: #e1e1e1 !important; color: #fff !important; }
.span66 .ch_element.ch_wrapper { min-height: 165px; }
.servicep p { min-height: 175px !important; }
a.fancybox.btn { background: none; }
@media (max-width: 1024px) {
.s41 { font-size: 55px !important; }
center.s42 { top: -40px; position: relative; }
.btn:first-child { position: relative; top: 0; }
div#client-logo-list img { width: 5%; }
.m11 { font-size: 42px !important; }
/*input, textarea, .uneditable-input{width:100% !important;}*/
#getstarted { margin-bottom: 30px; }

}
    
.wpcf7 p { min-width: 100% !important; }
}
.last_whyus { margin: 0 auto; max-width: 500px; }
.bgorange { background-color: rgb(251, 173, 66); }
.accordion-inner ul { list-style-type: none; }
.f130 { font-size: 130% !important; }
.left-con-menu { float: left; font-size: 14px; border: 0 !important; padding: 10px !important; text-align: left; width: 100%; min-height: 50px; }
.cname { text-align: center; font-weight: bold; }
#wpcf7-f1104-o1 p { margin: 0 }
.top-tier { display: none; }
ul.meleft { width: 100% !important; font-size: 15px; }
ul.meright { width: 100% !important; font-size: 15px; }
ul.meright li { width: 100% !important; font-size: 15px; text-align: right; }
.teste .services.text-center .service-box { background-size: contain !important; width: 230px !important; }

.backgrounded.fastFadeFromTop.home-enable { padding: 15px !important; }
.home-enable p { margin: 0 !important; color: #666 !important; font-size: 40px; font-weight: bold; }
fancybox.btn { background: none; }
#tabh1, #tabh2, #tabh3, #tabh4 { background: transparent; }
ul.enterpriseqa_ul li { text-align: left; font-size: 14px; margin: 0 0 10px 0; }
@media (max-width: 980px) {
.last { margin-left: 0; }
.testing-types { margin: 0 0 10px 0 !important; font-size: 26px; }
}
.services p { color: #7f7f7f !important; }
.home-header { padding-bottom: 25px; }
.list .row { margin-bottom: 20px !important; }
.list .row .num { padding-top: 0; font-size: 36px; }
.list .row span.text { font-weight: normal; text-transform: initial; }
header .navbar .nav > li > a, header .navbar .search-bar-btn i { color: #737a80; }
header .navbar .brand { max-width: 100%; }

.mobile-strategy-list { margin: 0; }
.mobile-strategy-list ul { margin: 0 auto; width: 100%; margin-top: 15px; }
.mobile-strategy-list ul li { line-height: 25px; list-style: none; font-size: 17px }
.mobile-strategy-list p.headline { color: #7f7f7f; color: rgba(0, 0, 0, .5); }
.latest-blog-homepage p { color: #666; }
.latest-blog-homepage .post-meta, hr, .latest-blog-homepage .categores { display: none !important; }
.home .client-logo-homepage .container { width: auto; max-width: 100% !important; }
.client-logo-homepage li { text-align: center; padding: 13px 0; }
.client-logo-homepage li img { max-height: 50px; width: auto !important; }
.home .client-logo-homepage .slider .bx-wrapper { max-width: 96% !important; }
.home .client-logo-homepage .bx-wrapper a { margin-top: -22px !important; }
.home .client-logo-homepage .bx-wrapper .bx-prev { left: 0 !important }
.home .client-logo-homepage .bx-wrapper .bx-next { right: 0 !important }
.backgrounded.fastFadeFromTop.client-logo-homepage { padding: 0 !important; height: 66px; }

.backgrounded .headline { color: #fff; color: rgba(255, 255, 255, .8); margin-bottom: 20px; }
.service-overview-page .backgrounded .headline { margin-bottom: 20px; }
div#client-logo-list { padding: 0px 0px; text-align: center; }
div#client-logo-list img { display: inline; margin: 10px 15px 0 25px; }
/*#fancybox-content { border-color: #e9e9e9; }*/
/*form#pop-up-form { text-align: center; }*/

input#cnt_phone { color: #666; border: 1px solid rgba(0, 0, 0, .2); }
#cnt_other { display: none; }
.landing_page h1 { margin-top: 245px; }
.landing__right_form { border: 2px solid #666; padding: 4%; margin-bottom: 20px; clear: both; width: 92%; }
.landing__right_form.hentry .cap { width: 20% !important; }
.landing__right_form.hentry #reloadbtn { width: 45% !important; }
.landing__right_form.hentry #download-form-submit { background-color: #FF7302; font-weight: bold; width: 100% !important; height: 35px; border: none; color: #fff; }
@media screen and (max-width: 767px) {
.testimonials .span3 { text-align: center; }
.landing_page h1 { margin: 0; }
.landing_page { text-align: center; }
}
@media screen and (min-width: 768px) {
.landing__right_form.hentry #reloadbtn { width: 60% !important; }
.closertocode .arrow_img { margin: 100px 0 0 0; }
.closertocode .arrow_img .svg { max-height: 300px; }
}
/*#fancybox-content { width:100% !important; }
#fancybox-wrap { width:100%; max-width: 600px; margin: 0 auto; }
#fancybox-wrap div { box-sizing:border-box !important; -webkit-box-sizing:border-box !important; -moz-box-sizing:border-box !important; -ms-box-sizing:border-box !important; -o-box-sizing:border-box !important; }
#fancybox-outer {  }

#fancybox-content { -webkit-overflow-scrolling: touch; overflow-y: auto; width:100%; max-width: 600px; }*/

.backgrounded.fastFadeFromTop.blue_strip.stick { top: 134px !important; }

.hentry h2.popup-titile { border-top: 1px solid #e9e9e9; border-bottom: 1px solid #e9e9e9; margin: 5px 0; text-align: center; background-color: #FF7302; padding: 10px 0; }
/*.backgrounded.fastFadeFromTop.home-core-offering { padding: 10px 0 40px 0 !important; }*/
.backgrounded.fastFadeFromTop.home-core-offering h1.text-center, .backgrounded.fastFadeFromTop.home-core-offering h3 { color: #666; }
#home-page-Offering .services.services-small.text-center > p { display: none; }
.md_class4, .md_class5 { top: 50px; }
.tp-caption.black_2_white_md_new_txt1 .headtext { font-size: 60px !important; }
.tp-caption.black_2_white_md_new_txt1 .headtext .subtext { font-size: 30px !important; }
.slider-top .revbutton a.btn { font-size: 22px !important; }
.tp-caption.black_2_white_md_new_txt1 .stadiumtext { font-size: 50px !important; }
@media (max-width: 980px) {
.tp-caption.black_2_white_md_new_txt1 .headtext .subtext { font-size: 23px !important; }
.tp-caption.black_2_white_md_new_txt1 .stadiumtext { font-size: 40px !important; }
}
@media (max-width: 960px) {
.suppaMenu_wrap.suppaMenu_wrap_wide_layout { margin-right: 0 !important; }
}
@media (max-width: 768px) {
.tp-caption.black_2_white_md_new_txt1 .headtext .subtext { font-size: 19px !important; }
.tp-caption.black_2_white_md_new_txt1 .stadiumtext { font-size: 25px !important; }
.tp-caption.black_2_white_md_new_txt1 .headtext { font-size: 50px !important; }
}
@media (max-width: 600px) {
.tp-caption.black_2_white_md_new_txt1 .headtext .subtext { font-size: 18px !important; line-height: 20px !important; }
.tp-caption.black_2_white_md_new_txt1 .stadiumtext { font-size: 12px !important; }
.tp-caption.black_2_white_md_new_txt1 .headtext { font-size: 40px !important; }
}
@media (max-width: 480px) {

.tp-caption.black_2_white_md_new_txt1 .headtext .subtext { font-size: 16px !important; line-height: 18px !important; }
.tp-caption.black_2_white_md_new_txt1 .stadiumtext { font-size: 13px !important; }
.tp-caption.black_2_white_md_new_txt1 .headtext { font-size: 20px !important; }
.slider-top .revbutton a.btn { font-size: 16px !important; }
}
@media (max-width: 800px) {
.tp-caption.black_2_white { font-size: 30px !important }
#rev_slider_5_1_wrapper { height: 600px !important; }
}
#Blog-post-for-homepage p { color: #666; font-size: 13px; }
#Blog-post-for-homepage .post-meta, #Blog-post-for-homepage hr, #Blog-post-for-homepage .categores { display: none !important; }
#Blog-post-for-homepage h4 { font-size: 18px; }
.tp-caption.small_light_white_md.tp-fade.tp-resizeme.start { width: 100%; text-align: center; left: 0 !important; padding: 15px 0 !important; }
.double_dot { border-left: 1px dotted #B8B8B8; border-right: 1px dotted #B8B8B8; margin: 0 !important; padding: 0 15px; }
.dd { border-left: 1px dotted #B8B8B8; border-right: 1px dotted #B8B8B8; }
.app_area .app_area_inner { background: #979797 !important; width: 76%; margin: 0 auto; color: #000; }
.contain_detail_2 { width: 300px; float: left; }
.app_area { background: #979797 !important; margin: 0px 0; }
.overview_inner { display: inline-block; }
.overview_inner h3, .overview_inner a.head_title { color: #fff; font-size: 22px; padding: 40px 0 0; }
.contain_detail_2 a img { width: 90px; float: left; }
.app_area .contain_detail_2 span.span1 { width: 100%; padding: 5px 0 10px 0; }
.contain_detail_2 p { padding: 5px 0; display: inline-block; }
#footer_event { float: right !important; }
#footer_event .span3 { width: 200px; margin-left: 10px; }
.home-core-offering .span3m { width: 20%; margin: 0 0 30px 0; }
@media (max-width: 979px) {
.md_vid1 .wp-video { width: 100% !important; margin-bottom: 15px !important; }
.btn-navbar { background: #666 !important; }
.btn-navbar:hover { background: #666 !important; }
.menu_mobile a i {padding-right: 10px; }
}
@media (max-width: 768px) {
.backgrounded.fastFadeFromTop.mo-quality-success .span4 { width: 215px; }
.text-justify { width: 100%; }
.gap100 { display: none; }
.gap114 { height:110px;  /*display: none;*/ }
div#product_footerlink .row .ftr_newsletter strong { width: 96% !important; }
.span3 { width: 161px; }
.span2 { width: 30%; }
.contain_detail_2 { width: 30%; }
#slider-gap { height: 0; }
.navbar-fixed-top { position: relative !important; }
.md_mobile_div { height: auto !important; }

.double_dot { margin: 0; padding: 0; border: none; }
.testing-blk { width: 100% !important; margin: 0 0 30px 0; }
.mobile-qty-optimization .testing-blk { width: 70%!important; }
.product_btn { margin: 0px !important; width: 100% !important; margin-bottom: 15px !important; }
.product_btn_div { width: 100% !important; }
.s11 { font-size: 50px !important; }
.s31 { font-size: 40px !important; }
.s41 { font-size: 44px !important; }
.m11 { font-size: 33px !important; }
.m12 { font-size: 25px !important; }
.lefttext { text-align: center !important; }
.mqmty { font-size: 33px !important; }
.menu_mobile a i {padding-right: 10px; }
}
@media (max-width: 640px) {
select#cnt_country { width: 103%; }
.at-a-glance { min-height: 0px !important; }
.google-map { width: 92%; margin: 0 auto; }
.sendmail,  .sendmail_text,  .our_direction,  .givingback_s1,  .lifeatinfo,  .at-a-glance-s1 { text-align: center; }
.span_lifeinfo { float: left; width: 100%; margin-top: 15px; }
.inside-qmetry .btn:first-child { top: 0 !important; }
.pull-right { text-align: center; }
.offshore { text-align: center; }
.pricecon { width: 92%; float: none; padding: 2%; }
.displayblock a { display: block; margin-bottom: 20px !important; }
.span3,  .span2 { width: 100%; }
.m133.text-center.displayblock { margin: 0 auto; width: 47%; }
.qmetry-sl1 .md_if_font { margin: 0px !important; }
.qmetry-sl1 .span6 { margin: 0px !important; }
.qmetry-sl1 .md_vid1 { text-align: center; }
.qmetry-sl1 .m133 { text-align: center; margin-bottom: 30px !important; }
.testing-blk ul { width: 100%; }
.backgrounded.fastFadeFromTop.mo-quality-success .span4 { width: 96%; margin: 0 auto; }
.app_area .app_area_inner { text-align: center; }
.md_product_btn { text-align: center !important; width: 100% !important; margin-bottom: 15px; }
.md_product_btn_div { width: 100% !important; margin-bottom: 20px !important; }
form.wpcf7-form { text-align: center; width: 80% !important; padding-left: 10% !important; }
div#product_footerlink ul { margin-bottom: 20px !important; }
.span41 { float: left !important; width: 100%; }
.lefttext { text-align: center !important; }
}
@media (max-width: 600px) {
#rev_slider_5_1_wrapper { height: 400px !important; }
.tp-caption.black_2_white { top: 40px !important; }
.tp-caption.medium_text_slider p { font-size: 16px !important; }
br.synchro-br { display: block !important; line-height: 30px !important; }
.attesto-txt1 { font-size: 30px !important; }
.tp-caption a.attesto-btn1,  .tp-caption a.attesto-btn2 { margin: 0 0 10px 0 !important; clear: both; width: 200px !important; font-size: 14px !important; }
}
@media (max-width: 400px) {
.inside-qmetry a#slider-button { top: 0 !important; }
.tp-caption .medium_text_slider { top: 120px !important; }

.md_class2 { top: 225px !important; left: -25px !important; padding: 14px !important; }
.md_class3 { top: 225px; padding: 0px !important; left: -3px; font-size: 19px !important; }
.md_class4 { top: 80px !important; left: -50px !important; }
.md_class5 { top: 60px !important; left: -50px !important; }
.tp-caption.black_2_white { top: 25px !important; left: 0 !important; text-align: center !important; line-height: 30px !important; }
.tp-caption.boxshadow { box-shadow: none !important; }
.contain_detail_2 { width: 100%; }
.contain_detail_2 a img { width: 100%; }
}
@media (max-width: 568px) {
div#client-logo-list img { width: 7% !important; }
.s11 { font-size: 37px !important; }
.s21 { font-size: 41px !important; }
.s41 { font-size: 30px !important; }
/*.btn:first-child { font-size: 13px !important; }*/
.m11 { font-size: 23px !important; }
.m12 { font-size: 22px !important; }
.m133 .qmerty-btn1,  .m133 .qmerty-btn2 { padding: 10px !important; font-size: 13px !important; }

}
.md_if_font p { font-weight: 400; min-height: 160px; -webkit-font-smoothing: antialiased; }
.md_if_font .at-a-glance { min-height: 1px; }
@media (max-width: 480px) {
div#download_form_pop_ms { width: 84% !important; height: auto; margin: 0 auto; }
.pricecon { float: none !important; margin: 0 auto; }
a#slider-button { margin: 10px; padding:14px 20px !important; font-size: 14px !important; }
div#client-logo-list img { width: 7% !important; }
.s31 { font-size: 30px !important; line-height: 30px !important; text-align: center; }
.s41 { font-size: 24px !important; line-height: 30px !important; text-align: center; }
.s11,  .s21 { font-size: 32px !important; line-height: 30px !important; text-align: center; }
center.s42,  center.s32,  center.s12 { font-size: 16px !important; }

.m11 { font-size: 21px !important; line-height: 22px !important; }
.m12 { font-size: 20px !important; line-height: 22px !important; }
.m11 br { display: block !important; }
.m12 br { display: block !important; }
.m13 br { display: block !important; }
.double_dot { border-left: none; border-right: none; padding: 0; }
.m133 .qmerty-btn1 { width: 80% !important; }
.m133 .qmerty-btn2 { margin: 30px 0 0 0 !important; width: 80% !important; }
.synchro-btn a br { display: none !important; }
.tp-caption a.attesto-btn1 br,  .tp-caption a.attesto-btn2 br { display: none !important; }
.attesto-btn1,  .attesto-btn2 { margin: 0 0 27px 0 !important; }
}
@media (max-width: 360px) {
ul#menu-footer-menu-in-bottom { text-align: center; }
.home-enable p { font-size: 20px; line-height: 1.2em; }
div#wpcf7-f4338-o1 { width: 92%; margin: 0 auto; padding: 0px; }
.our_teamblk { display: inline-block; float: left; width: 69% !important; margin-bottom: 15px !important; }
}
@media (max-width: 320px) {
.mobile-auto-service a#slider-button { display: block; }
.alldevice a#slider-button { display: block; }
.ul_headerlink { float: none; margin: 0 auto; }
.navbar-fixed-top .navbar-inner { padding: 0; }
.pricecon { float: none; }

#mobile_quality_testing_block_div { margin: 0; }
.mejs-container { width: 100% !important; }
.video-responsive { margin-left: 0 ! important; max-width: 100% !important; }
.product_btn_div { margin-bottom: 20px; }
div#client-logo-list img { width: 7% !important; }
br.clsbr { display: block !important; }
.m11 { font-size: 18px !important; line-height: 20px !important; }
.m12 { font-size: 17px !important; margin: 10px 0 0 0 !important; }
.lefttext { text-align: center !important; }
.m133 .qmerty-btn1 { width: 80% !important; }
.m133 .qmerty-btn2 { margin: 0 0 0 36px !important; width: 80% !important; }
.ch_element,  .ch_wrapper { width: 100%; text-align: center; }
.ch_normal,  .ch_hover { width: 100%; }
}
.md_product_btn { float: left; display: inline-block; margin-top: 15px; margin-right: 15px; }
.product_btn_div { float: left; margin-top: 20px; text-align: center; }
.product_btn { float: left; margin-left: 10px; }
.md_product_raw { min-height: 425px; }
.md_product_btn_div { float: left; }
#product_service_div.service p { }
#product_service_div.container.fastFadeFromTop br, .container.fastFadeFromTop p { display: none1; }
#product_service_div.services p, .services h3, a h3 { text-align: center; }
#product_service_div.backgrounded p { text-align: center; }
.wpcf7 p { color: #666 !important; width: 100%; min-width: 210px; }
div#product_footerlink strong { font-size: 14px; font-weight: bold; margin: 0 0 10px 0; }
div#product_footerlink ul li { width: 100%; float: left; margin: 0 0 8px 0; }
div#product_footerlink ul li a { line-height: 18px; font-size: 14px; }
div#product_footerlink ul { list-style-type: none; margin: 0; width: 100%; float: left; }
div#product_footerlink strong { margin-bottom: 10px; float: left; width: 100% !important; }
.m11 br, .m12 br, .m13 br { display: none; }
.md_mobile_div { float: left; margin-bottom: 30px; text-align: left; }
.md_chart_bg { background-repeat: repeat; background-size: inherit; }
.mobile_block2_span { line-height: 25px; }
.mobile_block4_span { line-height: 25px; margin-bottom: 15px; }
.md_mobileopt_div ul li { font-size: 20px; }
.mqs { min-height: 1px !important; margin-bottom: 0; }
div#testing_service_box { float:left; height: auto; }
div#mobile_quality_testing_block_div h2 { font-size: 22px; letter-spacing: 1px; text-align: center; font-weight: bold; }
div#mobile_quality_testing_block_div ul li { line-height: 22px; }
.service-box.imgwidth60 { background-size: contain; }
.lefttext { text-align: left; font-size: 12px; line-height: 20px; font-weight: 400; -webkit-font-smoothing: antialiased; }
.smallfont { font-size: 16px; line-height: 120%; font-weight: 400; -webkit-font-smoothing: antialiased; font-family: inherit !important; }
.mqmty br { display: block !important; }
.mqmty br.qmbrn { display: none !important; }
.md_product_btn a { font-size: 14px; -webkit-font-smoothing: antialiased; }
.testing-types { text-align: left; margin: 0 0 10px 0; }
.testing-blk { float: left; width:100%; padding-left: 50px; }
.testing-blk h2 { text-align: left !important; }
.testing-img { width: 40px; position: absolute; }
.testing-img .service-box { width: 40px; }
.testing-img img { max-width: 100%; vertical-align: top; margin-top: 5px; }
.services.services-small.integration-img.text-center { min-height: 125px; }
br.clsbr { display: none !important; }
@media (max-width: 320px) {
.mejs-container { width: 100% !important; }
.md_vid1 .wp-video { width: 100% !important; }
.mejs-container { width: 100% !important; }
.mqmty br.qmbrn { display: block !important; }
}
.tabs-hide { display: none; }
.tabs-container { background: #fff; margin-top: 25px; }
.tabs-nav { margin: 0; padding: 0; list-style-type: none; text-align: center; width: 100%; }
#tabnav h3 { display: inline-block; width: 100%; float: left; font-size: 16px; }
.tabs-nav li { display: inline-block; list-style-type: none; padding-right: 0px; margin-right: 20px; border-bottom: 2px solid #000; min-height: 120px; }
.productpage_btn { width: 100%; }
.product_btn_inner { margin: 0 auto; max-width: 310px; }
.service_btn_inner { margin: 0 auto; max-width: 35%; }
.box-show { position: relative; overflow: hidden; height: 300px; width: 100%; top: 0; }
.box-show .glyph { margin-top: 50px; }
.block_glyph { position: absolute; top: 0; width: 100%; height: 100%; -webkit-transition: all 0.3s ease-out; -moz-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; transition: all 0.3s ease-out; }
.block_text { position: absolute; padding-top: 40px; line-height: 20px; top: 1150px; height: 100%; -webkit-transition: all 0.3s ease-out; -moz-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; transition: all 0.3s ease-out; }
.indust-text { padding-top: 60px; }
.box-show:hover .block_glyph { top: 1252px; }
.box-show:hover .block_text { top: 0; }
.span1 { margin-left: 0px; }
.maxwidth230 { max-width: 145px; }
.maxwidth66 { max-width: 66% !important; }
.mobile_devlopment_img .service-box { min-height: 260px; }
.txt_justify { text-align: justify; }
.designation { font-size: 13pt; line-height: 1.6; font-weight: 400; -webkit-font-smoothing: antialiased; margin-bottom: 15px; color: #f15d2a; }
.contenthover { padding: 20px 20px 10px 20px; min-height: 238px; }
.contenthover, .contenthover h3, contenthover a { color: #fff; }
.contenthover h3, .contenthover p { margin: 0 0 10px 0; line-height: 1.4em; padding: 0; }
.contenthover a.mybutton { display: block; float: left; padding: 5px 10px; background: #3c9632; color: #fff; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; }
.contenthover a.mybutton:hover { background: #34742d }
.ch_element.ch_wrapper { min-height: 300px; }
.ch_hover { min-height: 300px; }
.span33:hover { overflow: visible; }
.span33 { width: 220px; height: 215px; margin: 0 20px 0 0; overflow: hidden; }
.span34:hover { overflow: visible; }
.span34 { width: 220px; height: 150px; margin: 0 20px 0 0; overflow: hidden; }
.backheight { min-height: 480px; }
.md_mobile_testing .service-box { min-width: 460px !important; }
a.current { color: red; }
.filters-set1 { margin-bottom: 20px; position: relative; top: -1px; display: none; padding: 15px 25px; height: auto; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; border: 1px solid #ccc; }
.floatleft.img_eqc { float: left; width: 15%; margin-right: 15px; margin-bottom: 15px; }
.floatleft.outer_eqc { float: left; width: 100%; }
.floatleft.txt_eqc { float: left; }
.bx-wrapper .bx-viewport { padding-top: 14px; }
.home-box { text-align: center; background: #fff; padding: 15px; color: #666; margin-bottom: 30px; }
.home-box.gray { background: #BBBFBF; }
.home-box1 { text-align: center; padding: 15px; background: #BBBFBF; color: #666; margin-bottom: 30px; }
.tabs-container { background: none; }
#tabh1 p, #tabh2 p, #tabh3 p, #tabh4 p { font-size: 16px; }
.min-height85 { min-height: 85px; }
.headline { font-size: 16px; }
.liststylenone { list-style-type: none; }
.liststylenone li { font-size: 20px; }
.container_relative { position: relative; max-width: 1200px !important; width: 100% !important; }
ul.ul_headerlink li { float: left; margin: 0 0 0 30px; list-style-type: none; }
.ul_headerlink li a { font-size: 12px; color:#737a80; }
.ul_headerlink li a:hover { color:#ff7302; }
p.ftr_news_p { width: 100%; }
.level-3 { font-weight: bold; font-size: 20px; color: #000; }
.privacy-con p { font-size: 16px; }
.sitemap-con h3 a { font-size: 20px; color: orange; font-weight: bold; }
.sitemap-con ul { font-size: 15px; list-style-type: square; }
.mingrid .grid-item { min-height: 150px; }
.qslider .bx-viewport { background: none !important; height: 160px !important; -webkit-box-shadow: none !important; }
.qslider ul li p { font-size: 20px; margin-top: 15px; text-align: center; }
.greyheading { color: #666 !important; }
.indented p { font-size: 16px; }
ol { color: #666; }
ul.bxslider3 li img { min-height: 90px; }
.backgrounded { color: #666 !important; }
.leftul { float: left; text-align: left; font-size: 14px; width:100%; }
ul.bxslider3 li img { min-height: 90px; text-align: center; margin: 0px auto; }
.factory { min-height: 120px; margin-top: 40px; }
.factory img { max-height: 100px; }
.ul_headerlink { float: right; margin: 0; }
.header_link { width: 100%; padding: 4px 10px; min-height: 32px; background: #f9f9f9; color: #737a80; }
.hentry .checkbox-wrap { text-align: left; padding: 0 0 0 30px; margin: 10px 0; border-top: 1px solid #e9e9e9; border-bottom: 1px solid #e9e9e9; }
.hentry #sign_up { margin-top: 5px; height: 60px; width: 35px; float: left; }
.hentry #sign_up_lable { display: inline-block; width: 82%; padding-left: 25px; margin: 5px 0; }
.hentry input[type="text"] { width: 92%; border-radius: 5px; border: 1px solid #939598; margin: 5px 0; }
.hentry #download-form-submit { text-align: center; width: 30% !important; height: 40px; background: #fff; border: 2px solid; margin: 10px 0; }
.hentry #download-form-submit:hover { background: #FF7302; color: #fff; }

ul.mantras { list-style-type: none; color: #fff; margin: 10px 0 0 0; width: 100%; font-size: 108%; }
.twebinars p { color: #666; text-align: justify; }
a.aorange { color: #dd3f19; }
.clientquote p { color: #666; text-align: left; margin-bottom: 10px; }
.span33.contenthover { border: 1px solid #fff; border-radius: 50%; }
header .navbar .brand { width: 160px; }
li.tabs-selected { border-bottom: 2px solid #ff7302; }
.events-single h2 { color: #999999; margin: 30px 0 15px 0; font-size: 250%; }
.events-single .post-entry { color: #000; font-size: 115%; }
.events-single .post-entry p { text-align: left !important; }
.events-single .media-body img { margin: 30px 0 0 0; }
.news-posts .post-entry p { text-align: left; padding: 0; margin: 0; }
.news-posts .post-entry { margin-bottom: 15px; }
.news-posts a { color: #dd3f19; padding: 0; margin: 0; }
.news-posts .post-entry { margin-bottom: 20px; border-bottom: 1px solid #ccc; padding-bottom: 15px; text-align: left; }
.news-posts h4 { margin: 0; padding: 0; font-size: 120%; text-align: left; }
.gap150 { height: 160px; }
.news-single h2 { color: #999999; margin: 30px 0 15px 0; font-size: 250%; text-align: justify; }
.news-single .post-entry { color: #000; font-size: 115%; text-align: justify; }
.news-single .post-entry p { text-align: left !important; }
.news-single .media-body img { margin: 30px 0 0 0; }
.newsletters-single h2 { color: #999999; margin: 30px 0 15px 0; font-size: 250%; }
.newsletters-single .post-entry { color: #000; font-size: 115%; }
.newsletters-posts .post-entry p { text-align: left; padding: 0; margin: 0; }
.newsletters-posts a { color: #dd3f19; padding: 0; margin: 0; }
.newsletters-posts .post-entry { margin-bottom: 20px; border-bottom: 1px solid #ccc; padding-bottom: 15px; text-align: left; }
.newsletters-posts h4 { margin: 0; padding: 0; font-size: 120%; text-align: left; }
.viewpdf { margin-top: 25px; }
.viewpdf iframe { width: 100%; }
.post-single { text-align: center; }
.qmerty-btn2 { line-height: 20px Important; border-radius: 0; }
.md_if_font.servicep p { text-align: justify; }
p.vid-msg { color: #ff9100; font-size: 14px !important; margin: 10px 0; }
p.vid-msg span { color: #000000; font-size: 14px !important; margin: 0px; display: block; line-height: 22px;}
.gap125 { height: 125px; }
@media (max-width: 1024px) {
div#product_footerlink .ftr_newsletter strong { width: 76% !important; }
.app_area_inner { width: 100% !important; }
.services.inverse h3 { font-size: 16px; }
}
div.wpcf7-mail-sent-ok, div.wpcf7-validation-errors { width: 180px; }
@media (max-width: 640px) {
.att .md_if_font p { min-height: 1px; }
.sync .md_if_font p { min-height: 1px; }
.att a#slider-button { display: block; width: 47%; margin: 0 auto !important; margin-top: 15px !important; }
.sync a#slider-button { display: block; width: 47%; margin: 0 auto !important; margin-top: 15px !important; }
.qmetry-integration a#slider-button { display: block; width: 47%; margin: 0 auto !important; margin-top: 10px; }
.gap125 { height: 25px; }
.md_if_font.servicep p { width: 100%; }
.span3m,  .span33 { margin: 0 auto; }
.contain_detail_2 { width: 96%; margin: 0 auto; display: block; float: none }
.contain_detail_2#footer_event { float: none !important; }
.span2 .ftr_newsletter { width: 100% !important; }
span.wpcf7-form-control-wrap.mail input { margin-top: 10px; }
.tabs-nav li { width: 90%; margin-right: 0; min-height: 95px; }
}
.filters-set1 .row-fluid .span3 { width: 11% !important; }
.videoborder { border: 2px solid #ccc !important }
.client-video-text span a { color: #f15d2a; }
.error { color: red; }
a.linkgreen { color: #457b00; text-decoration: none; font-weight: bold; font-style: italic; display: block; font-size: 80%; text-align: left; }
.aprilnews img { margin: 0 !important; }
.casetitle { text-align: center !important; margin: 10px; font-weight: bold; }
.ourcap ul li p { padding: 0; text-align: left; }
.newsletters-single .post-entry p { text-align: left; }
.newsletters-posts .post-entry p { text-align: left; padding: 0; }
.qas-minheight { min-height: 149px; }
.newslatter1 .span6 { text-align: left; }
p.featured-webinar { color: #666; text-align: justify; }
.social-links a { color: #fff !important; }
.social-links a:hover { color: #fff !important; }
@media (min-width: 768px) and (max-width: 979px) {
/*.services.services-small h3 { min-height: 72px; }*/
.span3 { width: 295px; }
.att .md_if_font { margin: 25% auto !important; }
.sync .md_if_font { margin: 25% auto !important; }
}
@media (max-width: 768px) {
.black_mobile1 { white-space: normal !important; line-height: 35px !important; }
.black_mobile1 .m11 { line-height: 35px !important; }
.small_header { padding: 15px 0 !important; }
.small_header h2 { text-align: center; }
}
@media (max-width: 320px) {
.black_mobile1,  .black_mobile3 { left: 20px !important; }
}
.qas_ul ul { font-size: 115%; }
.key_benifit p { font-size: 115%; }
.qas_ul .factory { min-height: 185px; }
.qas_ul img { max-width: 100%; }
img.alignnone.size-full.wp-image-4790 { width: 160px; height: 90px; }
img.alignnone.size-full.wp-image-4973 { width: auto; height: 90px; }
img.alignnone.size-full.wp-image-4789, img.alignnone.size-full.wp-image-4787 { width: auto; height: 90px; margin: 0px 0px 20px 0px; }
.mobilematter-s1 .span4 { }
.mobilematter-s2 p { min-height: 90px; }
table.tbl-Agenda td { border: 1px solid #ccc; padding: 12px; vertical-align: middle; font-size: 115%; }
td.td-time { background: #efefef; font-size: 115%; font-weight: bold; width: 25%; }
.td-1, .td-8 { background: #efefef; }
table.tbl-Agenda { border: 1px solid #ccc; width: 100%; text-align: center; }
span.td-title a { font-weight: bold; }
.mobilematter-update-s1 .span4 { text-align: center; }
.socials img { margin: 20px 5px 0 0; }
@media (max-width: 980px) {
.service-box.minwidth230 { max-width: 230px !important; min-width: 230px !important; }
}
@media (max-width: 768px) {
.whychooseus-background .span6 { float: left; width: 100%; }
.whychooseus-background .md_mobile_div { text-align: center !important; }
.last_whyus { margin: 0px; max-width: 100%; }
.whychooseus-background .span6 .span6 { width: 94%; }
.whychooseus-background .span6 .span6 .testing-blk { width: 70% !important; }
}
@media (max-width: 640px) {
.backgrounded.fastFadeFromTop.mobile-testing-testingtype .span3 { width: 100%; }
}
.honeypot { display: none !important; }
.jobhead { display: block; padding: 5px; background: #eeeeee; font-size: 15px; border-radius: 5px; letter-spacing: 1px; margin-bottom: 10px; color: #dd3f19; font-weight: bold; }
input#reloadbtn:hover { background: #FF7302; color: #fff; }
input#reloadbtn { float: left; margin-left: 10px; text-align: center; width: 25% !important; height: 30px; background: #fff; border: 2px solid; }
input#reloadbtn { float: left; margin-left: 10px; text-align: center; /*width:25% !important;*/
    
height: 30px; background: #fff; border: 2px solid; }
.accordion-body.in { border: 1px solid #ccc; }
.ajax-loader { width: 16px; height: 16px; }
div.wpcf7 img.ajax-loader { width: 16px !important; height: 16px !important; }
input.cap { width: 12% !important; float: left; border: 0 !important; background: #ff7302; color: #fff; border-radius: 0 !important; margin: 0 0 0 10px !important; font-weight: bold; letter-spacing: 2px; height: 15px; cursor: pointer; }
.accordion-heading a { color: #F37123 !important; font-weight: bold; letter-spacing: 1px; }
.hiring-block { padding-bottom: 0 !important; }
.mmgallery .bx-viewport { height: auto !important; background: none !important; padding: 0; }
.backgrounded.fastFadeFromTop.mmgallery { padding-bottom: 0 !important; }
.yellow { color: #faa224 !important; }
.orange { color: #ff7302 !important; }
.orange b { color: #ff7302; }
.mm-left { width: 35%; margin: 0; padding: 0; display: inline-block; float: left; }
.mm-right { float: left; display: inline-block; width: 62%; margin: 15px 0 0 10px; padding: 0; font-size: 14px; }
.mm-right span { color: #ff7302; text-align: left; display: block; }
.mm-right h3 { color: #ff7302; margin-bottom: 0; text-align: left; font-size: 25px; }
.mm-right p { padding-left: 0; margin-bottom: 5px; text-align: left; }
.mm-news p { padding-left: 0; font-size: 15px; text-align: left; }
.mm-news a { color: #ff7302 !important; font-weight: bold; float: left; font-size: 115% !important; font-style: normal !important; text-transform: none !important; }
.mm-news { padding: 25px 0 0 0; }
.backgrounded.fastFadeFromTop.mm-main-text, .backgrounded.fastFadeFromTop.mm-speaks, .backgrounded.fastFadeFromTop.mm-featured, .backgrounded.fastFadeFromTop.mm-trends { padding-bottom: 0 !important; }
.backgrounded.fastFadeFromTop.mm-trends p { color: rgb(0, 0, 0); padding-bottom: 0 !important; font-size: 115%; }
.backgrounded.fastFadeFromTop.mm-trends .text-left { text-align: left !important; }
.backgrounded.fastFadeFromTop.mm-speaks p { font-size: 115%; }
.backgrounded.fastFadeFromTop.mm-featured p { color: #000; padding: 0; margin: 0; text-align: left; font-size: 115%; }
.backgrounded.fastFadeFromTop.mm-speaks .container .row, .backgrounded.fastFadeFromTop.mm-featured .container .row, .backgrounded.fastFadeFromTop.mm-trends .row { margin-left: 0; }
.backgrounded.fastFadeFromTop.mm-trends p { font-size: 115%; margin: 0 0 14px 0; }
.backgrounded.fastFadeFromTop.mm-trends h4 { text-transform: none; min-height: 42px; }
a.leader_more { display: block; color: #ff7302 !important; }
/* Mobile Force Page */

.mobileforce-icon { width: 10%; float: left; text-align: center; }
.mobileforce-icon-text { float: left; width: 90%; }
.mobileforce-content h4 { margin-bottom: 5px; padding: 0; }
.our-customers { border: 2px solid #666 !important; padding: 4%; width: 92%; }
.mobileforce-page { padding-top: 15px; clear: both; }
ul#mobileforce { list-style: none; }
ul#mobileforce li { list-style-image: url('../images/blue-bullet.png'); }
.quote { margin: 0; padding: 15px 0 0 0; }
.quote .chat { margin: 0; }
.quote .chat .con { height: auto; float: left; display: inline-block; width: 100%; max-width: 589px; color: #111; }
.quote .chat .con img { margin-top: -2px; display: block; padding: 0; float: right; margin-right: 20%; z-index: 111; position: relative; }
.quote .chat .con p { font-size: 24px; border: 2px solid #3eb1e7; border-radius: 48px; display: inline-block; margin: 0; padding: 35px 2% 35px 8%; line-height: 30px; width: 89%; }
.quote .chat .con span { font-size: 24px; text-align: center; float: right; display: block; clear: both; margin-top: 20px; margin-right: 20%; }
@media screen and (max-width: 560px) {
.quote .chat .con p { padding: 15px; box-sizing: border-box; width: 100%; font-size: 18px; line-height: 25px; border-radius: 25px; }
.quote .chat .con span { margin-top: 15px; margin-right: 10%; font-size: 18px; }
.landing__right_form.hentry #reloadbtn { width: 53% !important; }
}
@media (max-width: 768px) {
.landing__right_form { margin: 0 auto; width: 50% !important; }
img.our-customers { width: 50%; margin: 0 auto; float: none; display: block; }
}
.mobileforce_form { margin-top: 20px; }
/* event page */

.allevents h2 { font-size: 15px; color: #ff7302; letter-spacing: 1px; font-weight: bold; margin-bottom: 5px; }
.allevents h1 { font-size: 35px; }
.event-image { float: left; padding-right: 10px; }
.allevents p { color: #000; }
.event-text { float: left; }
.webinar-main, .events-main { display: inline-block; width: 100%; }
@media (max-width: 768px) {
.event-text { float: left; width: 232px; }
}
@media (max-width: 767px) {
.event-text { float: left; width: 232px; }
.events-main { width: 55%; display: inline-block; margin: 0 auto; text-align: left; }
.allevents .span6 { text-align: center; }
}
@media (max-width: 640px) {
.webinar-main { width: 300px; margin: 0 auto; text-align: left; }
}
@media (max-width: 320px) {
.events-main { width: 270px; margin: 0 auto; display: inline-flex; }
}
.mobile_devlopment_img .service-box { margin-bottom: 0 !important; background-size: contain; background-position: center bottom; }
/* 3-5-2015 */

.two-blocks { text-align: center; margin: 0 auto; width: 100%; }
.two-blocks .row { float: none; width: auto; text-align: center; display: inline-block; }
.telecom-page p { margin-bottom: 30px; color: #666; text-align: justify; }
.telecom-page h4 { color: #ff7302; padding: 20px 0; margin: 0; }
ul#telecomul { margin: 0 0 0 55px; }
ul#telecomul li { padding-left: 15px; }
/* 11-3-2015 */

iframe#contact_form { height: 500px !important; }
@media (max-width: 979px) and (min-width: 768px) {
.span81 { width: 490px; }
}
@media (max-width: 420px) {
.span81 { width: 100%; }
iframe#contact_form { height: 670px !important; }
#tabh1 p, #tabh2 p, #tabh3 p, #tabh4 p { text-align: center; }
.black_mobile22 { left: 10px !important; }
}
iframe#kony_form_iframe { height: 685px; border: 1px solid #000 !important; }
iframe#atos_form_iframe { height: 685px; border: 1px solid #000 !important; }
iframe#perfecto_form_iframe { height: 685px; border: 1px solid #000 !important; }
@media screen and (max-width: 768px) {
iframe#kony_form_iframe { display: block; margin: 0 auto; width: auto !important; }
}
/* 25-3 */

i.icon-search { margin: 2px 0 0 0; padding: 0; background-size: 12px; }
ul.ul_headerlink li:nth-child(2) { margin-left: 15px !important; }
.suppa_menu_6 .suppa_submenu.suppa_submenu_html {
 border-radius: 10px 0 10px 10px;
}
/* 24-3-2015 */

p.left_image, p.right_image { text-align: right; }
p.left_image img, p.right_image img { margin: 0; }
@media (max-width: 767px) {
p.left_image,  p.right_image { text-align: center; }
}
/*10-04-2015*/

.filters-set1 .span2 { width: 14.28571428571429%; /* modified 4-8-2015 */
    
margin: 0; text-align: center; }
.filters-set1 { background: #03517B; }
.filters-set1 .span2 a { color: #fff; }
.filters-set1 { display: table !important; width: 100% !important; }
.filters-set1 .catinfo { display: table-cell; float: none; }
.filters-set1 .catinfo a { margin: 0 4px; }
@media (max-width: 767px) {
.filters-set1 .span2 { width: 100%; }
}
.row-fluid .author { text-transform: uppercase; }
.filters-set1 { padding: 15px 25px; -webkit-border-radius: 2px; -moz-border-radius: 2px; border-radius: 2px; border: none; }
/* 15-4-2015 */

.textwidget ul { margin-left: 0; list-style: none; }
.textwidget ul li { padding: 7px 0; border-bottom: 1px solid #e5e5e5; }
ul.contact-social-links { list-style-type: none; margin: 0; }
ul.contact-social-links li { float: none; display: inline-block; padding: 0; width: 20%; vertical-align: middle; margin: 0 4% 0 0; }
ul.contact-social-links li a { font-size: 40px; margin: 0; color: #6D6D6D; }
ul.contact-social-links i { color: #6D6D6D; font-size: 50px; }
.contact-box { display: inline-block; width: 45%; float: left; background: #fff; }
.contact-box .box_title { display: block; background: #249DE8; color: #fff; font-size: 25px; padding: 10px 15px; }
.contact-box { display: inline-block; width: 45%; float: left; background: #fff; height: 350px; margin-bottom: 60px; }
.contact-box .box_title { display: block; background: #249DE8; color: #fff; font-size: 25px; padding: 12px 35px; }
.contact-box.box-right { float: right; }
.box_content { padding: 35px; }
.box_content p { color: #333; font-size: 16px; float: left; width: 80%; }
.contact_box_section h3 { color: #fff; text-align: center; margin: 60px 0; }
.contact_small_img { width: 34px; float: left; margin: 0 10px 0 0; }
.contact_box_content a { color: #249DE8; text-transform: uppercase; }
@media (max-width: 767px) {
.box_content { padding: 20px 0 0 35px; display: inline-block; width: 80%; }
.contact-box { width: 80%; margin: 40px auto; display: block; float: none !important; clear: both; height: auto; }
.contact-box .box_title { font-size: 19px; }
ul.contact-social-links { max-width: 320px; }
}
@media (max-width: 497px) {
iframe#contact_form { height: 670px !important; }
.content iframe#contact_form { height: 700px !important; }
}
.partner_resources { display: inline-block; width: 100%; margin-bottom: 40px; }
.partner_resources .partner_resources_item { width: 100%; display: inline-block; }
.partner_resources .partner_resources_item .resource_icon { display: inline-block; margin: 0 5px 0 0; }
.partner_resources .partner_resources_item a { vertical-align: middle; border-bottom: 1px solid #888; }
.cs-usbank { padding: 15px; vertical-align: bottom; }
.cs-usbank .case_usbank { vertical-align: bottom; display: inline-block; }
.cs-usbank .case_usbank h3 { text-align: left; margin: 0; background: #005179; color: #fff; font-size: 22px; padding: 10px 20px; }
.cs-usbank .case_usbank ul { margin: 0 0 25px 0; border: 1px solid #005179; padding: 20px; list-style: none; }
.cs-usbank .case_usbank ul li { color: #333; font-size: 16px; margin: 0 0 10px 0; padding: 0 0 0 13px; background: url('../img/li-bg.png') no-repeat 0 8px; }
@media (max-width: 360px) {
.partner_resources .partner_resources_item .resource_icon { display: inline-block; margin: 0 5px 0 0; float: left; }
.partner_resources .partner_resources_item a { width: 63%; margin: 10px 0 0 0; float: left; }
.cs-usbank { padding: 0; }
.cs-usbank .case_usbank ul { padding: 10px; }
.cs-usbank .case_usbank h3 { padding: 10px; }
}
.cs-usbank h3 { text-align: center; }
li.sub_rss a { padding-left: 20px; background: url(../img/icon-rss.gif) 0 50% no-repeat; }
.page-template-page-blog_insights-php .post-entry p { font-size: 16px; }
.textwidget a { font-size: 13px; }
/* 21-4-2015 */

@media (max-width: 768px) {
.contact_new .span4 { width: 320px; margin: 0 auto 40px; max-width: 90%; }

}
@media (max-width: 360px) {
.contact-box .box_title { text-align: center; }
.box_content { padding: 10px 0; float: none; width: 100%; text-align: center; }
.box_content .contact_small_img { margin: 10px auto; float: none; }
.box_content p { margin: 0 auto 20px; float: none; }
}
/* 24-4-2015 */

.m11.partner_banner { color: #fff; font-size: 60% !important; }
.m11.partner_banner_white { color: #fff; }
.p_choose_icon { text-align: center; min-height: 52px; }
.p_choose_icon img { width: auto; }
.partner-whychooseus .why-title { text-align: center; font-size: 30px; }
.partner-whychooseus .md_mobile_div { color: #666; font-size: 115%; text-align: justify; }
.partner-whychooseus .row .span66 { width: 360px; }
.partner_2 .span3 img { width: auto; text-align: center; }
.partner_2 .span3 { text-align: center; }
.partner_2 .learnmore { text-align: center; }
.partner_2 .learnmore a { color: rgb(47, 64, 154); text-decoration: underline; font-size: 16px; }
.blue_strip .span3 { text-align: center; display: block; padding: 0; width: 170px; }
.blue_strip .span3 a { color: #fff; text-transform: uppercase; }
.backgrounded.fastFadeFromTop.blue_strip { margin: 0; padding: 20px 20px !important; }
/* 27-4-2015 */

.info_des { padding: 0 20px; text-align: justify; }
.partner_2 img { width: auto; }
.partner_2 .span4 { text-align: center; }
.partnerlogo { min-height: 100px; }
iframe#partner_form { height: 740px !important; }
/* 28-4-2015 */

.span34 { float: left !important; margin-bottom: 14px !important; margin-left: 4px !important; margin-right: 74px !important; margin-top: 13px !important; width: auto !important; text-align: center; }
.grid-item.featured { min-height: 160px !important; min-width: 148px !important; }
.isotope .isotope-item { margin-bottom: -10px !important; transition-property: transform, opacity; }
.info_blog { width: 224px !important; margin-left: 6px !important; }
.insigts_meta .author, .insigts_meta .pdate, .insigts_meta .ccount { text-transform: uppercase; }
/* 29-4-2015 */

div#rss-link { text-align: right; margin: 0; display: inline-block; vertical-align: top; }
div#rss-link img { margin: 0 10px 0 0; }
.article_dropdown { text-align: right; margin-top: -50px; }
.featuredarticles .isotope-item { position: relative; }
.featuredarticles .social_icons { background: rgba(0, 0, 0, 0.4); margin: 0; padding: 0; bottom: 0; position: absolute; width: 100% }
.featuredarticles h3.title a { color: #fff; }
.featuredarticles h3.title:hover a { text-decoration: underline; }
.featuredarticles .social_icons .social_links img { max-width: 25px; max-height: 25px; }
.featuredarticles .social_icons .social_links { text-align: left; padding: 10px 10px; background: #EEE; }
.featuredarticles .social_icons h3.title { padding: 0 20px; margin: 15px 0; clear: both; }
.featuredarticles .social_icons .social_links a { margin: 0 5px; }
.featuredarticles .social_icons .social_links img.share_icon { float: right; max-width: 18px; max-height: 18px; }
.featuredarticles .info_blog .social_icons .social_links .share_right { float: right; display: inline-block; }
.featuredarticles .info_blog .social_icons .social_links .social_links_hover { width: 90px; display: none; }
.featuredarticles .info_blog .social_icons .social_links:hover { width: 100%; }
.featuredarticles .info_blog .social_icons .social_links:hover .social_links_hover { display: inline-block; }
.featuredarticles .info_blog .social_icons .social_links { float: right; clear: both; position: relative; box-sizing: border-box; border-radius: 100px; margin-right: 10px; }
.featuredarticles .info_blog .social_icons { background: none; }
.featuredarticles .info_blog .social_icons h3.title { background: rgba(0, 0, 0, 0.4); margin: 0; padding: 10px; }
.featuredarticles .info_blog .grid-item { min-height: 150px; }
.featuredarticles .grid-item { min-height: 327px; }
/* 13-5-2015 */

.row.nomar { margin: 0; }
.articles-box-main { width: 32%; display: inline-block; margin-right: 2%; vertical-align: top; float: left; border: 1px solid #939598; box-sizing: border-box; box-shadow: 0 5px 0 #c5c5c6; -webkit-box-shadow: 0 5px 0 #c5c5c6; -moz-box-shadow: 0 5px 0 #c5c5c6; margin-bottom: 35px; }
.articles-box-main.last { margin-right: 0; }
.articles-box-main .articles-top { position: relative; height: 217px; overflow: hidden; }
.articles-box-main .articles-top .hover-text { position: absolute; top: 0; left: 0; background: rgba(0, 0, 0, .8); width: 100%; height: 100%; opacity: 0; transition: 0.5s all; -webkit-transition: 0.5s all; -moz-transition: 0.5s all; }
.articles-box-main .articles-top .hover-text a { position: absolute; top: 50%; left: 50%; color: #fff; background: #ff7302; width: 124px; height: 22px; text-align: center; padding: 6px 0; border-radius: 3px; border: 1px solid rgba(255, 255, 255, .5); margin: -18px 0 0 -63px; font-size: 13px; line-height: 22px; }
.articles-box-main .articles-top .hover-text a:hover { border-color: transparent; }
.articles-box-main .articles-top:hover .hover-text { opacity: 1; }
.articles-box-main .articles-bot { padding: 10px 20px 0 20px; margin-bottom: 10px; border-bottom: 1px solid #dd3f19; }
.articles-box-main .articles-bot h4 { text-align: center; margin-bottom: 20px; height: 42px; }
.articles-box-main .articles-bot span { text-align: center; display: block; text-transform: uppercase; color: #adadad; margin-bottom: 3px; }
.articles-box-main .articles-top img { width: 100%; height: 100%; }
.articles-box-main .articles-bot p { height: 175px; }
/* 14-5-2015 */

.inside-evaluate-management h1 { font-size: 32px; color: #fff; text-align: center; }
.inside-evaluate-management p a { color: #fff; font-size: 18px; text-decoration: underline; }
.inside-evaluate-management p span { display: inherit; padding: 5px 0; color: #fff; }
.inside-evaluate-management p.evaluate-content { padding-left: 30px; padding-bottom: 40px; margin: 0; }
.inside-evaluate-management p.evaluate-content_first { padding-top: 50px; }
/* end 14-5-2015 */
/* 20-5-2015 */

.partnerlogo.partnertwo { float: right; width: 270px; }
.learnmore a { color: rgb(47, 64, 154); text-decoration: underline; font-size: 18px; }
@media (max-width: 980px) {
.featuredarticles .isotope-item.spantop,  .featuredarticles .isotope-item.spanbottom { position: relative !important; width: 100%; margin: 0; transform: translate3d(0, 0px, 0px) !important; -webkit-transform: translate3d(0, 0px, 0px) !important; -moz-transform: translate3d(0, 0px, 0px) !important; }
.filterable-items.featuredarticles .row.isotope { height: auto !important; }
.info_blog { width: 23% !important; margin: 1% !important; }
.articles-box-main,  .articles-box-main.last { width: 46%; margin-left: 1%; margin-right: 1%; }
.blue_strip .span3 { width: 100%; }
.centerimg .span3 { width: 166px; }
}
@media (max-width: 768px) {
.filterable-items.featuredarticles { margin: 0 10px; }
.info_blog { width: 48% !important; float: left; }
.featuredarticles .info_blog .social_icons { width: 100%; }
.filterable-items { margin: 0 10px; }
.articles-box-main,  .articles-box-main.last { width: auto; }
.partnerlogo.partnertwo { float: none !important; }
.centerimg .span3,  .centerimg .span6 { width: 100%; text-align: center; }
.partnerlogo.partnertwo { width: 100%; }

}
@media (max-width: 480px) {
.info_blog { width: 100% !important; margin: 0 !important; }
}
@media screen and (max-width: 560px) {
.article_dropdown { margin: 0; text-align: left; }
}
.menu-bot .menu_mobile_button.btncenter { display: inline-block; float: left; vertical-align: middle; margin-top: 20px; }
.partner_menu_link { border-bottom: 1px solid #ccc; padding-bottom: 10px; width: 100%; float: left; margin-bottom: 10px; }
/*25-05-2015*/

.news-single .post-entry p { padding: 0px !important; }
.catinfo { width: 12%; }
/* Wearable Infographics */

.wearable-info a#slider-button { float: left; }
.wearable-info p { text-align: left; color: #666; padding: 0; }
.wearable-info p span, .wearable-info p a { color: #f67107; }
.left-text { float: left; clear: both; }
.left-text p { margin: 0; }
.right-text { float: right; width: 93%; }
.right-text p { margin: 0; padding: 0; }
.predict { display: block; }
.wearable-info h3 { font-size: 50px; font-weight: 500; text-align: left; margin: 20px 0 30px 20px; }
.wearable-info .span3 p { font-size: 20px; text-align: left; margin: 0 0 20px 0; padding: 0 15px; }
/* Smartcar Infographic */

.smart_car p { color: #000; font-size: 21px; font-weight: bold; text-align: left !important; }
.eco_system p { font-size: 22px; font-weight: bold; text-align: left !important; }
.info_driving p { color: #000; font-size: 21px; font-weight: bold; text-align: left !important; }
.smart_car #slider-button { float: left; }
@media (max-width: 980px) {
.featuredarticles .isotope-item.spantop,  .featuredarticles .isotope-item.spanbottom { position: relative !important; width: 100%; margin: 0; transform: translate3d(0, 0px, 0px) !important; -webkit-transform: translate3d(0, 0px, 0px) !important; -moz-transform: translate3d(0, 0px, 0px) !important; }
.filterable-items.featuredarticles .row.isotope { height: auto !important; }
.info_blog { width: 23% !important; margin: 1% !important; }
.articles-box-main,  .articles-box-main.last { width: 46%; margin-left: 1%; margin-right: 1%; }
.blue_strip .span3 { width: 100%; }
.centerimg .span3 { width: 166px; }
.right-text { width: 90%; }
}
@media (max-width: 768px) {
.filterable-items.featuredarticles { margin: 0 10px; }
.info_blog { width: 48% !important; float: left; }
.right-text { width: 86%; }
.featuredarticles .info_blog .social_icons { width: 100%; }
.filterable-items { margin: 0 10px; }
.articles-box-main,  .articles-box-main.last { width: auto; }
.partnerlogo.partnertwo { float: none !important; }
.centerimg .span3,  .centerimg .span6 { width: 100%; text-align: center; }
.partnerlogo.partnertwo { width: 100%; }
.catinfo { width: 100%; }
}
@media (max-width: 480px) {
.info_blog { width: 100% !important; margin: 0 !important; }
.right-text { width: 80%; }
}
@media screen and (max-width: 560px) {
.article_dropdown { margin: 0; text-align: left; }
}
/* 31-7-2015 */

.media-body h2, .media-body .post-thumbnail { /* modified on 4-8-2015 */
    
text-align: center; }
.hentry { /*text-align: left;*/
    /* modified 4-8-2015 */
}
.post-single { text-align: center; }
.btn_download { margin-left: 50px; }
@media (max-width: 980px) {
.featuredarticles .isotope-item.spantop,  .featuredarticles .isotope-item.spanbottom { position: relative !important; width: 100%; margin: 0; transform: translate3d(0, 0px, 0px) !important; -webkit-transform: translate3d(0, 0px, 0px) !important; -moz-transform: translate3d(0, 0px, 0px) !important; }
.filterable-items.featuredarticles .row.isotope { height: auto !important; }
.info_blog { width: 23% !important; margin: 1% !important; }
.articles-box-main,  .articles-box-main.last { width: 46%; margin-left: 1%; margin-right: 1%; }
.centerimg .span3 { width: 166px; }
}
@media (max-width: 768px) {
.filterable-items.featuredarticles { margin: 0 10px; }
.info_blog { width: 48% !important; float: left; }
.featuredarticles .info_blog .social_icons { width: 100%; }
.filterable-items { margin: 0 10px; }
.articles-box-main,  .articles-box-main.last { width: auto; }
.partnerlogo.partnertwo { float: none !important; }
.centerimg .span3,  .centerimg .span6 { width: 100%; text-align: center; }
.partnerlogo.partnertwo { width: 100%; }
.catinfo { width: 100%; }
}
@media (max-width: 480px) {
.info_blog { width: 100% !important; margin: 0 !important; }
}
@media screen and (max-width: 560px) {
.article_dropdown { margin: 0; text-align: left; }
}
/* 4-8-2015 */

.newsletters-single p { color: #666; text-align: left; margin: 0 0 10px 0; padding: 0; font-size: 16px; }
.newsletters-single h3 { text-align: left; margin: 20px 0; padding: 0; font-weight: 400; font-size: 23px; }
.newsletters-single .backgrounded.fastFadeFromTop { padding: 45px 0 !important; border-bottom: 3px solid #CDCDCD; }
a.nl-btn { text-align: left; margin: 15px 0 0 0; border: 1px solid #095383; padding: 5px 8px; border-radius: 5px; color: #095383; display: inline-block; font-size: 16px !important; }
.newsletters-single .col-even { float: right; }
.backgrounded.fastFadeFromTop.nl-march-5, .backgrounded.fastFadeFromTop.nl-june-6 { border: none; text-align: center; }
.backgrounded.fastFadeFromTop.nl-march-5 .span3, .backgrounded.fastFadeFromTop.nl-june-6 .span4 { text-align: center; float: none; display: inline-block; vertical-align: top; }
.backgrounded.fastFadeFromTop.nl-march-5 h3, .backgrounded.fastFadeFromTop.nl-june-6 h3 { font-size: 30px; text-align: center; color: #f67107; margin: 0 0 100px 0; }
.backgrounded.fastFadeFromTop.nl-march-5 h4, .backgrounded.fastFadeFromTop.nl-june-6 h4 { font-weight: 400; margin: 0 0 30px 0; font-size: 22px; }
.backgrounded.fastFadeFromTop.nl-march-5 p, .backgrounded.fastFadeFromTop.nl-june-6 p { text-align: center; margin: 25px 0 0 0; color: #f67107; font-weight: bold; }
.backgrounded.fastFadeFromTop.nl-march-5 p.text-booth { margin: 0; padding: 0; color: #666; }
.backgrounded.fastFadeFromTop.nl-march-5 a.nl-btn, .backgrounded.fastFadeFromTop.nl-june-6 a.nl-btn { margin: 60px 0 0 0; }
.backgrounded.fastFadeFromTop.nl-june-6 a.learn-link { color: #095383; }
footer .bottom-tier { position: relative; }
div#cookie-popup-cont { background: #333331; top: 115px; -webkit-transition: 1s; -o-transition: 1s; transition: 1s; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); }
.cookie-popup-text { display: inline-block; width: 90%; vertical-align: middle; max-width: calc(100% - 100px); padding: 15px 0; }
.cookie-popup-text p { color: #fff; text-align: left; font-size: 15px; margin: 0; display: inline-block; line-height: 20px; max-width: 92%; background-image: url("../img/info.svg"); background-position: center left; background-repeat: no-repeat; padding: 3px 3px 3px 55px; }
.cookie-popup-text a { color: #f67107; text-decoration: underline; }
a#cookie-close { display: inline-block; margin-bottom: 0; font-weight: normal; text-align: center; vertical-align: middle; cursor: pointer; background-image: none; white-space: nowrap; padding: 6px 0; font-size: 14px; line-height: 1.42857143; border-radius: 2px; color: #fff; background-color: #f67107; text-decoration: none; width: 100px; border-radius: 5px; }
@media (max-width: 980px) {
.featuredarticles .isotope-item.spantop,  .featuredarticles .isotope-item.spanbottom { position: relative !important; width: 100%; margin: 0; transform: translate3d(0, 0px, 0px) !important; -webkit-transform: translate3d(0, 0px, 0px) !important; -moz-transform: translate3d(0, 0px, 0px) !important; }
.filterable-items.featuredarticles .row.isotope { height: auto !important; }
.info_blog { width: 23% !important; margin: 1% !important; }
.articles-box-main,  .articles-box-main.last { width: 46%; margin-left: 1%; margin-right: 1%; }
.centerimg .span3 { width: 166px; }
}
@media (max-width: 768px) {
.filterable-items.featuredarticles { margin: 0 10px; }
.info_blog { width: 48% !important; float: left; }
.featuredarticles .info_blog .social_icons { width: 100%; }
.filterable-items { margin: 0 10px; }
.articles-box-main,  .articles-box-main.last { width: auto; }
.partnerlogo.partnertwo { float: none !important; }
.centerimg .span3,  .centerimg .span6 { width: 100%; text-align: center; }
.partnerlogo.partnertwo { width: 100%; }
.catinfo { width: 100%; }
}
@media (max-width: 767px) {
.newsletters-single .backgrounded.fastFadeFromTop { padding: 45px 10px; }
.newsletters-single .col-even { float: none; }
.newsletters-single .span4,  .newsletters-single p,  .newsletters-single h3,  .newsletters-single .span8 { text-align: center; }
}
@media (max-width: 480px) {
.info_blog { width: 100% !important; margin: 0 !important; }
}
@media screen and (max-width: 560px) {
.article_dropdown { margin: 0; text-align: left; }
}
/* Newsletter August and Novmber 2011 */

.newsletters-single .nl-aug-2011?h2, .newsletters-single .nl-nov-2011?h2 {
 text-align: left;
}
.newsletters-single .nl-aug-2011 h2, .newsletters-single .nl-nov-2011 h2 { text-align: left; color: #000; margin: 0; font-weight: 400; }
.nl-aug-2011, .nl-nov-2011-sub { font-size: 18px; }
.nl-aug-2011 p { font-size: 18px; line-height: 22px; margin: 0 0 5px 0 }
.newsletters-single .nl-nov-2011 p { font-size: 18px; line-height: 22px; margin: 0 0 5px 0; text-align: justify; }
.newsletters-single .nl-nov-2011 p.hitting-ace { text-align: justify; }
.newsletters-single .nl-nov-2011-sub p { text-align: left; }
.nl-aug-2011 img, .nl-nov-2011 img { width: 100%; }
.nl-aug-2011 a, .nl-nov-2011 a { color: #4fa5fc; }
a.nl-aug-link { border-bottom: 1px solid #4fa5fc; font-weight: 600; font-size: 16px; }
.nl-aug-2011 h3, .nl-nov-2011 h3 { margin: 20px 0 10px 0; color: #000; font-weight: 600; font-size: 30px; }
ul.aug-ul { list-style-type: none; margin: 0 0 10px 0; }
ul.aug-ul li { line-height: 25px; }
.thought_cont { margin-bottom: 20px; }
a.link-title { font-size: 18px; line-height: 25px; font-weight: 600; display: block; }
.on-demand a.link-title { min-height: 75px; }
ul.aug-ul li { line-height: 25px; color: #666; }
.upcoming-events { margin: 15px 0; display: inline-block; }
.upcoming-events h4 { color: #666; margin: 0; font-weight: 600; }
.upcoming-events span { color: #4fa5fc; margin: 0; padding: 0; display: block; line-height: 15px; font-weight: 600; }
a.nl-aug-watch-link { margin: 15px 0 0 0; display: inline-block; color: #666; }
.nl-nov-2011 { font-size: 18px; }
a.nl-nov-link { display: inline-block; }
ul.latest-buzz-ul { margin: 0 0 18px 50px; color: #666; }
ul.latest-buzz-ul li { padding-bottom: 5px; }
ul.latest-buzz-ul li span { color: #4fa5fc; display: inline-block; border-bottom: 1px solid #4fa5fc; }
p.buzz-title { font-weight: 600; }
p.wdate { margin: 0; font-size: 18px; }
a.nl-aug-link:after { content: ""; border-width: 7px 0px 7px 7px; border-color: transparent transparent transparent #4fa5fc; display: inline-block; border-style: solid; margin: 8px 0 0 5px; }
@media (max-width: 980px) {
.featuredarticles .isotope-item.spantop,  .featuredarticles .isotope-item.spanbottom { position: relative !important; width: 100%; margin: 0; transform: translate3d(0, 0px, 0px) !important; -webkit-transform: translate3d(0, 0px, 0px) !important; -moz-transform: translate3d(0, 0px, 0px) !important; }
.filterable-items.featuredarticles .row.isotope { height: auto !important; }
.info_blog { width: 23% !important; margin: 1% !important; }
.articles-box-main,  .articles-box-main.last { width: 46%; margin-left: 1%; margin-right: 1%; }
.centerimg .span3 { width: 166px; }
}
@media (max-width: 768px) {
.filterable-items.featuredarticles { margin: 0 10px; }
.info_blog { width: 48% !important; float: left; }
.featuredarticles .info_blog .social_icons { width: 100%; }
.filterable-items { margin: 0 10px; }
.articles-box-main,  .articles-box-main.last { width: auto; }
.partnerlogo.partnertwo { float: none !important; }
.centerimg .span3,  .centerimg .span6 { width: 100%; text-align: center; }
.partnerlogo.partnertwo { width: 100%; }
.catinfo { width: 100%; }
}
@media (max-width: 767px) {
.newsletters-single .backgrounded.fastFadeFromTop { padding: 45px 10px; }
.newsletters-single .col-even { float: none; }
.newsletters-single .span4,  .newsletters-single .post-entry p,  .newsletters-single h3,  .newsletters-single .span8 { text-align: center; }
.nl-aug-2011,  .nl-nov-2011-sub { text-align: center; }
ul.aug-ul { text-align: left; }
ul.latest-buzz-ul { text-align: left; margin: 0 0 18px 30px; }
ul.latest-buzz-ul li span { display: block; border: none; }
.nl-aug-2011,  .nl-nov-2011-sub { width: 100%; }
}
@media (max-width: 480px) {
.info_blog { width: 100% !important; margin: 0 !important; }
.right-text { width: 80%; }
.cookie-popup-text { width: 100%; max-width: 100%; }
.cookie-popup-text p { text-align: center; max-width: 100%; background-position: center top; padding: 55px 0 0 3px; }
.cookie-popup-text a { color: #f67107; text-decoration: underline; }
a#cookie-close { display: block; margin: 0px auto 10px; }
}
@media screen and (max-width: 560px) {
.article_dropdown { margin: 0; text-align: left; }
}
/*
font-family: 'Lato', sans-serif;
font-family: 'Open Sans', sans-serif;
*/


.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-sm-3, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 { position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px }
.col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 { float: left }
.col-xs-12 { width: 100% }
.col-xs-11 { width: 91.66666667% }
.col-xs-10 { width: 83.33333333% }
.col-xs-9 { width: 75% }
.col-xs-8 { width: 66.66666667% }
.col-xs-7 { width: 58.33333333% }
.col-xs-6 { width: 50% }
.col-xs-5 { width: 41.66666667% }
.col-xs-4 { width: 33.33333333% }
.col-xs-3 { width: 25% }
.col-xs-2 { width: 16.66666667% }
.col-xs-1 { width: 8.33333333% }
.col-xs-pull-12 { right: 100% }
.col-xs-pull-11 { right: 91.66666667% }
.col-xs-pull-10 { right: 83.33333333% }
.col-xs-pull-9 { right: 75% }
.col-xs-pull-8 { right: 66.66666667% }
.col-xs-pull-7 { right: 58.33333333% }
.col-xs-pull-6 { right: 50% }
.col-xs-pull-5 { right: 41.66666667% }
.col-xs-pull-4 { right: 33.33333333% }
.col-xs-pull-3 { right: 25% }
.col-xs-pull-2 { right: 16.66666667% }
.col-xs-pull-1 { right: 8.33333333% }
.col-xs-pull-0 { right: auto }
.col-xs-push-12 { left: 100% }
.col-xs-push-11 { left: 91.66666667% }
.col-xs-push-10 { left: 83.33333333% }
.col-xs-push-9 { left: 75% }
.col-xs-push-8 { left: 66.66666667% }
.col-xs-push-7 { left: 58.33333333% }
.col-xs-push-6 { left: 50% }
.col-xs-push-5 { left: 41.66666667% }
.col-xs-push-4 { left: 33.33333333% }
.col-xs-push-3 { left: 25% }
.col-xs-push-2 { left: 16.66666667% }
.col-xs-push-1 { left: 8.33333333% }
.col-xs-push-0 { left: auto }
.col-xs-offset-12 { margin-left: 100% }
.col-xs-offset-11 { margin-left: 91.66666667% }
.col-xs-offset-10 { margin-left: 83.33333333% }
.col-xs-offset-9 { margin-left: 75% }
.col-xs-offset-8 { margin-left: 66.66666667% }
.col-xs-offset-7 { margin-left: 58.33333333% }
.col-xs-offset-6 { margin-left: 50% }
.col-xs-offset-5 { margin-left: 41.66666667% }
.col-xs-offset-4 { margin-left: 33.33333333% }
.col-xs-offset-3 { margin-left: 25% }
.col-xs-offset-2 { margin-left: 16.66666667% }
.col-xs-offset-1 { margin-left: 8.33333333% }
.col-xs-offset-0 { margin-left: 0 }
@media (min-width: 768px) {
.col-sm-1,  .col-sm-10,  .col-sm-11,  .col-sm-12,  .col-sm-2,  .col-sm-3,  .col-sm-4,  .col-sm-5,  .col-sm-6,  .col-sm-7,  .col-sm-8,  .col-sm-9 { float: left }
.col-sm-12 { width: 100% }
.col-sm-11 { width: 91.66666667% }
.col-sm-10 { width: 83.33333333% }
.col-sm-9 { width: 75% }
.col-sm-8 { width: 66.66666667% }
.col-sm-7 { width: 58.33333333% }
.col-sm-6 { width: 50% }
.col-sm-5 { width: 41.66666667% }
.col-sm-4 { width: 33.33333333% }
.col-sm-3 { width: 25% }
.col-sm-2 { width: 16.66666667% }
.col-sm-1 { width: 8.33333333% }
.col-sm-pull-12 { right: 100% }
.col-sm-pull-11 { right: 91.66666667% }
.col-sm-pull-10 { right: 83.33333333% }
.col-sm-pull-9 { right: 75% }
.col-sm-pull-8 { right: 66.66666667% }
.col-sm-pull-7 { right: 58.33333333% }
.col-sm-pull-6 { right: 50% }
.col-sm-pull-5 { right: 41.66666667% }
.col-sm-pull-4 { right: 33.33333333% }
.col-sm-pull-3 { right: 25% }
.col-sm-pull-2 { right: 16.66666667% }
.col-sm-pull-1 { right: 8.33333333% }
.col-sm-pull-0 { right: auto }
.col-sm-push-12 { left: 100% }
.col-sm-push-11 { left: 91.66666667% }
.col-sm-push-10 { left: 83.33333333% }
.col-sm-push-9 { left: 75% }
.col-sm-push-8 { left: 66.66666667% }
.col-sm-push-7 { left: 58.33333333% }
.col-sm-push-6 { left: 50% }
.col-sm-push-5 { left: 41.66666667% }
.col-sm-push-4 { left: 33.33333333% }
.col-sm-push-3 { left: 25% }
.col-sm-push-2 { left: 16.66666667% }
.col-sm-push-1 { left: 8.33333333% }
.col-sm-push-0 { left: auto }
.col-sm-offset-12 { margin-left: 100% }
.col-sm-offset-11 { margin-left: 91.66666667% }
.col-sm-offset-10 { margin-left: 83.33333333% }
.col-sm-offset-9 { margin-left: 75% }
.col-sm-offset-8 { margin-left: 66.66666667% }
.col-sm-offset-7 { margin-left: 58.33333333% }
.col-sm-offset-6 { margin-left: 50% }
.col-sm-offset-5 { margin-left: 41.66666667% }
.col-sm-offset-4 { margin-left: 33.33333333% }
.col-sm-offset-3 { margin-left: 25% }
.col-sm-offset-2 { margin-left: 16.66666667% }
.col-sm-offset-1 { margin-left: 8.33333333% }
.col-sm-offset-0 { margin-left: 0 }
}
@media (min-width: 992px) {
.col-md-1,  .col-md-10,  .col-md-11,  .col-md-12,  .col-md-2,  .col-md-3,  .col-md-4,  .col-md-5,  .col-md-6,  .col-md-7,  .col-md-8,  .col-md-9 { float: left }
.col-md-12 { width: 100% }
.col-md-11 { width: 91.66666667% }
.col-md-10 { width: 83.33333333% }
.col-md-9 { width: 75% }
.col-md-8 { width: 66.66666667% }
.col-md-7 { width: 58.33333333% }
.col-md-6 { width: 50% }
.col-md-5 { width: 41.66666667% }
.col-md-4 { width: 33.33333333% }
.col-md-3 { width: 25% }
.col-md-2 { width: 16.66666667% }
.col-md-1 { width: 8.33333333% }
.col-md-pull-12 { right: 100% }
.col-md-pull-11 { right: 91.66666667% }
.col-md-pull-10 { right: 83.33333333% }
.col-md-pull-9 { right: 75% }
.col-md-pull-8 { right: 66.66666667% }
.col-md-pull-7 { right: 58.33333333% }
.col-md-pull-6 { right: 50% }
.col-md-pull-5 { right: 41.66666667% }
.col-md-pull-4 { right: 33.33333333% }
.col-md-pull-3 { right: 25% }
.col-md-pull-2 { right: 16.66666667% }
.col-md-pull-1 { right: 8.33333333% }
.col-md-pull-0 { right: auto }
.col-md-push-12 { left: 100% }
.col-md-push-11 { left: 91.66666667% }
.col-md-push-10 { left: 83.33333333% }
.col-md-push-9 { left: 75% }
.col-md-push-8 { left: 66.66666667% }
.col-md-push-7 { left: 58.33333333% }
.col-md-push-6 { left: 50% }
.col-md-push-5 { left: 41.66666667% }
.col-md-push-4 { left: 33.33333333% }
.col-md-push-3 { left: 25% }
.col-md-push-2 { left: 16.66666667% }
.col-md-push-1 { left: 8.33333333% }
.col-md-push-0 { left: auto }
.col-md-offset-12 { margin-left: 100% }
.col-md-offset-11 { margin-left: 91.66666667% }
.col-md-offset-10 { margin-left: 83.33333333% }
.col-md-offset-9 { margin-left: 75% }
.col-md-offset-8 { margin-left: 66.66666667% }
.col-md-offset-7 { margin-left: 58.33333333% }
.col-md-offset-6 { margin-left: 50% }
.col-md-offset-5 { margin-left: 41.66666667% }
.col-md-offset-4 { margin-left: 33.33333333% }
.col-md-offset-3 { margin-left: 25% }
.col-md-offset-2 { margin-left: 16.66666667% }
.col-md-offset-1 { margin-left: 8.33333333% }
.col-md-offset-0 { margin-left: 0 }
}
@media (min-width: 1200px) {
.col-lg-1,  .col-lg-10,  .col-lg-11,  .col-lg-12,  .col-lg-2,  .col-lg-3,  .col-lg-4,  .col-lg-5,  .col-lg-6,  .col-lg-7,  .col-lg-8,  .col-lg-9 { float: left }
.col-lg-12 { width: 100% }
.col-lg-11 { width: 91.66666667% }
.col-lg-10 { width: 83.33333333% }
.col-lg-9 { width: 75% }
.col-lg-8 { width: 66.66666667% }
.col-lg-7 { width: 58.33333333% }
.col-lg-6 { width: 50% }
.col-lg-5 { width: 41.66666667% }
.col-lg-4 { width: 33.33333333% }
.col-lg-3 { width: 25% }
.col-lg-2 { width: 16.66666667% }
.col-lg-1 { width: 8.33333333% }
.col-lg-pull-12 { right: 100% }
.col-lg-pull-11 { right: 91.66666667% }
.col-lg-pull-10 { right: 83.33333333% }
.col-lg-pull-9 { right: 75% }
.col-lg-pull-8 { right: 66.66666667% }
.col-lg-pull-7 { right: 58.33333333% }
.col-lg-pull-6 { right: 50% }
.col-lg-pull-5 { right: 41.66666667% }
.col-lg-pull-4 { right: 33.33333333% }
.col-lg-pull-3 { right: 25% }
.col-lg-pull-2 { right: 16.66666667% }
.col-lg-pull-1 { right: 8.33333333% }
.col-lg-pull-0 { right: auto }
.col-lg-push-12 { left: 100% }
.col-lg-push-11 { left: 91.66666667% }
.col-lg-push-10 { left: 83.33333333% }
.col-lg-push-9 { left: 75% }
.col-lg-push-8 { left: 66.66666667% }
.col-lg-push-7 { left: 58.33333333% }
.col-lg-push-6 { left: 50% }
.col-lg-push-5 { left: 41.66666667% }
.col-lg-push-4 { left: 33.33333333% }
.col-lg-push-3 { left: 25% }
.col-lg-push-2 { left: 16.66666667% }
.col-lg-push-1 { left: 8.33333333% }
.col-lg-push-0 { left: auto }
.col-lg-offset-12 { margin-left: 100% }
.col-lg-offset-11 { margin-left: 91.66666667% }
.col-lg-offset-10 { margin-left: 83.33333333% }
.col-lg-offset-9 { margin-left: 75% }
.col-lg-offset-8 { margin-left: 66.66666667% }
.col-lg-offset-7 { margin-left: 58.33333333% }
.col-lg-offset-6 { margin-left: 50% }
.col-lg-offset-5 { margin-left: 41.66666667% }
.col-lg-offset-4 { margin-left: 33.33333333% }
.col-lg-offset-3 { margin-left: 25% }
.col-lg-offset-2 { margin-left: 16.66666667% }
.col-lg-offset-1 { margin-left: 8.33333333% }
.col-lg-offset-0 { margin-left: 0; }
}
.pl0 { padding-left: 0 !important; }
.pr0 { padding-right: 0 !important; }
.oh:hover { opacity: 0.8 !important; }
.anim { transition: all 0.4s ease-in-out; -webkit-transition: all 0.4s ease-in-out; -moz-transition: all 0.4s ease-in-out; -o-transition: all 0.4s ease-in-out; -ms-transition: all 0.4s ease-in-out; }
.home .container { max-width: 1200px !important; width: 100% !important; }
.navbar-inner { background: #ffffff; }
.container, .navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container { width: 1200px; }
.backgrounded.fastFadeFromTop { padding: 30px 0; }
.synchro_new { width: 100%; float: left; }
.synchro_new .homeslider.backgrounded { padding: 0 !important; }
.homeslider .bx-clone { /*transform: translate3d(0px, -50px, 0px); -webkit-transform: translate3d(0px, -50px, 0px); -moz-transform: translate3d(0px, -50px, 0px); -o-transform: translate3d(0px, -50px, 0px); -ms-transform: translate3d(0px, -50px, 0px);*/ }

.homeslider .container { max-width: 100% !important; width: 100% !important; }
/*.sbanner .slide.bx-clone { margin-top: -71px !important; }*/
.sbanner { width: 100%; height: 500px; overflow: hidden; background: #eee; /*float:left;*/ -webkit-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -moz-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -o-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -ms-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); position: relative; }
.sbanner .slide { width: 100%; height: 500px; float: left; position: relative; background-attachment: fixed; background-size: cover !important; background-position: 50% 0; margin-top: -00px; /*transform:translateY(0) !important; -webkit-transform:translateY(0) !important; -moz-transform:translateY(0) !important; -ms-transform:translateY(0) !important; -o-transform:translateY(0) !important;*/ }
.sbanner .slide.s1 { background: url(../img/homebanner01.png) no-repeat 50% 000px; }
.sbanner .slide img { width: 100%; float: left; margin: 0; padding: 0; }
.sbanner .slide .desc { position: absolute; text-align: center; max-width: 800px; width: 80%; top: 50%; left: 50%; z-index: 10; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); -moz-transform: translate(-50%, -50%); -o-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); }
.sbanner .slide .desc a { display: inline-block; background: #f67107; color: #fff; text-align: center; font-size: 16px; padding: 12px; min-width: 140px; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.sbanner .slide .desc h2 { font-size:40px; line-height: 120% !important; margin: 0 0 10px 0 !important; color:#fff !important; font-weight: 400 !important; }
.sbanner .slide .desc p { font-size:22px; line-height: 120% !important; margin-bottom: 20px; font-style: italic; color:#fff !important; }
.sbanner .slide .desc .more { font-size: 14px; }

.sbanner .feather { width: 100%; height: 100%; position: absolute; top: 0; left: 0; background: rgba(0, 0, 0, 0); background: -moz-linear-gradient(top, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0) 100%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(0, 0, 0, 1)), color-stop(100%, rgba(0, 0, 0, 0))); background: -webkit-linear-gradient(top, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0) 100%); background: -o-linear-gradient(top, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0) 100%); background: -ms-linear-gradient(top, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0) 100%); background: linear-gradient(to bottom, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0) 100%);  filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#000000', GradientType=0); }
.static_banner .feather { width: 100%; height: 100%; position: absolute; top: 0; left: 0; background: rgba(255, 255, 255, 0); background: -moz-linear-gradient(top, rgba(0, 0, 0, 1) 0%, rgba(255, 255, 255, 0) 100%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(0, 0, 0, 1)), color-stop(100%, rgba(255, 255, 255, 0))); background: -webkit-linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 40%, rgba(0,0,0, 0) 100%); background: -o-linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 40%, rgba(0,0,0, 0) 100%); background: -ms-linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 40%, rgba(0,0,0, 0) 100%); background: linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 40%, rgba(0,0,0, 0) 100%);  filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#000000', GradientType=0); }
.homesliders .bx-wrapper .bx-pager { bottom: 10px; }
.homesliders .bx-viewport { height:500px !important; }
.homesliders .bx-wrapper .bx-controls-direction a { width: 40px; height: 40px; margin-top: -19px; background: url('../img/homebanner_arrows.png') no-repeat 0px 0; }
.homesliders .bx-wrapper .bx-prev:hover { background-position: -0px -40px !important; }
.homesliders .bx-wrapper .bx-next { background-position: -40px -0px !important; }
.homesliders .bx-wrapper .bx-next:hover { background-position: -40px -40px !important; }

.home-2-page .bx-wrapper .bx-pager.bx-default-pager a { background:#fff; opacity: 0.6; }
.home-2-page .bx-wrapper .bx-pager.bx-default-pager a.active { opacity: 1; }
.homeslider .bx-wrapper .bx-pager { width: auto; position: absolute; z-index: 1; bottom: 30px !important; background: rgba(255, 255, 255, 0.4); transform: translateX(-50%); -webkit-transform: translateX(-50%); -moz-transform: translateX(-50%); -ms-transform: translateX(-50%); -o-transform: translateX(-50%); left: 50%; padding: 14px; border-radius: 20px; -webkit-border-radius: 20px; -moz-border-radius: 20px; -ms-border-radius: 20px; -o-border-radius: 20px; }
.homeslider .bx-wrapper .bx-controls-direction a { width: 38px; height: 38px; margin-top: -19px; background: url('../img/slider_nav_arrows.png') no-repeat -1px 0; }
.homeslider .bx-wrapper .bx-prev:hover { background-position: -1px -51px !important; }
.homeslider .bx-wrapper .bx-next { background-position: -52px -1px !important; }
.homeslider .bx-wrapper .bx-next:hover { background-position: -52px -51px !important; }
.homeslider .bx-wrapper .bx-pager .bx-pager-item { float: left; }
.homeslider .bx-wrapper .bx-pager .bx-pager-item a { background: #8f999e; }
.homeslider .bx-wrapper .bx-pager .bx-pager-item a.active { background: #f67107; }
.pg { width: 100%; /*float:left;*/ padding: 40px 10px !important; }
.pg p { color: #666; }
.dtitle { color: #000; font-size: 40px !important; font-weight: 100; margin-bottom: 25px; line-height: 1.2em !important; width: 100%; float: left; text-align: center; }
h3.dtitle { color: #000; font-size: 30px !important; font-weight: 100; margin-bottom: 15px; line-height: 1.2em !important; width: 100%; float: left; text-align: center; }
.dtitle span { color: #ff7302; }
.dtitle.tleft { text-align: left; }
.dtitle.tcenter { text-align: center; }
.mleadership { width: 100%; }
.mleadership p { font-size: 20px !important; line-height: 140% !important; font-weight: 300; }
.mleadership .box { width: 100%; float: left; text-align: center; }
.mleadership .box .img { width: 100%; float: left; text-align: center; margin: 0 0 30px 0; }
.mleadership .box .img img { }
.mleadership .box h3 { width: 100%; float: left; text-align: center; font-size: 14px; font-weight: 700; color: #000; }
.mleadership .box a { color: #f67107; }
.mleadership .box.pb:after { content: ""; top: 50px; right: 0; width: 11px; height: 11px; position: absolute; background: url(../img/plus.png) no-repeat 100% 50%; }
.app_area.border-btm-none { width: 100%; float: left; background: #e9e9e9 !important; position: relative; z-index: 1; padding: 40px 0 !important; margin-top: 0 !important; }
.app_area h3 { padding-top: 0 !important; }
.app_area h3 a { color: #F37022 !important; padding-top: 0; }
.row { margin-left: -15px; margin-right: -15px; }
.footermar { width: 100%; float: left; z-index: 0; }
.footermar.backgrounded { padding: 30px 0; }
#biframe { width: 100%; float: left; }
#biframe #lpeCDiv_4431 { width: 100%; float: left; }

.cust_results_slider, .cust_saying_slider { -webkit-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -moz-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -o-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); -ms-transition: all 1s cubic-bezier(0.86, 0, 0.07, 1); }
.cust_3 { text-align: center; }
.cust_3 .bx-viewport { max-width: 980px !important; margin: 0 auto; }
.cust_3 .slide { text-align: center; }
.cust_3 .bx-wrapper img { display: inline-block; }
.cust_3 .bx-wrapper .bx-controls-direction a { width: 38px; height: 38px; margin-top: -19px; background: url('../img/slider_nav_arrows.png') no-repeat -1px 0; }
.cust_3 .bx-wrapper .bx-prev:hover { background-position: -1px -51px !important; }
.cust_3 .bx-wrapper .bx-next { background-position: -52px -1px !important; }
.cust_3 .bx-wrapper .bx-next:hover { background-position: -52px -51px !important; }
.cust_3 .bx-wrapper .bx-pager { bottom: -48px; }
.cust_3 .bx-wrapper .bx-pager .bx-pager-item a { background: #dfdfdf; }
.cust_3 .bx-wrapper .bx-pager .bx-pager-item a.active { background: #f67107; }
.cust_2 .bx-wrapper .bx-controls-direction a { width: 38px; height: 38px; margin-top: -19px; background: url('../img/slider_nav_arrows.png') no-repeat -1px 0; }
.cust_2 .bx-wrapper .bx-prev:hover { background-position: -1px -51px !important; }
.cust_2 .bx-wrapper .bx-next { background-position: -52px -1px !important; }
.cust_2 .bx-wrapper .bx-next:hover { background-position: -52px -51px !important; }
.cust_2 .bx-wrapper .bx-pager { bottom: -50px; }
.cust_2 .bx-wrapper .bx-pager .bx-pager-item a { background: #dfdfdf; }
.cust_2 .bx-wrapper .bx-pager .bx-pager-item a.active { background: #f67107; }
.cust_2 { text-align: center; background: url("../img/what_our_customers_saying_img.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover; }
.cust_2 ._cite { font-size: 16px; font-weight: normal; margin: 0 auto; text-align: left; width: 690px; }
.cust_2 ._cite img { display: inline-block; vertical-align: top; padding-right: 20px; }
.cust_2 ._cite-content { display: inline-block; vertical-align: top; line-height: 1.6em; padding-top: 10px; text-align: left; }
.cust_2 ._cite-content strong { color: #000; font-size: 18px; }
a.cust-more-btn { display: inline-block; margin: 40px 0 0 0 !important; background-color: transparent; border: 1px solid #f67107; width: 200px; padding: 13.5px 0; border-radius: 3px; color: #f67107; font-size: 18px; }
.home-2-page .aboutpg { background: url(../img/home_about_bg2.jpg) no-repeat 50% 0px; }
.aboutpg { text-align: center; background: url("../img/home_about_bg.png"); background-attachment: fixed !important; background-repeat: no-repeat; background-position: 50% -2500px; background-size: cover; position: relative; }
.aboutpg p { text-align: center; font-size: 28px !important; line-height: 120% !important; color: #fff !important; }
.aboutpg .dtitle { margin: 0 0 10px 0; color: #fff; }
.aboutpg .row-fluid { margin-top: 50px; }
.aboutpg .row-fluid h4 { text-align: left !important; color: #fff; margin-bottom: 10px; }
.aboutpg .row-fluid p { font-size: 16px !important; line-height: 22px !important; text-align: left !important; color: #fff; }
.aboutpg .ul_container1 { padding: 0 30px; }
.aboutpg .ul_container2 { padding: 0 30px; }
.aboutpg .ul_container3 { padding: 0 30px; }
.synchro_new .backgrounded.mjourney { padding-bottom: 0 !important; }
.mjourney .container { padding-bottom: 0px; background: url(../img/mjourney_bg.png) no-repeat 50% 100px; background-size: 100%; }
.mjourney .box { width: 100%; float: left; }
.mjourney .box h3 { font-size: 18px; font-weight: 400; text-align: center; float: left; clear: both; width: 200px; }
.mjourney .box .ic { width: 86px; height: 86px; float: left; margin: 0 0 10px 0; text-align: center; background: #eee; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -o-border-radius: 50%; -ms-border-radius: 50%; position: relative; clear: both; z-index: 1; margin-left: 55px; }
.mjourney .box .ic img { text-align: center; padding: 18px 0; }
.mjourney .box ul { float: left; position: relative; margin: 0px 0 0 114px; padding: 0; }
.mjourney .box ul li { width: 100%; float: left; font-size: 16px; margin: 0 0 10px 0; }
.mjourney .box ul li span { color: #666666; }
.mjourney .box ul:after { position: absolute; top: -10%; left: -16px; height: 115%; content: ""; border-left: 1px dashed #d9d9d9; z-index: -1; }
.mjourney .box .nodesktop h3 { margin-top: 25px; text-align: left; }
.mjourney .box.aug { margin-top: 260px; margin-bottom: 30px; }
.mjourney .box.aug h3 span { color: #f67107; }
.mjourney .box.aug .ic { background: #f67107; }
.mjourney .box.aug li { color: #f67107; }
.mjourney .box.mob { margin-top: 160px; }
.mjourney .box.mob h3 span { color: #faa325; }
.mjourney .box.mob .ic { background: #faa325; }
.mjourney .box.mob li { color: #faa325; }
.mjourney .box.eff { margin-top: 60px; }
.mjourney .box.eff h3 span { color: #698dc8; }
.mjourney .box.eff .ic { background: #698dc8; }
.mjourney .box.eff li { color: #698dc8; }
.mjourney .box.exc { margin-top: 0; }
.mjourney .box.exc h3 span { color: #54bcba; }
.mjourney .box.exc .ic { background: #54bcba; }
.mjourney .box.exc li { color: #54bcba; }
.newsnevent { width: 100%; float: left; }
.newsnevent .box { width: 100%; float: left; }
.newsnevent .box .img { width: 100%; height: 215px; border: 4px solid #fff; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 20px auto; overflow: hidden; background: #fff; box-shadow: 0 0 0 1px #E4E4E1; -webkit-box-shadow: 0 0 0 1px #E4E4E1; -ms-box-shadow: 0 0 0 1px #E4E4E1; -moz-box-shadow: 0 0 0 1px #E4E4E1; -o-box-shadow: 0 0 0 1px #E4E4E1; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
.newsnevent .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.newsnevent .box a.title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.newsnevent .box a.title:hover { color:#F67107; }
.newsnevent .box .desc { width: 100%; float: left; }
.newsnevent .box .desc p { margin: 0; }
.newsnevent .box .desc a { color: #f67107; font-size: 16px; margin: 0 0 10px 0; display: inline-block; }
.newsnevent .box .desc a:hover { text-decoration: underline; }
.newsnevent .box .seemore { display: inline-block; margin: 0; color: #F67107; font-size: 14px; background: url(../img/rarrw.png) no-repeat 0 3px; padding: 0 0 0 22px; /*text-transform: uppercase; */}
.newsnevent .box .seemore:hover { text-decoration: underline; }

.newsletters-page .gap100 { height: 0px; }
.newsletters-page .gap60 { height: 30px; }
.newsletters:last-child .post-entry { border: 0; }

.cust_logos, .info_get_ruselt, .pg_events, .requesttrial, .c_list, .single-events .content, .newsletters-page, .privacy-policy-page, .terms-of-use-page, .qmint_2, .qmetry_9, .testimonials, .case-studies-page, .video-resources-page, .news-press-page, .view-all-resource-page, .fact-sheets-page,
 .white-papers-page, .webcasts-page, .cust_5, .ourmetho, .spotlight, .mbopt, .tools_5, .cspot { background: #fff url(../img/newsnevent_bg.png) repeat-x 50% 100% !important; }

.pg_saperator { background: #fff url(../img/newsnevent_bg.png) repeat-x 50% 100% !important; }

.lrow { width:100%; float:left; }

.lblog { width: 100%; float: left; background: #fff url(../img/newsnevent_bg.png) repeat-x 50% 100% !important; }
.lblog .box { width: 100%; float: left; }
.lblog .box .img { width: 100%; height: 215px; border: 4px solid #fff; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 20px auto; overflow: hidden; background: #fff; box-shadow: 0 0 0 1px #E4E4E1; -webkit-box-shadow: 0 0 0 1px #E4E4E1; -ms-box-shadow: 0 0 0 1px #E4E4E1; -moz-box-shadow: 0 0 0 1px #E4E4E1; -o-box-shadow: 0 0 0 1px #E4E4E1; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
/*.lblog .box .img img { width:auto; max-height:100%; display: inline-block; padding: 5px; }*/

.lblog .box .desc { width: 100%; float: left; }
.lblog .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.lblog .box .title:hover { color:#F67107; }
.lblog .box .desc .date { width: 100%; float: left; margin-bottom: 30px; color: #666; }
.lblog .box .desc .date p { margin:0; }
.lblog .box .desc .text { width: 100%; float: left; color: #666; }
.lblog .box .readmore { color: #F67107; font-size: 14px; float: left; }
.lblog .box .readmore:hover { text-decoration: underline; }
.ftr_newsletter iframe { max-width: 220px; width: 100% !important; min-height: 195px; display: inline-block; }
.ftr_newsletter iframe .richTextSpan * { font-size: 14px !important; }
.footermenu { float: left; }
footer div.container div.row div.footermenu { width: 100%; float: left; }
footer .copyright { margin: 0; float: left; width: 100%; }
.socialright { float: right; }
.socialright span { margin-right: 10px; }
.copytext { color: #666; }
.footer_copyright { width: 100%; float: left; padding-left: 5px; margin-top: 5px; text-align: left; }
.qmetry_7 { width: 100%; float: left; }
.home-core-offering .md_if_font { margin-bottom: 30px; }

.services-contain_top { padding:40px 0; }
.privacy-policy-page { padding:40px 0 0 0; }
.privacy-con { padding:0 0 40px 0; }

/*.ftr_newsletter { overflow-x: hidden !important; }*/
.markchal { text-align: center; }
.markchal .span3m { width: 20%; margin: 0; display: inline-block; }
.markchal .span3m .box-show { height: auto !important; }
.markchal .span3m .box-show img { max-height: 190px; }
.markchal .span3m .contenthover { display: none; }

.div_table { display: table; }
.div_table_cell { display: table-cell; vertical-align: middle; }

.testexp .box { width:100%; float:left; text-align: center; margin: 0 0 30px 0; }
.testexp .box h3 { width:100%; float:left; margin:0 0 10px 0; color: #666; }
.testexp .box p { width:100%; float:left; margin:0 0 10px 0; color:#666; font-size: 16px; line-height: 1.6em; }
.testexp .box a { display: inline-block; background: #ff7302; color: #fff; }

.soimg { width:49.7%; vertical-align: middle; float: none; display: inline-block; text-align: center; }
.socnt { width:49.7%; vertical-align: middle; float: none; display: inline-block; }

.whywork .video { width:100%; float:left; margin: 0 0 40px 0; text-align: center; }
.span_lifeinfo { float: left; width: 100%; margin:10px 0; }

.tabs { width:100%; float:left; display: table; }
.tabs .t { display: table-cell; text-align: center; }
.tabs .t div { text-align: center; margin: 0 3px; }
.tabs .t a { color:#fff; }
.tabs .t a:hover { text-decoration: underline; }

.testimonials .col-md-6 { margin-bottom: 40px; }

.m11 { line-height:120% !important; }
.m12 { padding-top: 10px !important; line-height:120% !important; }
.m133 { display: inline-block; width: 100%; }
.m133 a { display: inline-block; margin: 10px 0; }

.mbopt .soimg { width:29%; }
.mbopt .soimg img { width: 250px; }
.mbopt .socnt { width:70%; }

.vs-box-data .img { width:95%; } 

.mobile-qty-optimization .testing-blk { min-height: 120px; }

.tp-caption.black_mobile3 {  width: 100%; }
.rev_slider .m133 { display: block; }

.rev_slider .btn-large { border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -ms-border-radius: 4px; -o-border-radius: 4px; }

.ddd .box { height: auto !important; min-height: 281px; }

.customers-page .cust_5 .col-md-2 { margin:20px 0; }
.mobile-enablement-page .f.headline { font-size: 24px; }

.small_header { width:100%; padding: 25px 0; background-size: cover !important; }
.small_header .socnt.l { width:34%; }
.small_header .socnt.r { width:65%; }

.small_header h2 { color:#fff !important; margin: 0 !important; line-height: 120% !important; font-weight: 400; text-overflow:ellipsis; white-space: nowrap; overflow: hidden; }
.small_header p { font-size: 26px; line-height: 120%; color:#fff; margin:0; text-align: right; font-weight: 300; }

.small_header.events .socnt.l { width:28%; }
.small_header.events .socnt.r { width:71%; }
.small_header.events .socnt p { font-size: 20px; }

.small_header.partners { background:url(../images/sh_partners.jpg) no-repeat 50% 0; }
.small_header.testi { background:url(../images/sh_testimonials.jpg) no-repeat 50% 0; }
.small_header.events { background:url(../images/sh_events.jpg) no-repeat 50% 0; }
.small_header.awards { background:url(../images/sh_awards.png) no-repeat 50% 0; }
.small_header.about { background:url(../images/sh_about.jpg) no-repeat 50% 0; }
.small_header.culture { background:url(../images/sh_culture.jpg) no-repeat 50% 0; }
.small_header.news { background:url(../images/sh_news.jpg) no-repeat 50% 0; }

.videomsg { width: 100%; float:left; margin: 0 0 15px 0; }
.videomsg .video { width:50%; float:left; text-align: center;}
.videomsg .video .img { width: 200px; height: 200px; display: inline-block; margin:20px auto 0 auto; position: relative; }
.videomsg .video .img .imgin { width: 200px; height: 200px; display: inline-block; overflow: hidden; background-size: cover !important; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; position: relative;-o-border-radius: 50%; }

.videomsg .video .img a { width: 52px; height: 52px; background:#f67107; border:4px solid #fff; display: inline-block; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; position: absolute;bottom: 0;right: 10px;}
.videomsg .video .img a .fa { position: relative; left: 2px; line-height: 44px; }
.videomsg .video .img a:hover { background:#E26501; }
.videomsg .quote { width:50%; float:left; }
.videomsg blockquote { border:0; padding: 15px 0 0 0; font-size: 16px; font-weight: 300; font-style: italic; color:#000; line-height: 22px; }
.videomsg blockquote:before { background: url("../images/video_quote.png") no-repeat; content: ""; left: -30px; overflow: hidden; position: absolute; top: 0px; width: 21px; height: 17px; }
.videomsg blockquote:after { background: url("../images/video_quote.png") no-repeat -26px -31px; content: ""; right: -10px; overflow: hidden; position: absolute; bottom: 0px; width: 22px; height: 17px; }
.videomsg .quote h3 { text-transform: uppercase; color:#000; font-size: 16px; font-weight: 400; margin: 0; }
.videomsg .quote p { font-size: 14px; margin:0; }
.videomsg .quote a { font-style: italic; color:#f67107; font-size: 16px; margin:0; }
.videomsg .quote a:hover { text-decoration: underline; }

.testi_slider { background: url(../img/what_our_customers_saying_img.jpg) no-repeat; background-attachment: fixed;background-repeat: no-repeat;background-position: 50% 0;background-size: cover; }
.testi_slider .video { width:35%; float:left; text-align: center;}
.testi_slider .video .img { width: 275px; height: 275px; display: inline-block; margin:20px auto 0 auto; position: relative; }
.testi_slider .video .img .imgin { width: 275px; height: 275px; display: inline-block; overflow: hidden; background-size: cover !important; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; position: relative;-o-border-radius: 50%; }
.testi_slider .video .img a { width: 72px; height: 72px; background:#f67107; border:4px solid #fff; display: inline-block; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; position: absolute;bottom: 0;right: 10px;}
.testi_slider .video .img a .fa { position: relative; left: 2px; line-height: 64px; font-size: 30px; }
.testi_slider .video .img a:hover { background:#E26501; }
.testi_slider .quote { width:60%; float:left; text-align: center; }
.testi_slider blockquote { width:90%; float:left; border:0; padding: 15px 0 0 0; font-size: 22px; font-weight: 300; font-style: italic; color:#000; line-height: 36px; margin: 0 5% 20px 5%; }
.testi_slider blockquote:before { background: url("../img/quotes-sprite-gray.png") no-repeat; content: ""; left: -50px; overflow: hidden; position: absolute; top: -10px; width: 42px; height: 33px; }
.testi_slider blockquote:after { background: url("../img/quotes-sprite-gray.png") no-repeat -10px -67px; content: ""; right: -50px; overflow: hidden; position: absolute; bottom: -10px; width: 50px; height: 33px; }
.testi_slider .quote .clogo { width:100%; float:left; text-align: center; }
.testi_slider .quote .clogo img { max-height:80px; width:auto; display: inline-block; }
.testi_slider .quote h3 { text-transform: uppercase; color:#000; font-size: 16px; font-weight: 400; margin: 0; }
.testi_slider .quote .desg { font-size: 14px; margin:0; text-align: center; }
.testi_slider .quote .cname { font-style: italic; color:#f67107; font-size: 16px; text-align: center; font-weight: 400; margin:0; }
.testi_slider .bx-controls { margin-top: 30px; }
.testi_slider .bx-controls .bx-pager { position: relative; bottom: 0; width:70%; float:right; }
.testi_slider .bx-wrapper .bx-pager.bx-default-pager a { width:10px; height: 10px; background:#dfdfdf; }
.testi_slider .bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active { background:#f67107 !important; }
.testi_slider .bx-wrapper .bx-prev { background: url("../img/bxcontrols-gray.png") no-repeat 1px 0 !important; width: 40px; height: 40px; transition: none; left:0; z-index: 99; }
.testi_slider .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.testi_slider .bx-wrapper .bx-next { background: url("../img/bxcontrols-gray.png") no-repeat -39px 0 !important; width: 40px; height: 40px; transition: none; right:0; z-index: 99; }
.testi_slider .bx-wrapper .bx-next:hover { background-position: -134px 0 !important; }

.cust_slider_cont.testi_slider { background: none !important; }

.custom_slider { width:100%; float:left; background-color: #fff; background: none; background-attachment: fixed; background-repeat: no-repeat;background-position: 50% 0;background-size: cover; }
.custom_slider .cust-head-text{font-size: 20px; color: #666666; font-weight: 300; margin-top: 30px; text-align:left;}
.custom_slider .cust-head-text a{ color: #f67107; text-decoration: underline; }
.custom_slider .video { width:35%; float:left; text-align: center;}
.custom_slider .video .img { width: 275px; height: 275px; display: inline-block; margin:20px auto 0 auto; position: relative; }
.custom_slider .video .img .imgin { width: 275px; height: 275px; display: inline-block; overflow: hidden; background-size: cover !important; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; position: relative;-o-border-radius: 50%; }

.custom_slider .video .img a { width: 72px; height: 72px; background:#f67107; border:4px solid #fff; display: inline-block; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; position: absolute;bottom: 0;right: 10px;}
.custom_slider .video .img a .fa { position: relative; left: 2px; line-height: 64px; font-size: 30px; }
.custom_slider .video .img a:hover { opacity: 0.8; }
.custom_slider .quote { width:60%; float:left; text-align: center; }
.custom_slider blockquote { width:75%; float:left; border:0; padding: 15px 0 0 0; font-size: 18px; font-weight: 300; font-style: italic; color:#000; line-height: 25px; margin: 0 5% 20px 17%; }
.custom_slider blockquote:before { background: url("../img/quotes-sprite-gray.png") no-repeat; background-size: 30px;  content: ""; left: -33px; overflow: hidden; position: absolute; top: 0px; width: 42px; height: 33px; }
.custom_slider blockquote:after { background: url("../img/quotes-sprite-gray.png") no-repeat 0px -32px; content: ""; right: -50px; background-size: 30px; overflow: hidden; position: absolute; bottom: -10px; width: 50px; height: 33px; }
.custom_slider .quote .clogo { width:100%; float:left; text-align: center; }
.custom_slider .quote .clogo img { max-height:80px; width:auto; display: inline-block; }
.custom_slider .quote h3 { text-transform: uppercase; color:#000; font-size: 16px; font-weight: 400; margin: 0; }
.custom_slider .quote .desg { font-size: 14px; margin:0; }
.custom_slider .quote .cname { font-style: italic; color:#f67107; font-size: 16px; font-weight: 400; margin:0; }
.custom_slider .bx-controls { margin-top: 0px; float: left; width: 100%; position: relative; margin-top:10px;}
.custom_slider .bx-controls .bx-pager { position: relative; bottom: 0; width:100%; float:right; margin-top:0px; padding-top:0px; }
.custom_slider .bx-wrapper .bx-pager.bx-default-pager a { width:12px; height: 12px; background:#cecdcd; }
.custom_slider .bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active { background:#f67107 !important; }
.custom_slider .bx-wrapper .bx-prev { background: url("../img/bxcontrols-gray.png") no-repeat 1px 0 !important; width: 40px; height: 40px; transition: none; left:0; z-index: 99; top:100%; margin-top:-34px; }
.custom_slider .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.custom_slider .bx-wrapper .bx-next { background: url("../img/bxcontrols-gray.png") no-repeat -39px 0 !important; width: 40px; height: 40px; transition: none; right:0; z-index: 99; top:100%; margin-top:-34px; }
.custom_slider .bx-wrapper .bx-next:hover { background-position: -134px 0 !important; }

.client-list{border:1px solid transparent;}
.client-list:hover { border:1px solid #f2f2f2; -webkit-box-shadow: 0px 0px 2px -1px rgba(0,0,0,0.5); -moz-box-shadow: 0px 0px 2px -1px rgba(0,0,0,0.5); box-shadow: 0px 0px 2px -1px rgba(0,0,0,0.5); -o-moz-box-shadow: 0px 0px 2px -1px rgba(0,0,0,0.5); -ms--moz-box-shadow: 0px 0px 2px -1px rgba(0,0,0,0.5); }  
.client-list .detail-cont{opacity:0; width:100%; height:45px; background-color:#f9f9f9; padding:0px;  }
.client-list:hover .detail-cont{ opacity:1;  }
.client-list .detail-cont a  { color:#01c6ff; }

.wl-cat-caption{ color:#f57106; font-size:18px;}
.client-list .detail-cont a i{ width:30px; height:30px; display:inline-block; border:1px solid #f57106; border-radius:50%; color:#f57106;  padding-top: 6px;  text-align: center; font-size:18px;}
.client-list .detail-cont a:hover i { width:30px; height:30px; border:1px solid #f57106f57106; border-radius:50%; color:#fff;  padding-top: 6px;  text-align: center; background-color:#f57106; }
.disply-none{ display:none;}
.disply-one{ display:block;}
.client-list .logo-box  .detail-dot{ height:5px; width:5px; border-radius:50%; background-color: #f57106;margin: 0px auto 0px;}
.client-list .logo-box:hover .detail-dot{ background-color: #fff;}
.client-list .logo_box .logo_cont { padding:10px 0px; height: 93px;}
.client-list .logo-box img{ width:auto; height:55px;}
.client-list-detail-none .logo-box img{ width:auto; height:55px; margin-bottom:50px;}

.client-list .logo-box img.grayscale { filter: grayscale(100%); -webkit-filter: grayscale(100%);filter: gray; -webkit-transition: all .6s ease; filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale"); opacity: 0.55; }
.client-list:hover .logo-box img.grayscale { filter: grayscale(0%); -webkit-filter: grayscale(0%); .info_get_ruselt  filter: none; opacity:1; }
.client-list-detail-none .logo-box img.grayscale { filter: grayscale(100%); -webkit-filter: grayscale(100%); filter: gray; -webkit-transition: all .6s ease; filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale"); opacity: 0.55; }
.client-list-detail-none:hover .logo-box img.grayscale { filter: grayscale(0%); -webkit-filter: grayscale(0%); .info_get_ruselt  filter: none; opacity:1; }

.cust_2 .testimonial-modal { border: none; z-index: 1; box-sizing: border-box; color: #000; font-size: 19px; font-weight: 300; letter-spacing: -.04em; line-height: 1.5em; margin: 0 auto 15px; position: relative; text-align: center; width: 80%; padding:0px; }
.cust_2 .testimonial-modal:before { background: url("../img/quotes-sprite-gray.png") no-repeat; content: ""; left: -50px; overflow: hidden; position: absolute; top: 5px; width: 50px; height: 50px; }
.cust_2 .testimonial-modal:after { background: url("../img/quotes-sprite-gray.png") no-repeat 0 -50px; content: ""; bottom: 0px; height: 50px; overflow: hidden; position: absolute; right: -50px; width: 50px; }

.person-name{ font-size:16 px; color:#000000; }
.designationtxt{ font-size:14 px; color:#666666; }
.get-started-imp{ font-size: 12px; color: #999; padding-top:5px; }
.cust_saying_slider_wrap .bx-wrapper .bx-prev { background: url("../img/bxcontrols-gray.png") no-repeat 1px 0 !important; width: 40px; height: 40px;}
.cust_saying_slider_wrap .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important;} 
.cust_saying_slider_wrap .bx-wrapper .bx-next { background: url("../img/bxcontrols-gray.png") no-repeat -39px 0 !important;  width: 40px;  height: 40px;}
.cust_saying_slider_wrap .bx-wrapper .bx-next:hover { background-position: -134px 0 !important;}

div.tabbed { position:relative; top: 40px; left: 40px; text-align: left; margin-bottom: 100px; float: left; }
div.tabs a { font-size: 18px; color: #f57106; margin-right: 2px; padding: 0px 4.49%; -moz-border-radius: 5px 5px 0px 0px; }
div.tab_data { display: none; height: 250px; -moz-border-radius: 0px 0px 5px 5px; text-align: center; }
div.tab_data:target { display: block; }

:target div.tab_data { display: block; }
:target div.tab_data + div.tab_data { display: none; }

.c_list { width:100%; float:left; }
.c_list .box { width:100%; height: 550px; margin: 0 0 30px 0; float:left; border: 1px solid #d8d8d8; border-radius: 3px; padding:20px; position: relative; }
.c_list .box .cl { width:100%; height: 100px; float:left; text-align: center; white-space: nowrap; }
.c_list .box .cl .helper { display: inline-block; height: 100%; vertical-align: middle; }
.c_list .box .cl img { vertical-align: middle; max-height: 80px; max-width: 100%; }
.c_list .box .desc { width:100%; float:left; }
.c_list .box .desc p { width:100%; float:left; font-size: 16px; line-height: 24px; }
.c_list .box .info { position: absolute; bottom: 20px; right:20px; text-align: right; }
.c_list .box .info h3 { text-transform: uppercase; color:#000; font-size: 14px; line-height: 130%; font-weight: 700; margin: 0; }
.c_list .box .info .desg { font-size: 14px; margin:0; color:#9e9e9e; line-height: 130%; }
.c_list .box .info .cname { font-style: italic; color:#f67107; font-size: 14px; line-height: 130%; margin:0; font-weight: 400; text-align: right; }
.c_list .box .name { width:100%; float:left; margin:0 0 20px 0; font-size: 18px; font-weight: 700; }
.c_list .box .name .orange { width:100%; float:left; color:#f67107; }
.c_list .box .name .gray { width:100%; float:left; color:#666666; }

.tabbable { width:100%; float:left; }
.pg_events { width:100%; float:left; }
.events { width:100%; float:left; }
.events .box { width: 100%; float: left; text-align: left; padding:0 15px; }
.events .box .img { width: 100%; height: 200px; border: 1px solid #E4E4E1; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 10px auto; overflow: hidden; background: #fff; box-shadow:0 0 0 4px #fff inset; -webkit-box-shadow:0 0 0 4px #fff inset; -moz-box-shadow:0 0 0 4px #fff inset; -ms-box-shadow:0 0 0 4px #fff inset; -o-box-shadow:0 0 0 4px #fff inset; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
.events .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.events .box .catname { text-transform: uppercase; font-size: 14px; margin: 0 0 0; }
.events .box .desc { width: 100%; float: left; font-size: 14px; }
.events .box .desc a { color: #f67107; font-size: 16px; margin: 0 0 10px 0; display: inline-block; }
.events .box .desc a:hover { text-decoration: underline; }
.events .box .seemore { display: inline-block; margin: 15px 0 0 0; color: #F67107; font-size: 14px; background: url(../img/rarrw.png) no-repeat 0 3px; padding: 0 0 0 22px; text-transform: uppercase; }
.events .box .seemore:hover { text-decoration: underline; }

.events-tabs .tab-content { width:100%; float:left; background: none;text-align: center;margin: 0 auto;padding: 15px 0 0 0;box-shadow: none;overflow: hidden;}
.events-tabs .tab-content p{width: 100%;margin: 0 auto;margin-bottom: 15px;}
.events-tabs .nav-tabs { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
.events-tabs .nav-tabs li{border: 1px solid #d7d7d7;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell; }
.events-tabs .nav-tabs li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
.events-tabs .nav-tabs li a:hover, .events-tabs .nav-tabs li a:focus, .events-tabs .nav-tabs li a:active{transition:none;box-shadow: none !important;background-color: transparent;}
.events-tabs .nav-tabs li  a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
.events-tabs .nav-tabs li  a i{color: #9da1a5; font-size: 16px; }
.events-tabs .nav-tabs li.active {background-color: #fafafa;}
.events-tabs .nav-tabs li.active  a span{color:#f67107;}
.events-tabs .nav-tabs li.active  a i{color:#f67107;}
.events-tabs .nav-tabs li a:hover span {color: #f67107;}
.events-tabs .nav-tabs li a:hover i {color: #f67107;}
.events-tabs .nav-tabs li.first{border-radius: 5px 0 0 5px;border-left: 1px solid #d7d7d7;}
.events-tabs .nav-tabs li.last{border-radius: 0 5px 5px 0;}
.events-tabs .tab-content .resp_title.activelink span{color: #f67107;font-weight: 600;}
.events-tabs .tab-content .resp_title.activelink .fa{ color: #f67107; }
.events-tabs .tab-content .resp_title.activelink .fa-chevron-down:before { content: "\f077"; }
.events-tabs .tab-content .resp_title a{text-align:left;}
.events-tabs .tab-content .resp_title a span {margin-left: 15px;}
.events-tabs .resp_title i.fa {color: #ccc; position: relative; float: left; }
.events-tabs .resp_title i.fa.pull-right { float: right; }

.events-tabs .tab-content > .active { width:100%; float:left; margin: 20px 0 40px 0; position: relative; }
.events-tabs .bx-wrapper { max-width: 930px !important; }
.events-tabs .tab-content .resp_title {padding: 0 20px;border: 2px solid #d7d7d7;margin-bottom: 10px;}
.events-tabs .bx-viewport { width:100% !important; }
.events-tabs .box { width: 100%; float: left; text-align: left; padding:0 15px; }
.events-tabs .box .img { width: 100%; height: 160px; border: 1px solid #E4E4E1; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 10px auto; overflow: hidden; background: #fff; box-shadow:0 0 0 4px #fff inset; -webkit-box-shadow:0 0 0 4px #fff inset; -moz-box-shadow:0 0 0 4px #fff inset; -ms-box-shadow:0 0 0 4px #fff inset; -o-box-shadow:0 0 0 4px #fff inset; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
.events-tabs .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.events-tabs .box .title:hover { color:#F67107; }
.events-tabs .box .catname { text-transform: uppercase; font-size: 14px; margin: 0 0 0; }
.events-tabs .box .desc { width: 100%; float: left; font-size: 14px; }
.events-tabs .box .desc a { color: #f67107; font-size: 16px; margin: 0 0 10px 0; display: inline-block; }
.events-tabs .box .desc a:hover { text-decoration: underline; }
.events-tabs .box .seemore { display: inline-block; margin: 15px 0 0 0; color: #F67107; font-size: 14px; background: url(../img/rarrw.png) no-repeat 0 3px; padding: 0 0 0 22px; text-transform: uppercase; }
.events-tabs .box .seemore:hover { text-decoration: underline; }

/****** start - code for infostretch get results tab design (by namrata)*************/
.cust-tabs .tab-content { width:100%; float:left; background: none;text-align: center;margin: 0 auto;padding: 15px 0 0 0;box-shadow: none;overflow: hidden;}
.cust-tabs .tab-content p{width: 100%;margin: 0 auto;margin-bottom: 15px;     height: 68px;    overflow: hidden;}
.cust-tabs .nav-tabs { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
.cust-tabs .nav-tabs li{border: 1px solid #d7d7d7;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell; }
.cust-tabs .nav-tabs li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
.cust-tabs .nav-tabs li a:hover, .cust-tabs .nav-tabs li a:focus, .cust-tabs .nav-tabs li a:active{transition:none;box-shadow: none !important;background-color: transparent;}
.cust-tabs .nav-tabs li  a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
.cust-tabs .nav-tabs li  a i{color: #9da1a5; font-size: 16px; }
.cust-tabs .nav-tabs li.active {background-color: #fafafa;}
.cust-tabs .nav-tabs li.active  a span{color:#f67107;}
.cust-tabs .nav-tabs li.active  a i{color:#f67107;}
.cust-tabs .nav-tabs li a:hover span {color: #f67107;}
.cust-tabs .nav-tabs li a:hover i {color: #f67107;}
.cust-tabs .nav-tabs li.first{border-radius: 5px 0 0 5px;border-left: 1px solid #d7d7d7;}
.cust-tabs .nav-tabs li.last{border-radius: 0 5px 5px 0;}
.cust-tabs .tab-content .resp_title.activelink span{color: #f67107;font-weight: 600;}
.cust-tabs .tab-content .resp_title.activelink .fa{ color: #f67107; }
.cust-tabs .tab-content .resp_title.activelink .fa-chevron-down:before { content: "\f077"; }
.cust-tabs .tab-content .resp_title a{text-align:left; }
.cust-tabs .tab-content .resp_title a span {margin-left: 15px;}
.cust-tabs .resp_title i.fa {color: #ccc; position: relative; float: left; }
.cust-tabs .resp_title i.fa.pull-right { float: right; }

.cust-tabs .tab-content > .active { width:100%; float:left; margin: 20px 0 40px 0; position: relative; }
.cust-tabs .tab-content .resp_title {padding: 0 20px;border: 2px solid #d7d7d7;margin-bottom: 10px;}
.cust-tabs .bx-viewport { width:100% !important; }
.cust-tabs .box { width: 100%; float: left; text-align: left; padding:0 15px; }
.cust-tabs .box .img { width: 100%; height: 160px; border: 1px solid #E4E4E1; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 10px auto; overflow: hidden; background: #fff; box-shadow:0 0 0 4px #fff inset; -webkit-box-shadow:0 0 0 4px #fff inset; -moz-box-shadow:0 0 0 4px #fff inset; -ms-box-shadow:0 0 0 4px #fff inset; -o-box-shadow:0 0 0 4px #fff inset; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
.cust-tabs .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.cust-tabs .box .title:hover { color:#F67107; }
.cust-tabs .box .catname { text-transform: uppercase; font-size: 14px; margin: 0 0 0; }
.cust-tabs .box .desc { width: 100%; float: left; font-size: 14px; }
.cust-tabs .box .desc a { color: #f67107; font-size: 16px; margin: 0 0 10px 0; display: inline-block; }
.cust-tabs .box .desc a:hover { text-decoration: underline; }
.cust-tabs .box .seemore { display: inline-block; margin: 15px 0 0 0; color: #F67107; font-size: 14px; background: url(../img/rarrw.png) no-repeat 0 3px; padding: 0 0 0 22px; text-transform: uppercase; }
.cust-tabs .box .seemore:hover { text-decoration: underline; }

.cust-tabs .bx-wrapper { max-width: 930px !important; }
.cust-tabs .box { margin: 0 0 10px 0; }
.cust-tabs .nav-tabs li a i { font-size: 14px; }
.cust-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }
/****** end-- code for infostretch get results tab design (by namrata)*************/

/****** start - code for infostretch get results tab design (by namrata)*************/
.gets-tabs .tab-content { width:100%; float:left; background: none;text-align: center;margin: 0 auto;padding: 15px 0 0 0;box-shadow: none;overflow: hidden;}
.gets-tabs .tab-content p{width: 100%;margin: 0 auto;margin-bottom: 15px;     height: 68px;    overflow: hidden;}
.gets-tabs .nav-tabs { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
.gets-tabs .nav-tabs li{border: 1px solid #d7d7d7;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell; }
.gets-tabs .nav-tabs li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
.gets-tabs .nav-tabs li a:hover, .gets-tabs .nav-tabs li a:focus, .gets-tabs .nav-tabs li a:active{transition:none;box-shadow: none !important;background-color: transparent;}
.gets-tabs .nav-tabs li  a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
.gets-tabs .nav-tabs li  a i{color: #9da1a5; font-size: 16px; }
.gets-tabs .nav-tabs li.active {background-color: #fafafa;}
.gets-tabs .nav-tabs li.active  a span{color:#f67107;}
.gets-tabs .nav-tabs li.active  a i{color:#f67107;}
.gets-tabs .nav-tabs li a:hover span {color: #f67107;}
.gets-tabs .nav-tabs li a:hover i {color: #f67107;}
.gets-tabs .nav-tabs li.first{border-radius: 5px 0 0 5px;border-left: 1px solid #d7d7d7;}
.gets-tabs .nav-tabs li.last{border-radius: 0 5px 5px 0;}
.gets-tabs .tab-content .resp_title.activelink span{color: #f67107;font-weight: 600;}
.gets-tabs .tab-content .resp_title.activelink .fa{ color: #f67107; }
.gets-tabs .tab-content .resp_title.activelink .fa-chevron-down:before { content: "\f077"; }
.gets-tabs .tab-content .resp_title a{text-align:left; }
.gets-tabs .tab-content .resp_title a span {margin-left: 15px;}
.gets-tabs .resp_title i.fa {color: #ccc; position: relative; float: left; }
.gets-tabs .resp_title i.fa.pull-right { float: right; }

.gets-tabs .tab-content > .active { width:100%; float:left; margin: 20px 0 60px 0; position: relative; }
.gets-tabs .tab-content .resp_title {padding: 0 20px;border: 2px solid #d7d7d7;margin-bottom: 10px;}
.gets-tabs .bx-viewport { width:100% !important; }
.gets-tabs .box { width: 100%; float: left; text-align: left; padding:0 15px; }
.gets-tabs .box .img { width: 100%; height: 160px; border: 1px solid #E4E4E1; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto 10px auto; overflow: hidden; background: #fff; box-shadow:0 0 0 4px #fff inset; -webkit-box-shadow:0 0 0 4px #fff inset; -moz-box-shadow:0 0 0 4px #fff inset; -ms-box-shadow:0 0 0 4px #fff inset; -o-box-shadow:0 0 0 4px #fff inset; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }
.gets-tabs .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; }
.gets-tabs .box .title:hover { color:#F67107; }
.gets-tabs .box .catname { text-transform: uppercase; font-size: 14px; margin: 0 0 0; }
.gets-tabs .box .desc { width: 100%; float: left; font-size: 14px; }
.gets-tabs .box .desc a { color: #f67107; font-size: 16px; margin: 0 0 10px 0; display: inline-block; }
.gets-tabs .box .desc a:hover { text-decoration: underline; }
.gets-tabs .box .seemore { display: inline-block; margin: 15px 0 0 0; color: #F67107; font-size: 14px; background: url(../img/rarrw.png) no-repeat 0 3px; padding: 0 0 0 22px; text-transform: uppercase; }
.gets-tabs .box .seemore:hover { text-decoration: underline; }

.gets-tabs .bx-wrapper { max-width: 930px !important; }
.gets-tabs .box { margin: 0 0 10px 0; }
.gets-tabs .nav-tabs li a i { font-size: 14px; }
.gets-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }
/****** end-- code for infostretch get results tab design (by namrata)*************/

.subtext { font-size: 22px; }
.freecons { background: url(../images/getstarted_bg.jpg) no-repeat 50% 0; background-size: cover; }
.freecons .box { width:100%; float:left; background:#fcfcfc; padding: 15px; border-radius: 4px; -webkit-border-radius: 4px; -ms-border-radius: 4px; -moz-border-radius: 4px; -o-border-radius: 4px; }
.freecons .box .dtitle { text-align: left; margin: 0 0 10px 0; }
.freecons .box ul { list-style: none; margin: 0 0 10px 0; }
.freecons .box ul li { font-size: 12px; }
.freecons .box ul li i { padding-right: 10px; font-size: 12px; color:#cdcdcd; }
.freecons .box .call { margin-top: 10px; width:100%; display: inline-block; }
.freecons .box .call h3 { font-size: 18px; color:#000; }
.freecons .box .small { font-size: 11px; margin-bottom: 10px; color:#999; }
.freecons .box .small a { font-size: 11px; color:#666; text-decoration: underline; }
.freecons .box .small a:hover { text-decoration: none; }

.mb0 { margin-bottom: 0 !important; }
.pb0 { padding-bottom: 0 !important; }

.requesttrial .box { width:100%; float:left; background:#fefefe; position:relative; z-index: 10; border:2px solid #f2f2f2; padding:0 0 15px 0; text-align: center; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -o-border-radius: 4px; -ms-border-radius: 4px; }
.requesttrial .box.active, .requesttrial .box:hover { box-shadow: 0 0 10px 3px #ededed; }
.requesttrial .box.active .icon, .requesttrial .box:hover .icon { opacity: 1; filter: gray; filter: grayscale(0); -moz-filter: grayscale(0); -o-filter: grayscale(0); -ms-filter: grayscale(0); -webkit-filter: grayscale(0); }
.requesttrial .box .icon { opacity: 0.5; margin:20px 0; filter: gray; filter: grayscale(1); -moz-filter: grayscale(1); -o-filter: grayscale(1); -ms-filter: grayscale(1); -webkit-filter: grayscale(1); }
.requesttrial .box .icon .svg.logo { max-height: 120px; margin: 0; }
.requesttrial .box .desc { width:100%; float:left; border-bottom: 2px solid #f2f2f2; margin: 0 0 10px 0; background: #fafafa; }
.requesttrial .box.active .desc, .requesttrial .box:hover .desc { background: #fff; }
.requesttrial .box .desc p { padding: 0 15px; margin: 10px 0; font-size: 16px; }
.requesttrial .box .info { width:100%; float:left; padding:0 15px; }
.requesttrial .box .info p { padding: 0; margin: 10px 0; font-size: 14px; }
.requesttrial .box .info a { margin: 0 0 10px 0; display: inline-block; color:#f67107; }
.requesttrial .box .info a:hover { text-decoration: underline; }
.requesttrial .box .info .btn { padding: 15px 5px; width:100%; margin: 0; background:#f67107; color:#fff; font-weight: 700; font-size: 12px; }
.requesttrial .box .info .btn:hover { opacity: 0.8; text-decoration: none; }
.requesttrial .box .info sup { color:#fff; font-size: 14px; }

#getstarted { width:481px; height:470px; }
#getstarted .mktoForm .mktoFormRow { width: 100%; float: left; margin: 0 0 10px 0; }
#getstarted .mktoForm .mktoFormRow .mktoFormCol { width: 48%; float: left; clear: none; margin-left: 1%; margin-right: 1%; }

#frm_contact { width:100%; height:490px; }
#frm_contact .mktoForm .mktoFormRow { width: 100%; float: left; margin: 0 0 10px 0; }
#frm_contact .mktoForm .mktoFormRow .mktoFormCol { width: 48%; float: left; clear: none; margin-left: 1%; margin-right: 1%; }

#frm_product { width:100%; max-width:485px; margin:0 auto; height:445px; }
#frm_product .mktoForm .mktoFormRow { width: 100%; float: left; margin: 0 0 10px 0; }
#frm_product .mktoForm .mktoFormRow .mktoFormCol { width: 48%; float: left; clear: none; margin-left: 1%; margin-right: 1%; }

#frm_product_a { width:100%; max-width:485px; margin:0 auto; height:450px; }
#frm_product_a .mktoForm .mktoFormRow { width: 100%; float: left; margin: 0 0 10px 0; }
#frm_product_a .mktoForm .mktoFormRow .mktoFormCol { width: 48%; float: left; clear: none; margin-left: 1%; margin-right: 1%; }

.events_2 { width:100%; float:left; padding: 30px 0; }

/*.fancybox-iframe { width:100%; height: 200px; overflow: auto; }
#fancybox-frame{ width:100%; height: 200px; overflow: auto; }*/

.hiddendate { display:none; }

.footermar .col { width: 14.2%; float: left; margin: 0 0 10px 0; padding: 0 10px; }

.static_banner { width:100%; height: 500px; position: relative; }
.static_banner.mobiledev { text-align: center; background: url("../img/mobiledev_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 15% -15px; /*background-size: cover;*/ position: relative; }
.static_banner .desc { position: absolute; text-align: center; max-width: 900px; width: 80%; top: 50%; left: 50%; z-index: 10; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); -moz-transform: translate(-50%, -50%); -o-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); }
.static_banner .desc a { display: inline-block; background: #f67107; color: #fff; text-align: center; font-size: 16px; padding: 12px; min-width: 140px; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.static_banner .desc h2 { font-size:40px; line-height: 120% !important; margin: 0 auto 5px auto !important; color:#fff !important; font-weight: 400 !important; }
.static_banner .desc p { font-size:22px; line-height: 120% !important; margin-bottom: 20px; font-style: italic; color:#fff !important; }
.static_banner .desc .more { font-size: 14px; }

.static_banner.cicd { text-align: center; background: url("../img/cicd_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 110px; background-size: cover; position: relative; }
.static_banner.cicd .desc { max-width: 1100px; }
.static_banner.cicd .desc h2 { max-width: 900px; }

.static_banner.mobile_test { text-align: center; background: url("../img/mobileqa_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% -20px; background-size: 100% !important; position: relative; }

.static_banner.acc_mob { text-align: center; background: url("../img/Accelerating_Banner.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 40px; /*background-size: cover;*/ position: relative; }
.static_banner .desc.full { max-width: 1200px; }
.static_banner .desc .soimg { width:49.4%; }
.static_banner .desc .socnt { width:49.4%; }

.static_banner.mob_opt { text-align: center; background: url("../img/Banner_IMG_1.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }
.static_banner.mob_strat { text-align: center; background: url("../img/m_strategy_banner.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }
.static_banner.mob_automation { text-align: center; background: url("../img/m_test_automation_banner.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% -10px; background-size:100% !important; position: relative; }
.static_banner.bnabout { height: 550px; text-align: center; background: url("../img/banner_about_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 110px; background-size:cover !important; position: relative; }
.static_banner.bnabout .desc { width:100%; max-width: 1200px; }
.static_banner.bnabout .desc p { max-width: 1000px; float: none; display: inline-block; font-style: normal; font-weight: normal; font-size: 20px; line-height: 170% !important; }

.static_banner.toolsandplatform { text-align: center; background: url("../img/toolsnplatform_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }
.static_banner.toolsandplatform .desc { width:100%; max-width: 1200px; display: table; }
.static_banner.toolsandplatform .desc .mid { display: table-cell; vertical-align: middle; float: none; }
.static_banner.toolsandplatform .desc h2 { font-size: 34px; }

.static_banner.qas { text-align: center; background: url("../img/qas_banner_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }
.static_banner.qmetrymobile { text-align: center; background: url("../img/qmetrymobile_banner_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% -90px; background-size:100% !important; position: relative; }

.static_banner.attesto { text-align: center; background: url("../img/attesto_banner_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }
.static_banner.qmetrttestmanager { text-align: center; background: url("../img/qmetrytestmanager_banner_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 40% 90px; background-size:100% !important; position: relative; }

.methodology .box { width:100%; float:left; padding:0 40px; text-align: center; }
.methodology .box .ic { width:100%; float:left; text-align: center; margin:0 0 10px 0; }
.methodology .box .title { width: 100%; display: inline-block; color: #000; font-weight: 400; font-size: 22px; }

.entstack { text-align: center; background: url("../img/stack_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 110px; background-size: cover; position: relative; }

.moresuccess { text-align: center; background: url("../img/more_success_bg.jpg"); background-attachment: fixed; background-repeat: repeat; background-position: 50% 0; background-size: cover; position: relative; }
.moresuccess .bx-wrapper { max-width: 930px !important; margin: 20px auto !important; width:94%; display: inline-block; }
.moresuccess .bx-wrapper .bx-viewport { margin: 0 0 20px 0; }
.moresuccess .bx-wrapper .bx-controls-direction a { width:41px; height: 41px; background: url(../img/bxcontrols-gray.png) no-repeat; }
.moresuccess .bx-wrapper .bx-prev { left: -40px; background-position: 1px 0 !important; }
.moresuccess .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.moresuccess .bx-wrapper .bx-next { right: -40px; background-position: -38px 0 !important; }
.moresuccess .bx-wrapper .bx-next:hover { background-position: -133px 0 !important; }
.moresuccess .slide .box { width:100%; float:left; padding: 0 20px; }
.moresuccess .slide .box h2 { font-size: 22px; font-weight: 400; line-height: 120%; margin: 0 0 10px 0; }
.moresuccess .slide .box .img { width:100%; height: 90px; display: table; margin: 0 0 10px 0; }
.moresuccess .slide .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.moresuccess .slide .box .img img { max-width: 160px; max-height: 90px; }
.moresuccess .bx-wrapper .bx-pager.bx-default-pager a { background: #dadada; }

.mobi_init { text-align: center; background: url("../img/more_success_bg.jpg"); background-attachment: fixed; background-repeat: repeat; background-position: 50% 0; background-size: cover; position: relative; }
.mobi_init .bx-wrapper { max-width: 930px !important; margin: 20px auto !important; width:94%; display: inline-block; }
.mobi_init .bx-wrapper .bx-viewport { margin:0; }
.mobi_init .bx-wrapper .bx-controls-direction a { width:41px; height: 41px; background: url(../img/bxcontrols-gray.png) no-repeat; }
.mobi_init .bx-wrapper .bx-prev { left: -40px; background-position: 1px 0 !important; }
.mobi_init .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.mobi_init .bx-wrapper .bx-next { right: -40px; background-position: -38px 0 !important; }
.mobi_init .bx-wrapper .bx-next:hover { background-position: -133px 0 !important; }
.mobi_init .slide .box { width:100%; float:left; padding: 0 20px; }
.mobi_init .slide .box h2 { font-size: 22px; font-weight: 400; line-height: 120%; margin: 0 0 10px 0; }
.mobi_init .slide .box .img { width:100%; height: 90px; display: table; margin: 0 0 10px 0; }
.mobi_init .slide .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.mobi_init .slide .box .img img { max-width: 160px; max-height: 90px; }
.mobi_init .bx-wrapper .bx-pager.bx-default-pager a { background: #dadada; }

.marketleaders { text-align: center; background:#f5f5f5; position: relative; }
.marketleaders .bx-wrapper { max-width: 930px !important; margin: 20px auto !important; width:94%; display: inline-block; }
.marketleaders .bx-wrapper .bx-viewport { margin: 0 0 20px 0; }
.marketleaders .bx-wrapper .bx-controls-direction a { width:41px; height: 41px; background: url(../img/bxcontrols-gray.png) no-repeat; }
.marketleaders .bx-wrapper .bx-prev { left: -40px; background-position: 1px 0 !important; }
.marketleaders .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.marketleaders .bx-wrapper .bx-next { right: -40px; background-position: -38px 0 !important; }
.marketleaders .bx-wrapper .bx-next:hover { background-position: -133px 0 !important; }
.marketleaders .slide .box { width:100%; float:left; padding: 0 20px; }
.marketleaders .slide .box h2 { font-size: 22px; font-weight: 400; line-height: 120%; margin: 0 0 10px 0; }
.marketleaders .slide .box p { font-size: 18px; line-height: 26px; color:#000; }
.marketleaders .slide .box .img { width:100%; height: 90px; display: table; margin: 0 0 10px 0; }
.marketleaders .slide .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.marketleaders .slide .box .img img { max-width: 160px; max-height: 90px; }
.marketleaders .bx-wrapper .bx-pager.bx-default-pager a { background: #dadada; }

.mobispec { color:#fff; text-align: center; background: url("../img/mobi_spec_bg1.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 110px; background-size: cover; position: relative; }
.mobispec .dtitle { color:#fff; }
.mobispec .subtext { color:#fff; }
.mobispec .exppoints { width:100%; float:left; margin: 20px 0 0 0; }
.mobispec .exppoints .col { width:19.6%; float: left; padding:0 15px;  margin:0.0%; }
.mobispec .exppoints .col .img { width:100%; height: 90px; display: table; margin: 0 0 20px 0; } 
.mobispec .exppoints .col.last { padding-right: 0; }
.mobispec .exppoints .col .img .t { width: 100%; height:100%; display: table-cell; vertical-align: middle; }
.mobispec .exppoints .col h3 { width:100%; display: inline-block; font-weight: 400; color:#fff; margin:0 0 10px 0; font-size: 21px; text-align: center; }
.mobispec .exppoints .col p { width:100%; display: inline-block; color:#fff; margin:0 0 10px 0; text-align: center; }

.admin-bar header .navbar-fixed-top, .admin-bar header .search-bar, .admin-bar header .contact-bar { margin-top: 32px !important; }

.lnk { display: inline-block; color:#333; border:1px solid #dfdfdf; padding:12px 20px; text-align: center; font-weight: 400; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; }
.lnk i { color:#333; font-size: 18px; color:#f67107; margin: 0 5px 0 0; }

.strat_mobi { width:100%; float:left; text-align: center; }
.strat_mobi .strat { width:24.7%; display: inline-block; vertical-align: top; margin: 0 0 20px 0; }
.strat_mobi .strat .box { width:100%; float:left; padding:0 10px; margin: 0 0 30px 0; }
.strat_mobi .strat .decs { width:100%; float:left; padding: 0px; }
.strat_mobi .strat .img { width:100%; display: table; margin: 0 0 10px 0; }
.strat_mobi .strat .img .t { width:100%; display: table-cell; vertical-align: middle; }
.strat_mobi .strat .title { width: 100%; font-size:18px; display: inline-block; color: #000; font-weight: 400; }

.cap_list { width:100%; float:left; text-align: center; }
.cap_list .box { width:18.7%; display: inline-block; vertical-align: top; padding:35px 10px; margin: 0 0.5% 10px 0.5%; background: #fff; text-align: center; box-shadow: 0 0 10px #eee; -webkit-box-shadow: 0 0 10px #eee; -moz-box-shadow: 0 0 10px #eee; -ms-box-shadow: 0 0 10px #eee; -o-box-shadow: 0 0 10px #eee; border-radius: 5px; -webkit-border-radius: 5px; -ms-border-radius: 5px; -moz-border-radius: 5px; -o-border-radius: 5px; }
.cap_list .box.first { margin-left: 0; }
.cap_list .box.last { margin-right: 0; }
.cap_list .box .decs { width:100%; float:left; padding: 0px; }
.cap_list .box .img { width:100%; display: table; margin: 0 0 20px 0; }
.cap_list .box .img .t { width:100%; height: 70px; display: table-cell; vertical-align: middle; }

.global_testing_list { width:100%; float:left; text-align: center; }
.global_testing_list .box { width:100%; display: inline-block; vertical-align: top; padding:35px 0; margin: 0; text-align: center; }
.global_testing_list .box .img { width:100%; display: table; margin: 0 0 20px 0; }
.global_testing_list .box .img .t { width:100%; height: 70px; display: table-cell; vertical-align: middle; }
.global_testing_list .box .desc { width:100%; float:left; padding: 0px; font-size: 18px; font-weight: 600; }

.cont_integration { color:#fff; text-align: left; background: url("../img/cont_integration_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.cont_integration .dtitle { color:#fff; }
.cont_integration .subtext { color:#fff; } 

.jump_start_top { width:100%; float:left; text-align: center; margin: 0 0 20px 0; }
.jump_start_top .img { width:100%; margin: 0 0 10px 0; display: table; }
.jump_start_top .img .t { width:100%; display: table-cell; vertical-align: top; }
.jump_start_top .head { width: 100%; float:left; font-size: 26px; margin: 0 0 5px 0; }
.jump_start_top .subhead { width: 100%; float:left; font-size: 20px; color:#f07125; }

.listboxx { width:100%; float:left; margin: 0 0 20px 0; }
.listboxx ul { width:96%; float:left; list-style-position: inside; text-indent: -17px;  padding: 0; /*-webkit-column-count: 3; -moz-column-count: 3; -ms-column-count: 3; -o-column-count: 3; column-count: 3; -webkit-column-gap: 40px; -moz-column-gap: 40px; column-gap: 40px;*/ }
.listboxx ul li { width:100%; float:left; margin: 0 0 15px 0; }
.listboxx ul.orange { color:#000; }
.listboxx ul.orange span { color:#666; }
.listboxx ul.yellow { color:#faa224; }
.listboxx ul.yellow span { color:#666; }

.fancy_title { width:100%; float:left; background:url(../img/fancy_title_lines.png) repeat-x 50% 47%; text-align: center; margin: 20px 0 30px 0; }
.fancy_title .title { display: inline-block; background: transparent; color:#fff; padding: 5px 10px; }
.fancy_title .title .box { float:left; padding:5px 10px; position: relative; }

.fancy_title .title .box:before { border-left-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 16px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; left: -23px !important; border-right: 7px solid #d4b491; }
.fancy_title .title .box:after { border-right-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 16px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; right: -23px !important; border-left: 7px solid #d4b491; }

.fancy_title.orange .box:before { border-left-color: transparent !important; border: 16px solid #F67107; top: 0; border-right: 7px solid #F67107; }
.fancy_title.orange .box:after { border-right-color: transparent !important; border: 16px solid #F67107; top: 0; border-left: 7px solid #F67107; }

.fancy_title.yellow .box:before { border-left-color: transparent !important; border: 16px solid #faa224; top: 0; border-right: 7px solid #faa224; }
.fancy_title.yellow .box:after { border-right-color: transparent !important; border: 16px solid #faa224; top: 0; border-left: 7px solid #faa224; }

.fancy_title.orange .box { background: #F67107; }
.fancy_title.yellow .box { background: #faa224; }

.nice_title { width:100%; float:left; text-align: center; margin: 20px 0; }
.nice_title .box { width:90%; display: inline-block; text-align: center; padding: 6px 0; position: relative; color:#fff; font-weight: bold; font-size: 16px; }
.nice_title .box:before { border-left-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 18px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; left: -23px !important; border-right: 7px solid #d4b491; }
.nice_title .box:after { border-right-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 18px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; right: -23px !important; border-left: 7px solid #d4b491; }
.nice_title.orange .box:before { border-left-color: transparent !important; border: 17px solid #F67107; top: 0; border-right: 7px solid #F67107; }
.nice_title.orange .box:after { border-right-color: transparent !important; border: 17px solid #F67107; top: 0; border-left: 7px solid #F67107; }
.nice_title.yellow .box:before { border-left-color: transparent !important; border: 17px solid #faa224; top: 0; border-right: 7px solid #faa224; }
.nice_title.yellow .box:after { border-right-color: transparent !important; border: 17px solid #faa224; top: 0; border-left: 7px solid #faa224; }
.nice_title.green .box:before { border-left-color: transparent !important; border: 17px solid #b4c860; top: 0; border-right: 7px solid #b4c860; }
.nice_title.green .box:after { border-right-color: transparent !important; border: 17px solid #b4c860; top: 0; border-left: 7px solid #b4c860; }
.nice_title.orange .box { background: #F67107; }
.nice_title.yellow .box { background: #faa224; }
.nice_title.green .box { background: #b4c860; }

.nice_title.big { width:100%; float:left; text-align: center; margin: 20px 0; }
.nice_title.big .box { width:96%; display: inline-block; text-align: center; padding: 10px 0 9px 0; position: relative; color:#fff; font-weight: bold; font-size: 18px; }
.nice_title.big .box:before { border-left-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 18px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; left: -23px !important; border-right: 7px solid #d4b491; }
.nice_title.big .box:after { border-right-color: transparent !important; content: ''; display: block; position: absolute; width: 0; height: 0; border: 18px solid #d4b491; top: 0; -webkit-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease; right: -23px !important; border-left: 7px solid #d4b491; }
.nice_title.big.green .box:before { border-left-color: transparent !important; border: 22px solid #b4c860; top: 0; border-right: 7px solid #b4c860; }
.nice_title.big.green .box:after { border-right-color: transparent !important; border: 22px solid #b4c860; top: 0; border-left: 7px solid #b4c860; }

.popover { min-width:260px; }
.popover h2 { text-align:left; font-weight: 400 !important; margin: 0 0 10px 0 !important; font-size: 20px !important; }
.popover .orange { color:#f37121; }
.popover .yellow { color:#faa325; }
.popover .blue { color:#688dc8; }
.popover .green { color:#51bdbb; }
.popover .celery { color:#b5cb61; }
.popover ul { width:100%; max-width: 290px; margin: 0 0 0 0; list-style: none; }
.popover ul li { background: url(../img/tooltip_bullet.png) no-repeat 0 4px; margin-bottom: 3px; font-size: 14px; padding-left: 20px; }

.contact_pg { text-align: left; background: url("../img/contactus_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.contact_pg .container { max-width: 1080px; padding: 20px; background: #fcfcfc; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.contact_pg .cdetails { width:100%; float:left; }
.contact_pg .dtitle { margin-bottom: 15px; }
.contact_pg .cdetails .details { width:100%; float:left; margin:0 0 50px 0; }
.contact_pg .cdetails .details .address { width:100%; float:left; padding:0 0 0 30px; background: url(../img/ic_locations.png) no-repeat 0 5px; }
.contact_pg .cdetails .details .address h3 { font-size: 18px; color: #000; margin:0; font-weight: 400; } 
.contact_pg .cdetails .details .phone { width:100%; float:left; color: #000; margin:0; font-weight: 400; padding:5px 0 5px 30px; margin:0 0 10px 0; background: url(../img/ic_mobile.png) no-repeat 0 50%; }
.contact_pg .cdetails .details .fax { width:100%; float:left; color: #000; margin:0; font-weight: 400; padding:5px 0 5px 30px; margin:0 0 10px 0; background: url(../img/ic_phone.png) no-repeat 0 50%; }
.contact_pg .cdetails .details .mail { width:100%; float:left; padding:5px 0 5px 40px; color: #000; margin:0; font-weight: 400; text-decoration: underline; background: url(../img/ic_mail.png) no-repeat 0 50%; }
.contact_pg .cdetails .details .social { width:100%; float:left; list-style: none; padding: 0; margin: 0; }
.contact_pg .cdetails .details .social li { margin: 0 6px; display: inline-block; }
.contact_pg .cdetails .details .social li a { width:40px; height: 40px; text-align: center; display: block; border:1px solid #e8e8e8; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -o-border-radius: 50%; -ms-border-radius: 50%; }
.contact_pg .cdetails .details .social li a:hover { border:1px solid #ff7302; }
.contact_pg .cdetails .details .social li.fb a { background:#fff url(../img/ic_fb.png) no-repeat 50% 50%; }
.contact_pg .cdetails .details .social li.in a { background:#fff url(../img/ic_in.png) no-repeat 50% 50%; }
.contact_pg .cdetails .details .social li.tw a { background:#fff url(../img/ic_tw.png) no-repeat 50% 50%; }
.contact_pg .cdetails .details .social li.gp a { background:#fff url(../img/ic_gp.png) no-repeat 50% 50%; }
.contact_pg .cdetails .details .social li.yt a { background:#fff url(../img/ic_yt.png) no-repeat 50% 50%; }

.frm_getInTouch { width:100%; float:left; padding:10px; padding-top: 0; text-align: center; /*background: #fff; border:1px solid #e8e8e8;*/ border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.frm_getInTouch .tag { margin:0; font-size: 12px; text-align:left; }
.frm_getInTouch #getstarted { width:100%; }

.o_locations { width:100%; float:left; }
.o_locations .box { width:100%; float:left; border:2px solid #f2f2f2; margin: 0 0 30px 0; overflow: hidden; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.o_locations .box .img { width: 100%; height: 210px; float:left; background: #fbfbfb; border-bottom:2px solid #f2f2f2; }
.o_locations .box .img.l1 { background: #fbfbfb url(../img/lo_pennsylvania.png)no-repeat 50% 50%; }
.o_locations .box .img.l2 { background: #fbfbfb url(../img/lo_england.png)no-repeat 50% 50%; }
.o_locations .box .img.l3 { background: #fbfbfb url(../img/lo_ahmedabad.png)no-repeat 50% 50%; }
.o_locations .box .img.l4 { background: #fbfbfb url(../img/lo_pune.png)no-repeat 50% 50%; }
.o_locations .box .img.l5 { background: #fbfbfb url(../img/lo_newyork.png)no-repeat 50% 50%; }
.o_locations .box .img.l6 { background: #fbfbfb url(../img/lo_santaclara.png)no-repeat 50% 50%; }

.o_locations .box .details { width: 100%; float:left; padding: 30px 30px 50px 30px; position: relative; }
.o_locations .box .details .head { width: 100%; float:left; font-size: 18px; font-weight: 400; color:#000; margin: 0 0 10px 0; }
.o_locations .box .details .desc { width: 100%; float:left; margin: 0 0 20px 0; }

.o_locations .box .details .phoneout { width:95%; float:left; position: absolute; bottom: 10px; left: 10px; padding: 0 20px; }
.o_locations .box .details .phone { width: 100%; float:left; /*background: url(../img/ic_mobile.png) no-repeat 0 50%; padding: 5px 0 5px 40px;*/ }
.o_locations .box .details .phone img { display: inline-block; vertical-align: middle; }
.o_locations .box .details .phone .n { display: inline-block; vertical-align: middle; padding: 0 0 0 10px; }
.o_locations .box .details .phone p { margin: 0; color:#000; font-weight: 400; }

.o_locations .dtitle.t2 { display: none; }

.tier_one { text-align: left; background: url("../img/tier_one_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.tier_one .dtitle { font-size: 28px !important; margin: 0 0 10px 0; }
.tier_one .dtitle span { color:#f67107; }
.tier_one .num { text-align: center; }
.tier_one .desc { width:100%; float:left; font-size: 18px; line-height: 160%; }
.tier_one .btns { text-align: left; }
.tier_one .btn { min-width: 110px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px; }
.tier_one .btn:hover { background: #f67107; color:#fff; }
.tier_one .img { text-align: center; }
.tier_one .img.nodesktop { margin:30px 0; }

.tier_two { text-align: left; background: url("../img/tier_two_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.tier_two .dtitle { font-size: 28px !important; margin: 0 0 10px 0; }
.tier_two .dtitle span { color:#faa325; }
.tier_two .num { text-align: center; }
.tier_two .desc { width:100%; float:left; font-size: 18px; line-height: 160%; }
.tier_two .btns { text-align: left; }
.tier_two .btn { min-width: 110px; background: transparent; font-size: 18px; border:1px solid #faa325; color:#faa325; margin: 0 10px 10px 0; padding:15px; }
.tier_two .btn:hover { background: #faa325; color:#fff; }
.tier_two .img { text-align: center; padding-top: 80px; }
.tier_two .img.nodesktop { margin:30px 0; }

.tier_three { text-align: left; background: url("../img/tier_three_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.tier_three .dtitle { font-size: 28px !important; margin: 0 0 10px 0; }
.tier_three .dtitle span { color:#688dc8; }
.tier_three .num { text-align: center; }
.tier_three .desc { width:100%; float:left; font-size: 18px; line-height: 160%; }
.tier_three .btns { text-align: left; }
.tier_three .btn { min-width: 110px; background: transparent; font-size: 18px; border:1px solid #688dc8; color:#688dc8; margin: 0 10px 10px 0; padding:15px; }
.tier_three .btn:hover { background: #688dc8; color:#fff; }
.tier_three .img { text-align: center; }
.tier_three .img img { max-width: 100%; }
.tier_three .img.nodesktop { margin:30px 0; }

.tier_four { text-align: left; background: url("../img/tier_four_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.tier_four .dtitle { font-size: 28px !important; margin: 0 0 10px 0; }
.tier_four .dtitle span { color:#51bdbb; }
.tier_four .num { text-align: center; }
.tier_four .desc { width:100%; float:left; font-size: 18px; line-height: 160%; }
.tier_four .btns { text-align: left; }
.tier_four .btn { min-width: 110px; background: transparent; font-size: 18px; border:1px solid #51bdbb; color:#51bdbb; margin: 0 10px 10px 0; padding:15px; }
.tier_four .btn:hover { background: #51bdbb; color:#fff; }
.tier_four .img { text-align: center; }
.tier_four .img.nodesktop { margin:30px 0; }

.tier_five { text-align: left; background: url("../img/tier_five_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.tier_five .dtitle { font-size: 28px !important; margin: 0 0 10px 0; }
.tier_five .dtitle span { color:#b5cb61; }
.tier_five .num { text-align: center; }
.tier_five .desc { width:100%; float:left; font-size: 18px; line-height: 160%; }
.tier_five .btns { text-align: left; }
.tier_five .btn { min-width: 110px; background: transparent; font-size: 18px; border:1px solid #b5cb61; color:#b5cb61; margin: 0 10px 10px 0; padding:15px; }
.tier_five .btn:hover { background: #b5cb61; color:#fff; }
.tier_five .img { text-align: center; }
.tier_five .img.nodesktop { margin:30px 0; }

.pg_serv_mob { background: #f6f6f6; }
.mob_serv_list { width:100%; float:left; }
.mob_serv_list .box { width:18.8%; display: inline-block; vertical-align: top; padding:35px 10px; margin: 0 0.5% 10px 0.5%; background: #fff; text-align: center; }
.mob_serv_list .box.first { margin-left: 0; }
.mob_serv_list .box.last { margin-right: 0; }
.mob_serv_list .box .img { width:100%; display: table; text-align: center; margin:0 0 20px 0; }
.mob_serv_list .box .img .t { display: table-cell; vertical-align: middle; }

.pg_mob_features .box { width:100%; float:left; text-align: center; padding: 0 15px; }
.pg_mob_features .box .img { width:100%; display: table; text-align: center; margin:0 0 20px 0; }
.pg_mob_features .box .img .t { display: table-cell; vertical-align: middle; }
.pg_mob_features .box .title { width: 100%; float: left; margin: 0 0 10px 0; font-size: 18px; color: #000; font-weight: 400; }
.pg_mob_features .box .desc { width:100%; float:left; }

.global_testing_services .btns { text-align: center; }
.global_testing_services .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.global_testing_services .btn:hover { background: #f67107; color:#fff; }

.iot_features { margin: 30px 0 0 0; }
.iot_features .box { width:100%; float:left; text-align: center; padding: 0 15px; margin:0 0 20px 0; }
.iot_features .box .img { width:100%; display: table; text-align: center; margin:0 0 20px 0; }
.iot_features .box .img .t { height:110px; display: table-cell; vertical-align: middle; }
.iot_features .box .desc { width:100%; float:left; }

.pg_frictionless { text-align: left; background: url("../img/frictionless_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }

.pg_rtattesto { text-align: left; background: url("../img/rt_attesto_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }

.pg_rtattesto .btns { text-align: center; }
.pg_rtattesto .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_rtattesto .btn:hover { background: #f67107; color:#fff; }
.pg_rtattesto .list { width:100%; float:left; margin:0; padding: 0 0 10px 25px; }
.pg_rtattesto .list li { width:100%; float:left; margin:0 0 20px 0; color:#ff7302; font-size: 18px; line-height: 140%; }
.pg_rtattesto .list li span { color:#666; }
.pg_rtattesto h3.dtitle { font-size: 22px !important; line-height: 120% !important; font-weight: 400; color:#000; margin:0 0 20px 0; }

.int_map { background: #f6f6f6; padding-bottom: 0 !important; }
.int_map .dtitle { position: relative; z-index: 100; }
.int_map .qualities { width:100%; float:left; margin:-230px 0 30px 0; position: relative; z-index: 100; }
.int_map .qualities .box { width:100%; float:left; text-align:center; background: #fff; border-bottom:2px solid #f67107; padding: 10px 20px; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.int_map .qualities .box .img { width:100%; height:90px; float:left; display: table; text-align: center; margin: 0 0 10px 0; }
.int_map .qualities .box .img .t { width:100%; display: table-cell; vertical-align: middle; height: 100%; }
.int_map .qualities .box .name { width:100%; float:left; }
.int_map .int_loc_map { width:100%; float:left; margin:-100px 0 0 0; position: relative; z-index: 1; }
.int_map .int_loc_map .img { width:100%; float:left; position: relative; }
.int_map .int_loc_map .loc { width:11px; height: 11px; background: #999; border:2px solid #fff; box-shadow: 0 0 0 1px #999; -webkit-box-shadow: 0 0 0 1px #999; -moz-box-shadow: 0 0 0 1px #999; -ms-box-shadow: 0 0 0 1px #999; -o-box-shadow: 0 0 0 1px #999; border-radius: 50%; position: absolute; z-index: 100; }
.int_map .int_loc_map .loc:hover { background: #ff7302; border:2px solid #ff7302; box-shadow: 0 0 0 1px #ff7302; -webkit-box-shadow: 0 0 0 1px #ff7302; -moz-box-shadow: 0 0 0 1px #ff7302; -ms-box-shadow: 0 0 0 1px #ff7302; -o-box-shadow: 0 0 0 1px #ff7302; }
.int_map .int_loc_map .loc.loc1 { top: 32%; left: 13.7%; }
.int_map .int_loc_map .loc.loc2 { top: 32%; left: 24.7%; }
.int_map .int_loc_map .loc.loc3 { top: 29.5%; left: 25.1%; }
.int_map .int_loc_map .loc.loc4 { top: 19%; left: 46.3%; }
.int_map .int_loc_map .loc.loc5 { top: 41.4%; left: 66.4%; }
.int_map .int_loc_map .loc.loc6 { top: 44.4%; left: 67.6%; }
.int_map .int_loc_map .popover { min-width:120px; text-align: center; background:#ff7302; border:0; color:#fff; }
.int_map .int_loc_map .popover>.arrow:after { border-top-color: #ff7302; box-shadow:0 0 0; }

.anm .pulse1, .anm .pulse2, .anm .pulse3, .anm .pulse4 { z-index: -1; border-radius:50%; position:absolute; height: 110px; width: 110px; top:50%; left:50%; border: 2px solid #ff7302; transition: opacity 500 ease-in-out; -webkit-animation: pulsate 3s infinite; animation: pulsate 3s infinite; -moz-animation: pulsate 3s infinite; -ms-animation: pulsate 3s infinite; -o-animation: pulsate 3s infinite; -webkit-transform:translateX(-50%) translateY(-50%); transform:translateX(-50%) translateY(-50%); -moz-transform:translateX(-50%) translateY(-50%); -ms-transform:translateX(-50%) translateY(-50%); -o-transform:translateX(-50%) translateY(-50%); }
.anm .pulse2 { -webkit-animation: pulsate 3s -.6s infinite; animation: pulsate 3s -.6s infinite; -moz-animation: pulsate 3s -.6s infinite; -ms-animation: pulsate 3s -.6s infinite; -o-animation: pulsate 3s -.6s infinite; }
.anm .pulse3 { -webkit-animation: pulsate 3s -1.2s infinite; animation: pulsate 3s -1.2s infinite; -moz-animation: pulsate 3s -1.2s infinite; -ms-animation: pulsate 3s -1.2s infinite; -o-animation: pulsate 3s -1.2s infinite; }
.anm .pulse4 { -webkit-animation: pulsate 3s -1.8s infinite; animation: pulsate 3s -1.8s infinite; -moz-animation: pulsate 3s -1.8s infinite; -ms-animation: pulsate 3s -1.8s infinite; -o-animation: pulsate 3s -1.8s infinite; }
@-webkit-keyframes pulsate {
    0%,100% { width:10px; height:10px; opacity:0; }
    1% { opacity:1; }
    50% { opacity:0.5; }
    99.999% { width:110px; height:110px; opacity:0; }
}
@-moz-keyframes pulsate {
    0%,100% { width:10px; height:10px; opacity:0; }
    1% { opacity:1; }
    50% { opacity:0.5; }
    99.999% { width:110px; height:110px; opacity:0; }
}
@-ms-keyframes pulsate {
    0%,100% { width:10px; height:10px; opacity:0; }
    1% { opacity:1; }
    50% { opacity:0.5; }
    99.999% { width:110px; height:110px; opacity:0; }
}
@-o-keyframes pulsate {
    0%,100% { width:10px; height:10px; opacity:0; }
    1% { opacity:1; }
    50% { opacity:0.5; }
    99.999% { width:110px; height:110px; opacity:0; }
}
@keyframes pulsate {
    0%,100% { width:10px; height:10px; opacity:0; }
    1% { opacity:1; }
    50% { opacity:0.5; }
    99.999% { width:110px; height:110px; opacity:0; }
}
.proven_tools .requesttrial { background: none !important; }

.exp_mobi { text-align: center; background: url("../img/home_about_bg2.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }
.exp_mobi .dtitle { color:#fff; }
.exp_mobi .experties { width:100%; float:left; text-align: center; }
.exp_mobi .experties .col { width:18.8%; display: inline-block; vertical-align: top; padding: 0 30px; }
.exp_mobi .experties .col .img { width:100%; float:left; display: table; margin:0 0 20px 0; }
.exp_mobi .experties .col .img .t { width:100%; float:left; display: table-cell; }
.exp_mobi .experties .col .name { width:100%; float:left; color:#fff; }

.conn_devices .requesttrial { background: none !important; }
.conn_devices .box { width:100%; float:left; padding:0 0 15px 0; }
.conn_devices .img { width:100%; float:left; display: table; margin:0 0 20px 0; text-align: center; }
.conn_devices .img .t { width:100%; float:left; display: table-cell; }
.conn_devices .name { width:100%; float:left; text-align: center; }

.checkmarks { width:100%; float:left; text-align: center; margin:30px 0; }
.checkmarks .box { width:100%; float:left; padding: 20px; border:1px solid #e2e2e2; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.checkmarks .box .tick { margin: -45px auto 20px auto; display:table; }
.checkmarks .box .desc { width:100%; float:left; }

.hpy_cust { text-align: center; background: url("../img/happy_customers_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }
.hpy_cust .img { width:100%; float:left; margin:20px 0 40px 0; }
.hpy_cust .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.hpy_cust .btn:hover { background: #f67107; color:#fff; }
.apps_tested .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.apps_tested .btn:hover { background: #f67107; color:#fff; }
/*.btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.btn:hover { background: #f67107; color:#fff; }*/

.apps_tested { text-align: center; background: url("../img/apps_tested_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }
.apps_tested .app_features { width:100%; float:left; margin:40px 0; }
.apps_tested .app_features .box { width:100%; float:left; background: #fff; padding: 20px; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; box-shadow:0 0 10px 0px #ddd; }
.apps_tested .app_features .box .img { width:100%; float:left; display: table; margin:0 0 20px 0; text-align: center; }
.apps_tested .app_features .box .img .t { width:100%; float:left; display: table-cell; }
.apps_tested .app_features .box .name { width:100%; float:left; }

.forrester { text-align: center; background: url("../img/forrester_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }
.iSOSwebinar { text-align: center; background: url("../img/wbinar-banner45-jan2016.png"); background-repeat: no-repeat; background-position: 50% 0 !important; background-size: cover !important;}

.graybg { background:#f5f5f5; }

.better_quality { width:100%; }
.better_quality .container { max-width:1000px; } 
.better_quality h3 { width:100%; float:left; font-weight:400; color:#000; }
.better_quality ul { width:100%; display: inline-block; list-style: none; margin:0 0 10px 0; }
.better_quality ul li { width: 100%; float: left; padding:0; margin: 0 0 20px 0; }
.better_quality ul li img { display: inline-block;}
.better_quality ul li span { display: inline-block;width: 80%;vertical-align: middle;line-height: 150%;}
.better_quality ul li i { margin-right: 5px; color:#ff7302; font-size: xx-large; }

.hcust { text-align: center; }
.hcust img { max-width:140px; max-height: 90px; margin: 0 0 20px 0; }

.forrest_form { width:100%; float:left; background:#fcfcfc; padding: 20px; border: 1px solid #ccc; }
.iSOSwebinar_form { width:100%; float:left; background:#fcfcfc; padding: 20px; border: 1px solid #ccc; }
.iSOSwebinar_form #checklist_iframe { width:100%; height:690px; }
.forrest_form .dtitle { font-size:40px !important; font-weight: 400; margin-bottom: 15px; text-align: left; }
.forrest_form .sub { font-size: 11px; color:#000; margin:0 0 5px 0; }
.forrest_form #checklist_iframe { width:100%; height: 760px; }

.menuopt { display: none; }
.circle, .circle:before, .circle:after { border-radius: 50%; }
.sexy_wheel { position: relative; margin: 80px auto; min-width: 280px; width: 50%; max-width: 360px; background:rgba(255,255,255,0.8); border-radius: 50%; box-shadow: 0 0 0 12px rgba(255,255,255,0.2), 0 0 0 22px rgba(255,255,255,0.2); }
.sexy_wheel ul { position: relative; padding: 50%; margin: 0; max-width: 0; max-height: 0; border: 1px solid #fff; box-shadow: 0 0 0; list-style: none; background: white; /*transform:rotate(18deg);*/ }
.sexy_wheel li { position: absolute; }
.slice { overflow: hidden; position: absolute; top: 0; left: 0; width: 50%; height: 50%; transform-origin: 100% 100%; -webkit-transform-origin: 100% 100%; -moz-transform-origin: 100% 100%; -ms-transform-origin: 100% 100%; -o-transform-origin: 100% 100%; /*transition:all 0.4s ease;*/ }
.mobstra { transform: skewX(18deg); -webkit-transform: skewX(18deg); -moz-transform: skewX(18deg); -ms-transform: skewX(18deg); -o-transform: skewX(18deg); }
.mobdev { transform: rotate(72deg) skewX(18deg); -webkit-transform: rotate(72deg) skewX(18deg); -ms-transform: rotate(72deg) skewX(18deg); -moz-transform: rotate(72deg) skewX(18deg); -o-transform: rotate(72deg) skewX(18deg); }
.mobtest { transform: rotate(144deg) skewX(18deg); -webkit-transform: rotate(144deg) skewX(18deg); -moz-transform: rotate(144deg) skewX(18deg); -ms-transform: rotate(144deg) skewX(18deg); -o-transform: rotate(144deg) skewX(18deg); }
.mobauto { transform: rotate(216deg) skewX(18deg); -webkit-transform: rotate(216deg) skewX(18deg); -ms-transform: rotate(216deg) skewX(18deg); -moz-transform: rotate(216deg) skewX(18deg); -o-transform: rotate(216deg) skewX(18deg); }
.mobopt { transform: rotate(288deg) skewX(18deg); -webkit-transform: rotate(288deg) skewX(18deg); -moz-transform: rotate(288deg) skewX(18deg); -ms-transform: rotate(288deg) skewX(18deg); -o-transform: rotate(288deg) skewX(18deg); }
.magnifiable { height: 100%; }
.sexy_wheel label { cursor: pointer; }

.slice label { display: block; width: 200%; height: 200%; font-size: 12px; font-weight: 700; line-height: 4; position: relative; transform: skew(-18deg) rotate(-54deg); -webkit-transform: skew(-18deg) rotate(-54deg); -moz-transform: skew(-18deg) rotate(-54deg); -ms-transform: skew(-18deg) rotate(-54deg); -o-transform: skew(-18deg) rotate(-54deg); box-shadow: 0 0 0; -webkit-box-shadow: 0 0 0; -moz-box-shadow: 0 0 0; -ms-box-shadow: 0 0 0; -o-box-shadow: 0 0 0; opacity: 1; color: transparent; text-align: center; text-decoration: none; /*transition:all 0.4s ease;*/ }
.slice label:before { position: absolute; top: 12%; left: 12%; width: 76%; height: 76%; border-radius: 50%; background-position: 50% 0; background-repeat: no-repeat; background-size: 35% 35%; content: ''; }
.slice label:hover { opacity: 1; }
.slice .name { text-transform: uppercase; }

.slice #ms_name .svg { width: 100%; height:20px; transform: translate(-50%,-250%) rotate(0deg); -webkit-transform: translate(-50%,-250%) rotate(0deg); -moz-transform: translate(-50%,-250%) rotate(0deg); -ms-transform: translate(-50%,-250%) rotate(0deg); -o-transform: translate(-50%,-250%) rotate(0deg); }
.slice #ms_name .svg * { fill:#f37121; }
.slice.current #ms_name .svg { height: 22px; transform: translate(-50%,-200%) rotate(0deg); -webkit-transform: translate(-50%,-200%) rotate(0deg); -moz-transform: translate(-50%,-200%) rotate(0deg); -ms-transform: translate(-50%,-200%) rotate(0deg); -o-transform: translate(-50%,-200%) rotate(0deg); }
.slice.current #ms_name .svg * { fill:#fff; }

.slice #ms_dev .svg { width: 100%; height:24px; transform: translate(-50%,-215%) rotate(0deg); -webkit-transform: translate(-50%,-215%) rotate(0deg); -moz-transform: translate(-50%,-215%) rotate(0deg); -ms-transform: translate(-50%,-215%) rotate(0deg); -o-transform: translate(-50%,-215%) rotate(0deg); }
.slice #ms_dev .svg * { fill:#faa325; }
.slice.current #ms_dev .svg { height: 26px; transform: translate(-50%,-170%) rotate(0deg); -webkit-transform: translate(-50%,-170%) rotate(0deg); -moz-transform: translate(-50%,-170%) rotate(0deg); -ms-transform: translate(-50%,-170%) rotate(0deg); -o-transform: translate(-50%,-170%) rotate(0deg); }
.slice.current #ms_dev .svg * { fill:#fff; }

.slice #ms_test .svg { width: 100%; height:20px; transform: translate(-50%,-180%) rotate(2deg); -webkit-transform: translate(-50%,-180%) rotate(2deg); -moz-transform: translate(-50%,-180%) rotate(2deg); -ms-transform: translate(-50%,-180%) rotate(2deg); -o-transform: translate(-50%,-180%) rotate(2deg); }
.slice #ms_test .svg * { fill:#688dc8; }
.slice.current #ms_test .svg { height: 22px; transform: translate(-50%,-200%) rotate(0deg); -webkit-transform: translate(-50%,-200%) rotate(0deg); -moz-transform: translate(-50%,-200%) rotate(0deg); -ms-transform: translate(-50%,-200%) rotate(0deg); -o-transform: translate(-50%,-200%) rotate(0deg); }
.slice.current #ms_test .svg * { fill:#fff; }

.slice #ms_auto .svg { width: 100%; height:16px; transform: translate(-50%,-215%) rotate(0deg); -webkit-transform: translate(-50%,-215%) rotate(0deg); -moz-transform: translate(-50%,-215%) rotate(0deg); -ms-transform: translate(-50%,-215%) rotate(0deg); -o-transform: translate(-50%,-215%) rotate(0deg); }
.slice #ms_auto .svg * { fill:#51bdbb; }
.slice.current #ms_auto .svg { height: 18px; transform: translate(-50%,-200%) rotate(0deg); -webkit-transform: translate(-50%,-200%) rotate(0deg); -moz-transform: translate(-50%,-200%) rotate(0deg); -ms-transform: translate(-50%,-200%) rotate(0deg); -o-transform: translate(-50%,-200%) rotate(0deg); }
.slice.current #ms_auto .svg * { fill:#fff; }

.slice #ms_opti .svg { width: 100%; height:16px; transform: translate(-50%,-190%) rotate(0deg); -webkit-transform: translate(-50%,-190%) rotate(0deg); -moz-transform: translate(-50%,-190%) rotate(0deg); -ms-transform: translate(-50%,-190%) rotate(0deg); -o-transform: translate(-50%,-190%) rotate(0deg); }
.slice #ms_opti .svg * { fill:#b5cb61; }
.slice.current #ms_opti .svg { height: 18px; transform: translate(-50%,-200%) rotate(0deg); -webkit-transform: translate(-50%,-190%) rotate(0deg); -moz-transform: translate(-50%,-190%) rotate(0deg); -ms-transform: translate(-50%,-190%) rotate(0deg); -o-transform: translate(-50%,-190%) rotate(0deg); }
.slice.current #ms_opti .svg * { fill:#fff; }


.slice .svg { width:36px; height: 36px; z-index: 10; position: absolute; transform: translate(-50%,0%); -webkit-transform: translate(-50%,0%); -moz-transform: translate(-50%,0%); -ms-transform: translate(-50%,0%); -o-transform: translate(-50%,0%); z-index: 100; left:50%; top: 19%; }
.slice .svg svg { max-width:36px !important; max-height: 36px !important; }
.slice .svg svg * { fill:#fff; }

.unsel { top: 34%; left: 34%; width: 32%; height: 32%; background: #fff; }
.unsel label { display: block; height: 100%; background: #fff url(../images/mobility_logo.png) no-repeat 50% 50%; border-radius: 50%; }

.mobopt .svg {  }
.mobopt.current .svg { width:50px; }

.current .svg { width:50px; top:18%; }
.current .svg svg { width:50px !important; }

.mobstra .svg { transform:translate(-50%,0%) rotate(52deg); -webkit-transform:translate(-50%,0%) rotate(52deg); -moz-transform:translate(-50%,0%) rotate(52deg); -ms-transform:translate(-50%,0%) rotate(52deg); -o-transform:translate(-50%,0%) rotate(52deg); }
.mobdev .svg { transform:translate(-60%,-4%) rotate(-20deg); -webkit-transform:translate(-60%,-4%) rotate(-20deg); -moz-transform:translate(-60%,-4%) rotate(-20deg); -ms-transform:translate(-60%,-4%) rotate(-20deg); -o-transform:translate(-60%,-4%) rotate(-20deg); }
.mobtest .svg { transform:translate(-53%,-5%) rotate(-90deg); -webkit-transform:translate(-53%,-5%) rotate(-90deg); -moz-transform:translate(-53%,-5%) rotate(-90deg); -ms-transform:translate(-53%,-5%) rotate(-90deg); -o-transform:translate(-53%,-5%) rotate(-90deg); }
.mobauto .svg { transform:translate(-61%,0%) rotate(-164deg); -webkit-transform:translate(-61%,0%) rotate(-164deg); -ms-transform:translate(-61%,0%) rotate(-164deg); -moz-transform:translate(-61%,0%) rotate(-164deg); -o-transform:translate(-61%,0%) rotate(-164deg); }
.mobopt .svg { transform:translate(-50%,0%) rotate(124deg); -webkit-transform:translate(-50%,0%) rotate(124deg); -moz-transform:translate(-50%,0%) rotate(124deg); -ms-transform:translate(-50%,0%) rotate(124deg); -o-transform:translate(-50%,0%) rotate(124deg); }

.mobstra.current label { background: #f37121; }
.mobdev.current label { background: #faa325; }
.mobtest.current label { background: #688dc8; }
.mobauto.current label { background: #51bdbb; }
.mobopt.current label { background: #b5cb61; }

.mobstra label { color: #f37121; }
.mobdev label { color: #faa325; }
.mobtest label { color: #688dc8; }
.mobauto label { color: #51bdbb; }
.mobopt label { color: #b5cb61; }

.mobstra label:before { background: #f37121; }
.mobdev label:before { background: #faa325; }
.mobtest label:before { background: #688dc8; }
.mobauto label:before { background: #51bdbb; }
.mobopt label:before { background: #b5cb61; }
.slide label { background: #fff; }

.slice label:hover:after { opacity: 0; }

.current.mobstra { transform: skewX(18deg) scale(1.2); -webkit-transform: skewX(18deg) scale(1.2); -ms-transform: skewX(18deg) scale(1.2); -moz-transform: skewX(18deg) scale(1.2); -o-transform: skewX(18deg) scale(1.2); }
.current.mobdev { transform: rotate(72deg) skewX(18deg) scale(1.2); -webkit-transform: rotate(72deg) skewX(18deg) scale(1.2); -moz-transform: rotate(72deg) skewX(18deg) scale(1.2); -ms-transform: rotate(72deg) skewX(18deg) scale(1.2); -o-transform: rotate(72deg) skewX(18deg) scale(1.2); }
.current.mobtest { transform: rotate(144deg) skewX(18deg) scale(1.2); -webkit-transform: rotate(144deg) skewX(18deg) scale(1.2); -moz-transform: rotate(144deg) skewX(18deg) scale(1.2); -ms-transform: rotate(144deg) skewX(18deg) scale(1.2); -o-transform: rotate(144deg) skewX(18deg) scale(1.2); }
.current.mobauto { transform: rotate(216deg) skewX(18deg) scale(1.2); -webkit-transform: rotate(216deg) skewX(18deg) scale(1.2); -moz-transform: rotate(216deg) skewX(18deg) scale(1.2); -ms-transform: rotate(216deg) skewX(18deg) scale(1.2); -o-transform: rotate(216deg) skewX(18deg) scale(1.2); }
.current.mobopt { transform: rotate(288deg) skewX(18deg) scale(1.2); -webkit-transform: rotate(288deg) skewX(18deg) scale(1.2); -moz-transform: rotate(288deg) skewX(18deg) scale(1.2); -ms-transform: rotate(288deg) skewX(18deg) scale(1.2); -o-transform: rotate(288deg) skewX(18deg) scale(1.2); }

.current .name { font-size: 14px; }

.current.mobstra label, 
.current.mobdev label, 
.current.mobtest label, 
.current.mobauto label, 
.current.mobopt label { box-shadow: 0 0 .45em rgba(0,0,0,.5); opacity: 1; color: #fff; }

#ms_test { transform: rotate(180deg); -webkit-transform: rotate(180deg); -moz-transform: rotate(180deg); -ms-transform: rotate(180deg); -o-transform: rotate(180deg); }
#ms_auto { transform: rotate(180deg); -webkit-transform: rotate(180deg); -moz-transform: rotate(180deg); -ms-transform: rotate(180deg); -o-transform: rotate(180deg); }
#ms_opti { transform: rotate(180deg); -webkit-transform: rotate(180deg); -moz-transform: rotate(180deg); -ms-transform: rotate(180deg); -o-transform: rotate(180deg); }

* { tap-highlight-color: rgba(0,0,0,0); -webkit-tap-highlight-color: rgba(0,0,0,0); -moz-tap-highlight-color: rgba(0,0,0,0); -ms-tap-highlight-color: rgba(0,0,0,0); -o-tap-highlight-color: rgba(0,0,0,0); }

.moreinfo { width: 100%; max-width: 300px; color:#fff; position: absolute; }
.moreinfo.top { top:-40px; }
.moreinfo.left { left:-300px; }
.moreinfo.right { right:-330px; }
.moreinfo.bottom { bottom:-40px; }
.moreinfo .box { display: none; width:100%; float:left; padding: 10px; }
.moreinfo .box.active { display: block; }
.moreinfo .title { margin:0 0 10px 0; padding: 0 2px; float:left; font-size: 16px; color:#fff !important; text-transform: uppercase; font-weight: 400; letter-spacing: 0; }
.moreinfo ul { max-width: 100%; max-height:inherit !important; width:100%; float:left; background: transparent; border:0; padding: 0; }
.moreinfo ul li { width:100%; text-align: left; background: url(../images/sexy_wheel_bullet.png) no-repeat 0 4px; padding: 0 0 0 25px; margin: 0 0 5px 0; line-height: 140%; float:left; position: relative; font-size: 14px; font-weight: 400; }
.moreinfo .title.orange { border-bottom: 2px solid #f37121; }
.moreinfo .title.yellow { border-bottom: 2px solid #faa325; }
.moreinfo .title.purple { border-bottom: 2px solid #688dc8; }
.moreinfo .title.green { border-bottom: 2px solid #51bdbb; }
.moreinfo .title.lightgreen { border-bottom: 2px solid #b5cb61; }

/*.circle { width:100%; position: absolute; height: 100%; border-radius: 50%; z-index: 1; }*/
.circle .arrow { width:50px; height:50px; position: absolute; background-size: 100% !important; }
.circle .arrow1 {top: 2.5%; left: 28%; background: url(../images/arrow1.png) no-repeat 50% 50%; transform: rotate(-19deg); -webkit-transform: rotate(-19deg); -moz-transform: rotate(-19deg); -ms-transform: rotate(-19deg); -o-transform: rotate(-19deg); }
.circle .arrow2 {top: 19%; right: 6.5%; background: url(../images/arrow2.png) no-repeat 50% 50%; transform: rotate(58deg); -webkit-transform: rotate(58deg); -moz-transform: rotate(58deg); -ms-transform: rotate(58deg); -o-transform: rotate(58deg); }
.circle .arrow3 {top: 69%; right: 8%; background: url(../images/arrow3.png) no-repeat 50% 50%; transform: rotate(129deg); -webkit-transform: rotate(129deg); -moz-transform: rotate(129deg); -ms-transform: rotate(129deg); -o-transform: rotate(129deg); }
.circle .arrow4 {top: 84%; left: 29%; background: url(../images/arrow4.png) no-repeat 50% 50%; transform: rotate(201deg); -webkit-transform: rotate(201deg); -moz-transform: rotate(201deg); -ms-transform: rotate(201deg); -o-transform: rotate(201deg); }
.circle .arrow5 {top: 44%; left: -1%; background: url(../images/arrow5.png) no-repeat 50% 50%; transform: rotate(-91deg); -webkit-transform: rotate(-91deg); -moz-transform: rotate(-91deg); -ms-transform: rotate(-91deg); -o-transform: rotate(-91deg); }

.automate_testing .subtext { margin: 0 0 20px 0; }
.automate_testing .img { width:100%; display:inline-block; text-align: center; margin:30px 0; }
.automate_testing .bttn { width:100%; float:left; text-align: center; }
.automate_testing .bttn .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.automate_testing .bttn .btn:hover { background: #f67107; color:#fff; }

.testing_iot { text-align: center; background: url("../img/testing_iot_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }

.testing_needs { text-align: center; background: url("../img/mobile_testing_qa_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover !important; position: relative; }

.circular_nav { position: relative; margin: 80px auto 20px auto; min-width: 280px; width: 100%; max-width: 490px; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; }
.circular_nav .nav { position: relative; padding: 50%; max-width: 0; max-height: 0; box-shadow: 0 0 0 transparent; -webkit-box-shadow: 0 0 0 transparent; -moz-box-shadow: 0 0 0 transparent; -ms-box-shadow: 0 0 0 transparent; -o-box-shadow: 0 0 0 transparent; border:1px solid transparent; list-style: none; margin:0; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; }
.circular_nav .nav .center { z-index: 1; max-width:120px; max-height: 120px; width:100%; height: 100%; color:#fff; position: absolute; top:50%; left: 50%; background:#f67107 url(../img/ig_center_bg.png) no-repeat 50% 50%; background-size: 100; text-align: center; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; transform:translate(-50%,-50%); -webkit-transform:translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -ms-transform:translate(-50%,-50%); -o-transform:translate(-50%,-50%); }
.circular_nav .nav .center .to { width:100%; height:100%; display: table; }
.circular_nav .nav .center .t { width: 100%; height: 100%; display: table-cell; vertical-align: middle; }

.circular_nav .nav .center .sm { font-size: 14px; line-height: 100%; font-weight: 700; }
.circular_nav .nav .center .lg { font-size: 20px; line-height: 100%; font-weight: 700; }

.circular_nav .nav .node { width:50%; height: 100px; position: absolute; transform-origin:left; -webkit-transform-origin:left; -moz-transform-origin:left; -ms-transform-origin:left; -o-transform-origin:left; }
.circular_nav .nav .node:after { content:""; width: 25%; border:1px dashed #aeaeae; top:50%; right: 45%; position: absolute; z-index: 0; }
.circular_nav .nav .node .cnav { width:100px; height: 100px; background: #fff; border:2px solid transparent; position: absolute; right:0; text-align: center; box-shadow:0 0 10px #ccc; z-index: 1; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -ms-border-radius: 50%; -o-border-radius: 50%; }
.circular_nav .nav .node .cnav.active { border:2px solid #f67107; }
.circular_nav .nav .node .cnav .to { width:100%; height:100%; display: table; }
.circular_nav .nav .node .cnav .t { width: 100%; height: 100%; display: table-cell; vertical-align: middle; }

.circular_nav .nav .one { transform:translate(0, -50%) rotate(32.72deg); -webkit-transform:translate(0, -50%) rotate(32.72deg); -moz-transform:translate(0, -50%) rotate(32.72deg); -o-transform:translate(0, -50%) rotate(32.72deg); -ms-transform:translate(0, -50%) rotate(32.72deg); }
.circular_nav .nav .one > * { transform:rotate(-32.72deg); -webkit-transform:rotate(-32.72deg); -moz-transform:rotate(-32.72deg); -o-transform:rotate(-32.72deg); -ms-transform:rotate(-32.72deg); }
.circular_nav .nav .two { transform:translate(0, -50%) rotate(65.44deg); -webkit-transform:translate(0, -50%) rotate(65.44deg); -moz-transform:translate(0, -50%) rotate(65.44deg); -ms-transform:translate(0, -50%) rotate(65.44deg); -o-transform:translate(0, -50%) rotate(65.44deg); }
.circular_nav .nav .two > * { transform:rotate(-65.44deg); -webkit-transform:rotate(-65.44deg); -moz-transform:rotate(-65.44deg); -ms-transform:rotate(-65.44deg); -o-transform:rotate(-65.44deg); }
.circular_nav .nav .three { transform:translate(0, -50%) rotate(98.16deg); -webkit-transform:translate(0, -50%) rotate(98.16deg); -moz-transform:translate(0, -50%) rotate(98.16deg); -ms-transform:translate(0, -50%) rotate(98.16deg); -o-transform:translate(0, -50%) rotate(98.16deg); }
.circular_nav .nav .three > * { transform:rotate(-98.16deg); -webkit-transform:rotate(-98.16deg); -o-transform:rotate(-98.16deg); -ms-transform:rotate(-98.16deg); -moz-transform:rotate(-98.16deg); }
.circular_nav .nav .four { transform:translate(0, -50%) rotate(130.88deg); -webkit-transform:translate(0, -50%) rotate(130.88deg); -moz-transform:translate(0, -50%) rotate(130.88deg); -o-transform:translate(0, -50%) rotate(130.88deg); -ms-transform:translate(0, -50%) rotate(130.88deg); }
.circular_nav .nav .four > * { transform:rotate(-130.88deg); -webkit-transform:rotate(-130.88deg); -moz-transform:rotate(-130.88deg); -ms-transform:rotate(-130.88deg); -o-transform:rotate(-130.88deg); }
.circular_nav .nav .five { transform:translate(0, -50%) rotate(163.6deg); -webkit-transform:translate(0, -50%) rotate(163.6deg); -moz-transform:translate(0, -50%) rotate(163.6deg); -o-transform:translate(0, -50%) rotate(163.6deg); -ms-transform:translate(0, -50%) rotate(163.6deg); }
.circular_nav .nav .five > * { transform:rotate(-163.6deg); -webkit-transform:rotate(-163.6deg); -moz-transform:rotate(-163.6deg); -o-transform:rotate(-163.6deg); -ms-transform:rotate(-163.6deg); }
.circular_nav .nav .six { transform:translate(0, -50%) rotate(196.32deg); -webkit-transform:translate(0, -50%) rotate(196.32deg); -moz-transform:translate(0, -50%) rotate(196.32deg); -ms-transform:translate(0, -50%) rotate(196.32deg); -o-transform:translate(0, -50%) rotate(196.32deg); }
.circular_nav .nav .six > * { transform:rotate(-196.32deg); -webkit-transform:rotate(-196.32deg); -moz-transform:rotate(-196.32deg); -ms-transform:rotate(-196.32deg); -o-transform:rotate(-196.32deg); }
.circular_nav .nav .seven { transform:translate(0, -50%) rotate(229.04deg); -webkit-transform:translate(0, -50%) rotate(229.04deg); -moz-transform:translate(0, -50%) rotate(229.04deg); -o-transform:translate(0, -50%) rotate(229.04deg); -ms-transform:translate(0, -50%) rotate(229.04deg); }
.circular_nav .nav .seven > * { transform:rotate(-229.04deg); -webkit-transform:rotate(-229.04deg); -moz-transform:rotate(-229.04deg); -ms-transform:rotate(-229.04deg); -o-transform:rotate(-229.04deg); }
.circular_nav .nav .eight { transform:translate(0, -50%) rotate(261.76deg); -webkit-transform:translate(0, -50%) rotate(261.76deg); -moz-transform:translate(0, -50%) rotate(261.76deg); -ms-transform:translate(0, -50%) rotate(261.76deg); -o-transform:translate(0, -50%) rotate(261.76deg); }
.circular_nav .nav .eight > * { transform:rotate(-261.76deg); -webkit-transform:rotate(-261.76deg); -moz-transform:rotate(-261.76deg); -ms-transform:rotate(-261.76deg); -o-transform:rotate(-261.76deg); }
.circular_nav .nav .nine { transform:translate(0, -50%) rotate(294.48deg); -webkit-transform:translate(0, -50%) rotate(294.48deg); -moz-transform:translate(0, -50%) rotate(294.48deg); -ms-transform:translate(0, -50%) rotate(294.48deg); -o-transform:translate(0, -50%) rotate(294.48deg); }
.circular_nav .nav .nine > * { transform:rotate(-294.48deg); -webkit-transform:rotate(-294.48deg); -moz-transform:rotate(-294.48deg); -ms-transform:rotate(-294.48deg); -o-transform:rotate(-294.48deg); }
.circular_nav .nav .ten { transform:translate(0, -50%) rotate(327.2deg); -webkit-transform:translate(0, -50%) rotate(327.2deg); -moz-transform:translate(0, -50%) rotate(327.2deg); -o-transform:translate(0, -50%) rotate(327.2deg); -ms-transform:translate(0, -50%) rotate(327.2deg); }
.circular_nav .nav .ten > * { transform:rotate(-327.2deg); -webkit-transform:rotate(-327.2deg); -moz-transform:rotate(-327.2deg); -ms-transform:rotate(-327.2deg); -o-transform:rotate(-327.2deg); }
.circular_nav .nav .eleven { transform:translate(0, -50%) rotate(360deg); -webkit-transform:translate(0, -50%) rotate(360deg); -moz-transform:translate(0, -50%) rotate(360deg); -ms-transform:translate(0, -50%) rotate(360deg); -o-transform:translate(0, -50%) rotate(360deg); }
.circular_nav .nav .eleven > * { transform:rotate(-360deg); -webkit-transform:rotate(-360deg); -moz-transform:rotate(-360deg); -ms-transform:rotate(-360deg); -o-transform:rotate(-360deg); }

.cnav.active svg.svg path { fill:#f67107; }
.cnav.active svg.svg * { fill:#f67107; }
.cnav.active .name { color:#f67107 !important; }

.circular_nav .nav .cnav .svg { margin-bottom:5px; }
.circular_nav .nav .cnav .name { width:100%; float:left; font-size: 12px; font-weight: 700; color:#999999; line-height: 100%; position: relative; margin:0; text-transform: inherit !important; }
.circular_nav .nav .cnav a { display: block;height: 100%; width: 100%; }

.circular_nav .popover { min-width:170px; max-width: 190px !important; padding: 0px; }
.circular_nav .popover-title { display: none; }
.circular_nav .popover h2 { color:#f37121; text-align:left; font-weight: 400 !important; margin: 0 0 5px 0 !important; font-size: 16px !important; line-height: 120%; }
.circular_nav .popover ul { width:100%; max-width: 290px; margin: 0 0 0 0; list-style: none; }
.circular_nav .popover ul li { background: url(../img/cir_nav_bullet.png) no-repeat 0 8px; margin-bottom: 3px; font-size: 14px; line-height: 120%; padding-left: 15px; }

.circular_nav .one + .popover { top:58% !important; left: 94% !important; }
.circular_nav .two + .popover { top:74% !important; left: 77% !important; }
.circular_nav .three + .popover { top:79.5% !important; left: -5% !important; }
.circular_nav .four + .popover { top:67% !important; left: -25.5% !important; }
.circular_nav .five + .popover { top:48% !important; left: -38% !important; }
.circular_nav .six + .popover { top:26% !important; left: -38% !important; }
.circular_nav .seven + .popover { top:8.5% !important; left: -26% !important; }
.circular_nav .eight + .popover { top:-5% !important; left: -5% !important; }
.circular_nav .nine + .popover { top:1% !important; left: 77% !important; }
.circular_nav .ten + .popover { top:16% !important; left: 94.2% !important; }
.circular_nav .eleven + .popover { top:38% !important; left: 100% !important; }

.nac_content { display: none; width:100%; margin:20px 0; float:left; }
.nac_content .cont { display: none; width:100%; max-width: 300px; background: #fff; padding: 20px; margin:0 auto; box-shadow:0 0 10px #ccc; -webkit-box-shadow:0 0 10px #ccc; -moz-box-shadow:0 0 10px #ccc; -ms-box-shadow:0 0 10px #ccc; -o-box-shadow:0 0 10px #ccc; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.nac_content .cont h2 { color:#f37121; text-align:left; font-weight: 400 !important; margin: 0 0 5px 0 !important; font-size: 18px !important; line-height: 120%; }
.nac_content .cont ul { width:100%; max-width: 290px; margin: 0 0 0 0; list-style: none; text-align: left; }
.nac_content .cont ul li { background: url(../img/cir_nav_bullet.png) no-repeat 0 8px; margin-bottom: 3px; font-size: 14px; padding-left: 15px; }

.partners-page .part_img { width:100%; float:left; margin: 0; text-align: center; }
.partners-page .part_img li { display: inline-block; text-align: center; margin: 0 0 20px 0; }
.partners-page .part_img li .t { padding: 0 10px; text-align: center; }
.partners-page .part_img li .t a { width:100%; float:left; }
.partners-page .part_img li .t .b { width:100%; float:left; cursor: default; }

.xam_logo { width:100%; max-width: 200px !important; margin: 20px 0; display: inline-block; }
.xam_studio { width:100%; max-width: 600px !important; margin: 20px 0; display: inline-block; }

.awardnote { height:200px; text-align: center; background: url("../img/awards_bg.jpg"); background-repeat: no-repeat; background-position: 50% 100px; background-attachment: fixed; background-size: 100% !important; position: relative; }
.awardnote .desc p { font-size: 22px; color:#666 !important; font-style: normal; }
.aw_list { width:100%; float:left; }
.aw_list .box { width:100%; height: 530px; margin: 0 0 30px 0; float:left; border: 1px solid #d8d8d8; border-radius: 3px; padding:20px; position: relative; }
.aw_list .box .cl { width:100%; height: 140px; float:left; text-align: center; white-space: nowrap; }
.aw_list .box .cl .helper { display: inline-block; height: 100%; vertical-align: middle; }
.aw_list .box .cl img { vertical-align: middle; max-height: 120px; max-width: 100%; }
.aw_list .box .desc { width:100%; float:left; }
.aw_list .box .desc p { width:100%; float:left; font-size: 16px; text-align: center; line-height: 24px; }
.aw_list .box .info { position: absolute; bottom: 20px; right:20px; text-align: right; }
.aw_list .box .info h3 { text-transform: uppercase; color:#000; font-size: 14px; line-height: 130%; font-weight: 700; margin: 0; }
.aw_list .box .info .desg { font-size: 14px; margin:0; color:#9e9e9e; line-height: 130%; }
.aw_list .box .info .cname { font-style: italic; color:#f67107; font-size: 14px; line-height: 130%; margin:0; font-weight: 400; text-align: right; }
.aw_list .box .name { width:100%; float:left; margin:0 0 20px 0; text-align: center; font-size: 18px; font-weight: 400; text-transform: inherit; }
.aw_list .box .name .orange { width:100%; float:left; color:#f67107; }
.aw_list .box .name .gray { width:100%; float:left; color:#666666; }

.yourefforts { color:#fff; text-align: center; background: url("../img/home_about_bg2.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0; background-size: cover; position: relative; }
.yourefforts.backgrounded { padding-bottom: 0 !important; }
.yourefforts .dtitle { width:100%; float:left; color:#fff; }
.yourefforts .subtext { width:100%; float:left; color:#fff; margin:0 0 10px 0; }
.yourefforts .effortareas { width:100%; float:left; margin:30px 0; }
.yourefforts .effortareas .box { width:100%; float:left; padding: 0 30px; }
.yourefforts .effortareas .img { width:100%; float:left; display: table; height: 70px; margin: 0 0 30px 0; }
.yourefforts .effortareas .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.yourefforts .effortareas .title { width:100%; float:left; color:#fff; font-size: 18px; font-weight: 700; margin: 0 0 10px 0; }
.yourefforts .effortareas .desc { width:100%; float:left; color:#fff; margin: 0 0 20px 0; }
.yourefforts .effortareas .more { color:#f67107; }
.yourefforts .effortareas .more:hover { text-decoration: underline; }

.yourefforts .platforms { width:100%; background:rgba(0,0,0,0.3); padding:30px 0; }
.yourefforts .platforms .clients { width:100%; float:left; text-align: center; }
.yourefforts .platforms .clients .col { width:18.5%; display: inline-block; text-align: center; margin:20px 0 0 0; }
.yourefforts .platforms .clients .col .img { width:100%; float:left; display: table; height: 50px; text-align: center; }
.yourefforts .platforms .clients .col .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.yourefforts .platforms .clients .col .img .t img { max-width: 170px; }

.post-single .post-entry { text-align: center !important; }

.person { width:100%; float:left; }
.person h3 { width:100%; float:left; font-size: 20px; margin: 0 0 10px 0; }
.person .row { width:100%; float:left; }
.person .box { width:100%; float:left; margin-bottom:20px; }
.person .box .img { width:40%; float:left; padding: 0 10px 0 0; }
.person .box .desc { width:60%; float:left; }
.person .box .desc h3 { width:100%; float:left; font-size:18px; margin: 0 0 5px 0; text-align: left; }
.person .box .desc p { width:100%; float:left; font-size:14px; color:#666; text-align: left; }

.strat_mobi_pg { background: #fff;
background: -moz-linear-gradient(top, #fff 0%, #fafafa 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, #fff), color-stop(100%, #fafafa));
background: -webkit-linear-gradient(top, #fff 0%, #fafafa 100%);
background: -o-linear-gradient(top, #fff 0%, #fafafa 100%);
background: -ms-linear-gradient(top, #fff 0%, #fafafa 100%);
background: linear-gradient(to bottom, #fff 0%, #fafafa 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#fafafa', GradientType=0 ); }

.whitepaper { width:100%; float:left; }
.whitepaper .img { max-width: 260px; width:100%; display: inline-block; border:1px solid #ebebeb; background: #faf9f9; padding: 10px; }
.whitepaper .img img { width:100%; float:left; }
.whitepaper .desc { width:100%; float:left; }
.whitepaper .dtitle { text-align: left !important; font-size: 28px !important; margin: 0 0 10px 0; }
#whitepaper_1 { width:100%; max-width:490px; height: 275px; }

.btn.orange { color:#fff !important; background: #F67107; font-size: 16px; padding: 15px 20px; }
.btn.orange:hover { opacity: 0.8; background: #F67107; text-decoration: none; }

/*.fancybox-bg { background: none #fff !important; }*/
#fancybox-title { left: 0 !important; display: block; top: -50px !important; border-bottom: 1px solid #e5e5e5; height: 60px; border-radius: 6px 6px 0 0; width:100%; 
background: #fff;
background: -moz-linear-gradient(top, #fff 0%, #f0f0f0 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, #fff), color-stop(100%, #f0f0f0));
background: -webkit-linear-gradient(top, #fff 0%, #f0f0f0 100%);
background: -o-linear-gradient(top, #fff 0%, #f0f0f0 100%);
background: -ms-linear-gradient(top, #fff 0%, #f0f0f0 100%);
background: linear-gradient(to bottom, #fff 0%, #f0f0f0 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f0f0f0', GradientType=0 );
}
#fancybox-title-float-left { display:none; background: none; }
#fancybox-title-float-right { display:none; background: none; }
#fancybox-title-float-main { width: 95% !important; background: none !important; color:#666666 !important; font-weight: normal !important; padding: 15px 20px !important; font-size: 18px; }
/*#fancybox-close { top:-15px !important; right:-15px !important; display: none !important; }*/

.mobijourney { text-align: center; position: relative; }
.mobijourney .bx-wrapper { max-width: 930px !important; margin: 20px auto !important; width:94%; display: inline-block; }
.mobijourney .bx-wrapper .bx-viewport { margin: 0 0 20px 0; }
.mobijourney .bx-wrapper .bx-controls-direction a { width:41px; height: 41px; background: url(../img/bxcontrols-gray.png) no-repeat; }
.mobijourney .bx-wrapper .bx-prev { left: -40px; background-position: 1px 0 !important; }
.mobijourney .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.mobijourney .bx-wrapper .bx-next { right: -40px; background-position: -38px 0 !important; }
.mobijourney .bx-wrapper .bx-next:hover { background-position: -133px 0 !important; }
.mobijourney .slide .box { width:100%; float:left; padding: 0 20px; }
.mobijourney .slide .box h2 { font-size: 22px; font-weight: 400; line-height: 120%; margin: 0 0 10px 0; }
.mobijourney .slide .box p { font-size: 16px; line-height: 26px; color:#666; }
.mobijourney .slide .box .img { width:100%; height: 90px; display: table; margin: 0 0 10px 0; }
.mobijourney .slide .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.mobijourney .slide .box .img img { max-width: 160px; max-height: 90px; }
.mobijourney .bx-wrapper .bx-pager.bx-default-pager a { background: #dadada; }

.helpindus { text-align: center; position: relative; }
.helpindus .bx-wrapper { max-width: 930px !important; margin: 20px auto !important; width:94%; display: inline-block; }
.helpindus .bx-wrapper .bx-viewport { margin: 0 0 20px 0; }
.helpindus .bx-wrapper .bx-controls-direction a { width:41px; height: 41px; background: url(../img/bxcontrols-gray.png) no-repeat; }
.helpindus .bx-wrapper .bx-prev { left: -40px; background-position: 1px 0 !important; }
.helpindus .bx-wrapper .bx-prev:hover { background-position: -86px 0 !important; }
.helpindus .bx-wrapper .bx-next { right: -40px; background-position: -38px 0 !important; }
.helpindus .bx-wrapper .bx-next:hover { background-position: -133px 0 !important; }
.helpindus .slide .box { width:100%; float:left; padding: 0 20px; }
.helpindus .slide .box h2 { font-size: 22px; font-weight: 400; line-height: 120%; margin: 0 0 10px 0; }
.helpindus .slide .box p { font-size: 16px; line-height: 26px; color:#666; }
.helpindus .slide .box .img { width:100%; height: 90px; display: table; margin: 0 0 10px 0; }
.helpindus .slide .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.helpindus .slide .box .img img { max-width: 160px; max-height: 90px; }
.helpindus .bx-wrapper .bx-pager.bx-default-pager a { background: #dadada; }

.pg_landscape { background:#f6f6f6; }
.pg_landscape .btns { text-align: center; }
.pg_landscape .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_landscape .btn:hover { background: #f67107; color:#fff; }

.mob_landscape { width:100%; float:left; }
.mob_landscape .box { width:100%; display: inline-block; vertical-align: top; padding:35px 10px; margin: 0 0 20px 0; background: #fff; text-align: center; }
.mob_landscape .box.first { margin-left: 0; }
.mob_landscape .box.last { margin-right: 0; }
.mob_landscape .box .img { width:100%; display: table; text-align: center; margin:0 0 20px 0; }
.mob_landscape .box .img .t { display: table-cell; vertical-align: middle; }
.mob_landscape .box .svg { width:100%; max-width:1000px; padding: 0; height: 60px; }
.mob_landscape .box .svg.graph { width:90%; max-width: 1000px; float:right; padding: 0; height: auto; }

.pg_conun { text-align: left; background: url("../img/bg_conun.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.pg_conun .btns { text-align: center; }
.pg_conun .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_conun .btn:hover { background: #f67107; color:#fff; }

.pg_complexauto .btns { text-align: center; }
.pg_complexauto .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_complexauto .btn:hover { background: #f67107; color:#fff; }

.sml_text { font-size: 14px; color:#d1d1d1; padding: 5px 0 0 0; }
.sml_text.btnforrester { margin-right: 30px; }

.pg_qas { background: #f6f6f6; }
.pg_qas .btns { text-align: center; }
.pg_qas .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_qas .btn:hover { background: #f67107; color:#fff; }

.graph_pair { width:100%; float:left; }
.graph_pair .arrow_img { width:100%; height:100%; display: table; margin:0; }
.graph_pair .arrow_img .t { width:100%; height: 100%; vertical-align: middle; display: table-cell; }
.closertocode { width:100%; float:left; }
.closertocode .svg { width:100%; height: auto; }

.leaderteam { width:100%; max-width: 1000px; display: inline-block; }
.leaderteam .box { width:100%; display: inline-block; overflow: hidden; position: relative; margin: 0 0 30px 0; }
.leaderteam .box a { width:100%; float: left; }
.leaderteam .box .img { width:100%; float:left; }
.leaderteam .box .img img { width:100%; }
.leaderteam .box .details { width:100%; float:left; z-index: 1; position: absolute; bottom:0; padding: 10px; background: rgba(255,255,255,0); background: -moz-linear-gradient(top, rgba(0,0,0,0.2) 0%, rgba(0,0,0,1) 60%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(255,255,255,0.2)), color-stop(60%, rgba(0,0,0,1))); background: -webkit-linear-gradient(top, rgba(0,0,0,0.2) 0%, rgba(0,0,0,1) 60%); background: -o-linear-gradient(top, rgba(0,0,0,0.2) 0%, rgba(0,0,0,1) 60%); background: -ms-linear-gradient(top, rgba(0,0,0,0.2) 0%, rgba(0,0,0,1) 60%); background: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%, rgba(0,0,0,1) 60%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#000000', endColorstr='#000000', GradientType=0 ); }
.leaderteam .box .name { width:100%; text-align: left; float:left; color:#fff; margin: 0; font-size: 14px; font-weight: bold; }
.leaderteam .box .designation { width:100%; float:left; text-align: left; color:#fff; font-size: 12px; margin:0; overflow: hidden; }
.leaderteam .box a .overlay { width:100%; height: 100%; opacity: 0; content:''; background:rgba(0,0,0,0.6); position: absolute; top:0; left: 0; z-index: 102; transition:all 0.4s ease; -webkit-transition:all 0.4s ease; -moz-transition:all 0.4s ease; -ms-transition:all 0.4s ease; -o-transition:all 0.4s ease; }
.leaderteam .box a .overlay:hover { opacity: 1; }
.leaderteam .box a .overlay:before { content:"\f002"; height: 50px; width: 50px; line-height: 50px; font-size: 30px !important; top:50%; left: 50%; position: absolute; z-index: 101; color:#fff; border-radius: 50%; transition:all 0.4s ease; -webkit-transition:all 0.4s ease; -moz-transition:all 0.4s ease; -ms-transition:all 0.4s ease; -o-transition:all 0.4s ease; transform:translate(-50%, -50%); -webkit-transform:translate(-50%, -50%); -moz-transform:translate(-50%, -50%); -ms-transform:translate(-50%, -50%); -o-transform:translate(-50%, -50%); font: normal normal normal 14px/1 FontAwesome; font-size: inherit; text-rendering: auto; font-smoothing: antialiased; -webkit-font-smoothing: antialiased; -moz-font-smoothing: antialiased; -ms-font-smoothing: antialiased; -o-font-smoothing: antialiased; }


.pg_globalinfra { color:#fff; text-align: center; background: url("../img/globalinfra_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 90px; background-size: cover; position: relative; }
.pg_globalinfra .dtitle { color:#fff; }
.pg_globalinfra .threepoints { width:100%; float:left; margin:30px 0; }
.pg_globalinfra .threepoints .box { width:100%; float:left; padding:20px 10px; background: rgba(0,0,0,0.3); color:#fff; font-size: 22px; border-radius:5px; -webkit-border-radius:5px; -moz-border-radius:5px; -ms-border-radius:5px; -o-border-radius:5px; }

.pg_globalinfra .fivepoints { width:100%; float:left; text-align: center; margin:30px 0 0 0; }
.pg_globalinfra .fivepoints .box { width:19.7%; min-width: 150px; vertical-align: top; margin: 0 0 30px 0; display: inline-block; text-align: center; }
.pg_globalinfra .fivepoints .box .img { max-width:150px; height: 150px; width:100%; margin: 0 0 10px 0; display:inline-block; padding:10px; background: rgba(0,0,0,0.3); color:#fff; border-radius:50%; -webkit-border-radius:50%; -moz-border-radius:50%; -ms-border-radius:50%; -o-border-radius:50%; } 
.pg_globalinfra .fivepoints .box .img .tt { width:100%; height: 100%; display:table; vertical-align: middle; }
.pg_globalinfra .fivepoints .box .img .tt .t { width:100%; height: 100%; display:table-cell; vertical-align: middle; }
.pg_globalinfra .fivepoints .box .desc { width:97%; float:left; text-align: center; color:#fff; }

.pg_form { text-align: left; background: url("../img/form_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.pg_form .title { margin: 0 0 20px 0; }
.pg_form .img {padding: 0 20px 0 0; text-align: center; }
.pg_form p a { color:#f67107; text-decoration: underline; }
.pg_form p a:hover { text-decoration: none; }

.pg_celebration .btns { width:100%; float:left; text-align: center; margin: 0; }
.pg_celebration .btns .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 0 10px 0; padding:15px 20px; }
.pg_celebration .btns .btn:hover { background: #f67107; color:#fff; }

.celebration { width:100%; float:left; }
.celebration .box {  width:100%; position: relative; float:left; background: #eee; margin: 0 0 10px 0; }
.celebration .box:after { padding-top: 100%; display: block; content: ""; }
.celebration .box.type2:after { padding-top: 66.2%; display: block; content: ""; }
.celebration .box.type3:after { padding-top: 48.7%; display: block; content: ""; }
.celebration .box .img {  width:100%; height: 100%; float:left; position: absolute; z-index: 1; }
.celebration .col-md-3, .celebration .col-sm-6, .celebration .col-xs-12 { padding:0 5px; }

.pg_personalmobility { text-align: left; background: url("../img/personalmobility_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.pg_personalmobility .dtitle { color:#fff; }
.personalmobility .box { width:100%; float:left; }
.personalmobility .box .img { width:100%; height: 130px; display: table; text-align: center; }
.personalmobility .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle;  }
.personalmobility .title { width:100%; float: left; color:#fff; text-align: center; font-size: 18px; font-weight: bold; }
.personalmobility .desc { width:100%; float: left; color:#bbb; text-align: center; }
.pg_personalmobility .btns { width:100%; text-align: center; margin: 0; }
.pg_personalmobility .btns .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 0 10px 0; padding:15px 20px; }
.pg_personalmobility .btns .btn:hover { background: #f67107; color:#fff; }


.pg_connect .btns { width:100%; text-align: center; margin: 0; }
.pg_connect .btns .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 0 10px 0; padding:15px 20px; }
.pg_connect .btns .btn:hover { background: #f67107; color:#fff; }
.pg_connect .socialicons { width:100%; float:left; list-style: none; text-align: center; padding: 0; margin: 0 0 30px 0; }
.pg_connect .socialicons li { margin: 0 15px; display: inline-block; }
.pg_connect .socialicons li a { width:80px; height: 80px; text-align: center; display: block; border:1px solid #e8e8e8; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; -o-border-radius: 50%; -ms-border-radius: 50%; }
.pg_connect .socialicons li a:hover { border:1px solid #ff7302; }
.pg_connect .socialicons li.fb a { background:#fff url(../img/ic_fb2.png) no-repeat 50% 50%; }
.pg_connect .socialicons li.in a { background:#fff url(../img/ic_in2.png) no-repeat 50% 50%; }
.pg_connect .socialicons li.tw a { background:#fff url(../img/ic_tw2.png) no-repeat 50% 50%; }
.pg_connect .socialicons li.gp a { background:#fff url(../img/ic_gp2.png) no-repeat 50% 50%; }
.pg_connect .socialicons li.yt a { background:#fff url(../img/ic_yt2.png) no-repeat 50% 50%; }

.ourpeers { width:100%; float:left; margin: 30px 0 0 0; }
.ourpeers .box { width:100%; height: 530px; margin: 0 0 30px 0; float:left; border: 1px solid #d8d8d8; border-radius: 3px; padding:20px; position: relative; }
.ourpeers .box .cl { width:100%; height: 140px; float:left; text-align: center; white-space: nowrap; }
.ourpeers .box .cl .helper { display: inline-block; height: 100%; vertical-align: middle; }
.ourpeers .box .cl img { vertical-align: middle; max-height: 120px; max-width: 100%; }
.ourpeers .box .desc { width:100%; float:left; }
.ourpeers .box .desc p { width:100%; float:left; font-size: 16px; text-align: center; line-height: 24px; }
.ourpeers .box .info { position: absolute; bottom: 20px; right:20px; text-align: right; }
.ourpeers .box .info h3 { text-transform: uppercase; color:#000; font-size: 14px; line-height: 130%; font-weight: 700; margin: 0; }
.ourpeers .box .info .desg { font-size: 14px; margin:0; color:#9e9e9e; line-height: 130%; }
.ourpeers .box .info .cname { font-style: italic; color:#f67107; font-size: 14px; line-height: 130%; margin:0; font-weight: 400; text-align: right; }
.ourpeers .box .name { width:100%; float:left; margin:0 0 20px 0; text-align: center; font-size: 18px; font-weight: 400; text-transform: inherit; }
.ourpeers .box .name .orange { width:100%; float:left; color:#f67107; }
.ourpeers .box .name .gray { width:100%; float:left; color:#666666; }
.pg_ourpeers .btns { width:100%; text-align: center; margin: 0; }
.pg_ourpeers .btns .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 10px 10px 0; padding:15px 20px; }
.pg_ourpeers .btns .btn:hover { background: #f67107; color:#fff; }

@-webkit-keyframes radiate{
	0%{ -webkit-transform:scale(0.8); opacity:0; }
	50%{ opacity:1; }
	100%{ -webkit-transform:scale(1);opacity:0; }
}
@keyframes radiate{
	0%{ -webkit-transform:scale(0.8); -ms-transform:scale(0.8); transform:scale(0.8); opacity:0; }
	50%{ opacity:1; }
	100%{ -webkit-transform:scale(1); -ms-transform:scale(1); transform:scale(1); opacity:0 }
}
@-webkit-keyframes grow {
    0% { -webkit-transform: scale(0.7); opacity: 0; }
    50% { opacity: 0.8 }
    100% { -webkit-transform: scale(1.2); opacity: 0; }
}
@keyframes grow {
    0% { -webkit-transform: scale(0.7); -ms-transform: scale(0.7); transform: scale(0.7); opacity: 0; }
    50% { opacity: 0.8; }
    100% { -webkit-transform: scale(1.2); -ms-transform: scale(1.2);transform: scale(1.2); opacity: 0; }
}

.pg_mapbox { text-align: left; background: url("../img/map_bg.jpg"); overflow: hidden; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.pg_mapbox .dtitle { color:#fff; position: relative; z-index: 0; }
.pg_mapbox .mapbox  { width:100%; float:left; position: relative; margin: -100px 0 0 0; }
.pg_mapbox .mapbox .loc_map { width:100%; float:left; }
.pg_mapbox .mapbox .loc_map img { margin:-102px 0 0 0; }
.pg_mapbox .mapbox { width:100%; float:left; margin:-100px 0 -250px 0; position: relative; z-index: 1; }
.pg_mapbox .mapbox .img { width:100%; float:left; position: relative; z-index: 1; }
.pg_mapbox .mapbox .loc { position: absolute; display: block;width: 14px; height: 14px; border-radius: 8px;background-color: #ffffff; cursor: pointer; -webkit-transition-property: all; transition-property: all; -webkit-transition-duration: 0.85s; transition-duration: 0.85s; -webkit-transition-timing-function: cubic-bezier(0.11, 0.67, 0.2, 1); transition-timing-function: cubic-bezier(0.11, 0.67, 0.2, 1); -webkit-transition-delay: 100ms; transition-delay: 100ms;b;border: 3px solid #5c676f;ox-shadow: 0 0 0 1px #fff;-webkit-box-shadow: 0 0 0 1px #fff;-moz-box-shadow: 0 0 0 2px #fff;-ms-box-shadow: 0 0 0 2px #fff;-o-box-shadow: 0 0 0 2px #fff; border-radius: 50%; position: absolute; z-index: 100;}
.pg_mapbox .mapbox .loc.active { background-color: #fff }
.pg_mapbox .mapbox .loc:hover:before, .pg_mapbox .mapbox .loc.active:before,
.pg_mapbox .mapbox .loc:hover:after, .pg_mapbox .mapbox .loc.active:after { content: '' }
.pg_mapbox .mapbox .loc:hover:before, .pg_mapbox .mapbox .loc.active:before { pointer-events: none; position: absolute; top: 50%; left: 50%; margin-top: -32px; margin-left: -32px; display: block; width: 64px; height: 64px; border-radius: 32px; border: 1px solid #fff; background-color: transparent; -webkit-animation-name: grow; animation-name: grow; -webkit-animation-duration: 1.8s; animation-duration: 1.8s; -webkit-animation-timing-function: linear; animation-timing-function: linear; -webkit-animation-iteration-count: infinite; animation-iteration-count: infinite; }
.pg_mapbox .mapbox .loc:hover:after, .pg_mapbox .mapbox .loc.active:after { pointer-events: none; position: absolute; top: 50%; left: 50%; margin-top: -22px; margin-left: -22px; display: block; width: 44px; height: 44px; border-radius: 22px; border: 1px solid #fff; -webkit-animation-name: radiate; animation-name: radiate; -webkit-animation-duration: 0.7s; animation-duration: 0.7s; -webkit-animation-timing-function: ease; animation-timing-function: ease; -webkit-animation-iteration-count: infinite; animation-iteration-count: infinite; }
.pg_mapbox .mapbox .loc.loc1 { top: 32%; left: 13.7%; }
.pg_mapbox .mapbox .loc.loc2 { top: 32%; left: 24.7%; }
.pg_mapbox .mapbox .loc.loc3 { top: 29.5%; left: 25.1%; }
.pg_mapbox .mapbox .loc.loc4 { top: 19%; left: 46.3%; }
.pg_mapbox .mapbox .loc.loc5 { top: 41.4%; left: 66.4%; }
.pg_mapbox .mapbox .loc.loc6 { top: 44.4%; left: 67.6%; }
.pg_mapbox .btns { width:100%; text-align: center; margin: 0; position: relative; z-index: 100; display: inline-block; }
.pg_mapbox .btns .btn { min-width: 200px; background: transparent; font-size: 18px; border:1px solid #f67107; color:#f67107; margin: 0 0 10px 0; padding:15px 20px; }
.pg_mapbox .btns .btn:hover { background: #f67107; color:#fff; }

.loc_map_details { display: none; width:100%; max-width:780px; position: absolute; bottom:20px; left: 20px; }
.loc_map_details .infobox { display: none; width:100%; background: #fff; float:left; border-radius:5px; -webkit-border-radius:5px; -moz-border-radius:5px; -ms-border-radius:5px; -o-border-radius:5px; }
.loc_map_details .infobox.active { display: block; }
.loc_map_details .infobox .row { width:100%; float:left; padding:20px; margin: 0; }
.loc_map_details .infobox .img { width:100%; float:left; }
.loc_map_details .infobox .img img { width:100%; float:left; }
.loc_map_details .infobox .detail { width:100%; float:left; }
.loc_map_details .infobox .detail .title { width:100%; float:left; color:#ef7024; font-size: 22px; font-weight: 400; margin: 0 0 5px 0; }
.loc_map_details .infobox .detail .role { width:100%; float:left; margin: 0 0 5px 0; font-weight: 400; color:#000; }
.loc_map_details .infobox .detail .desc { width:100%; float:left; font-size: 16px; }
.loc_map_details .infobox .redirect { width:100%; float:left; padding:10px 20px; background: #f5f5f5; border-radius: 0 0 5px 5px; -webkit-border-radius: 0 0 5px 5px; -moz-border-radius: 0 0 5px 5px; -ms-border-radius: 0 0 5px 5px; -o-border-radius: 0 0 5px 5px; }
.loc_map_details .infobox .redirect a { margin: 0 0 0 20px; }
.loc_map_details .infobox .redirect a i { font-size: 40px; color:#adadad; }
.loc_map_details .infobox .redirect a:hover i { color:#f67107; }

.s_locations { display: none; }

.pg_historytimeline { background: #f6f6f6; }
.pg_historytimeline .container { overflow:hidden; }

/*#fancybox-content { height: auto !important; }*/

.info_popup { width:100%; text-align: center;  }
.info_popup .img { width:200px; height: 200px; display: inline-block; margin:0 auto 10px auto; border-radius: 50%; overflow: hidden; border:5px solid #f0f0f0; background-position: 50% 20% !important; background-size: cover !important; }
.info_popup .details { width:100%; display: inline-block; }
.info_popup .details .name { width:100%; float:left; font-size: 22px; line-height: 22px; }
.info_popup .details .desc { font-size: 14px; }

.pg_mapbox .popover { min-width:120px; text-align: center; background:#ff7302; border:0; color:#fff; }
.pg_mapbox .popover>.arrow:after { border-top-color: #ff7302; box-shadow:0 0 0; }
.pg_mapbox .popover-title { display: none; }

#about{position:relative; margin: 30px 0 0 0;}
#about .hr{border:0;margin:0;position:absolute;height:12px;width:100%;margin-top:-1px;background-position:top center;background-repeat:no-repeat;z-index:3}
#about .hr #da4{background-image:url("http://rodania.com/images/layout/da4.gif")}
#about .hr #da5{background-image:url("http://rodania.com/images/layout/da5.gif")}
#about #slider{background:#f6f6f6;position:relative;height:100px}
#about #slider .container{overflow:hidden}
#about #slider ul{position:absolute; top:0; padding-left:390px; width:3000px;z-index:100}
#about #slider ul li{list-style:none;display:inline}
#about #slider ul li a{text-decoration:none;color:#646464;display:block;float:left;margin:0px 40px;margin-bottom:-4px;text-align:center;font-size:24px;padding-bottom:20px; width: 300px; max-width: 510px; }
#about #slider ul li a:hover{color:#bfbfbf}
#about #slider ul li a.a{color:#fff;/*margin-top:-24px;*/font-size:48px}
#about #slider ul li a .year { display: inline-block; margin: 0 0 10px 0px; color:#999; border-bottom: 4px solid transparent;line-height: 44px;font-size: 36px; }
#about #slider ul li a .tag { width:100%; opacity: 0; display:inline-block; font-size: 20px; }
#about #slider ul li a.a .year { border-bottom: 4px solid #ef7024; color:#000; background: #f6f6f6; position: relative; z-index: 1; padding: 0 20px; }
#about #slider ul li a.a .tag { opacity: 1; }

#about #slider:after { width:100%; height: 2px; border-bottom:1px dashed #b7b6b6; content: ""; position: absolute; top:25px; left: 0; }

#about #slider i{position:absolute;z-index:100;top:0;bottom:0;width:324px;height:100%}
#about #slider i#r{background-image:url("../img/about-overlay-r.png");right:0}
#about #slider i#l{background-image:url("../img/about-overlay-l.png");left:0}
#about #sliderDetail{height:360px;position:relative;}
#about #sliderDetail.container{width:785px;margin:0 auto;overflow:hidden;height:280px}
#about #sliderDetail .container .mNav{position:absolute;float:right;z-index:9;top:40%; display:block;width:40px;height:40px;background-position:center left; background: url('../img/slider_nav_arrows.png') no-repeat -10em 0; transition:0s all ease; }
#about #sliderDetail .container .mNav:hover{background-position:bottom left}
#about #sliderDetail .container .d{background-position:-10em 1px !important;}
#about #sliderDetail .container .d:hover{cursor:default;background-position:top left}
#about #sliderDetail .container #mLeft{left:2px; background-position: -1px 0;}
#about #sliderDetail .container #mLeft:hover{left:2px; background-position: -1px -51px;}
#about #sliderDetail .container #mRight{right:2px; background-position:-52px 0px; }
#about #sliderDetail .container #mRight:hover{right:2px; background-position:-52px -51px; }

#about #sliderDetail .container #detailHolder{position:absolute;width:90000px;left:0px;top:0}
#about #sliderDetail .container #detailHolder .detail{width:100%; text-align: center; padding: 30px 0; left: 210px; max-width:785px;height:280px;position:relative;display:inline-block;opacity:0; background: #fff; margin: 50px 0 0 0; box-shadow: 0 0 10px 0 #ccc; }
#about #sliderDetail .container #detailHolder .detail .thumb{width:371px;height:228px;background-image:url("http://rodania.com/images/layout/ad-bg.png");position:absolute;left:0;bottom:0}
#about #sliderDetail .container #detailHolder .detail .thumb img{position:absolute;top:8px;left:115px}
#about #sliderDetail .container #detailHolder .detail h1{font-family:Arial,Helvetica,sans-serif;font-weight:normal;font-size:40px;text-transform:uppercase;color:#3e3f3f;position:absolute;top:55px;left:290px}
#about #sliderDetail .container #detailHolder .detail .detailBody{position:absolute;width:400px;top:100px;left:296px;font-family:Arial,Helvetica,sans-serif;font-size:11px;color:#5c5c5c;line-height:20px;text-align:left}
#about #sliderDetail .container #detailHolder .detail .detailBody p{margin-bottom:10px}
#about #sliderDetail .container #detailHolder #d1{opacity:1}
#about #divider{height:60px;border-bottom:1px dotted #c7c7c7}
#about #aboutContent{width:690px;margin:0 auto;border-left:1px dotted #c7c7c7;border-right:1px dotted #c7c7c7}
#about #aboutContent .container{padding:40px;width:auto;text-align:left;color:#828282;font-family:Arial,Helvetica,sans-serif;font-size:11px;line-height:20px}
#about #aboutContent .container h5{font-family:Arial,Helvetica,sans-serif;font-size:11px;text-transform:uppercase;color:#000;font-weight:normal;margin-bottom:20px}
.hr{border:0;margin:0;position:absolute;height:12px;width:100%;margin-top:-1px;background-position:top center;background-repeat:no-repeat;z-index:3}
.hr#da1{background-image:url("http://rodania.com/images/layout/da1.gif")}
.hr#da2{background-image:url("http://rodania.com/images/layout/da2.gif")}
.hr#da3{height:19px;background-image:url("http://rodania.com/images/layout/da3.gif")}
.hr#da6{background-image:url("http://rodania.com/images/layout/da6.gif")}
.hr#da5{background-image:url("http://rodania.com/images/layout/da5.gif")}
#about #sliderDetail .container #detailHolder .detail .listt { width:100%; max-width:222px; margin:20px auto 0 auto; float: none; text-align: left; display: inline-block; }
#about #sliderDetail .container #detailHolder .detail .listt li { width: 100%; float:left; margin: 0 0 5px 0; list-style: none; background: url(../img/nice_bullet.png) no-repeat 0 5px; text-indent: 0; padding: 0 0 0 20px; }
#about #sliderDetail .container #detailHolder .detail .line { border-right:1px solid #ebeaea; }
#about #sliderDetail .container #detailHolder .detail .name { font-size: 16px; font-weight: bold; color:#000; }

/*.fancybox-bg { display: none !important; }*/

.city_names { width:90%; float:left; position: absolute; top:90px; left: 5%; }
.city_names ul { width:100%; float:left; list-style: none; margin: 0; padding: 0; }
.city_names ul li { width:100%; float:left; list-style: none; margin: 0 0 5px 0; padding: 15px 10px; background:rgba(255,255,255,0.2); color:#fff; }
 
.pg_career .personalmobility .title { color:#000; }
.pg_career .personalmobility .desc { color:#666; }

.pg_career_benefits { text-align: left; background: url("../img/benefits_bg.jpg"); overflow: hidden; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.pg_career_benefits .benefits { width:100%; float:left; }
.pg_career_benefits .benefits .box { width:100%; float:left; margin: 0 0 20px 0; }
.pg_career_benefits .benefits .box .img { width:100%; float:left; display: table; height: 70px; margin: 0 0 20px 0; text-align: center; }
.pg_career_benefits .benefits .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.pg_career_benefits .benefits .box .desc { width:100%; float: left; text-align: center; }

.joinus-tabs .nav-tabs { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
.joinus-tabs .nav-tabs li{border: 1px solid #d7d7d7;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell; }
.joinus-tabs .nav-tabs li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
.joinus-tabs .nav-tabs li a:hover, .joinus-tabs .nav-tabs li a:focus, .joinus-tabs .nav-tabs li a:active{transition:none;box-shadow: none !important;background-color: transparent;}
.joinus-tabs .nav-tabs li  a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
.joinus-tabs .nav-tabs li  a i{color: #9da1a5; font-size: 16px; }
.joinus-tabs .nav-tabs li.active {background-color: #fafafa;}
.joinus-tabs .nav-tabs li.active  a span{color:#f67107;}
.joinus-tabs .nav-tabs li.active  a i{color:#f67107;}
.joinus-tabs .nav-tabs li a:hover span {color: #f67107;}
.joinus-tabs .nav-tabs li a:hover i {color: #f67107;}
.joinus-tabs .nav-tabs li.first{border-radius: 5px 0 0 5px;border-left: 1px solid #d7d7d7;}
.joinus-tabs .nav-tabs li.last{border-radius: 0 5px 5px 0;}
.joinus-tabs .tab-content { width:100%; background: none;text-align: center;margin: 0 auto; padding: 30px 0 0 0;box-shadow: none; }
.joinus-tabs .tab-content p{width: 100%;margin: 0 auto;margin-bottom: 15px;}

.joinus-tabs .panel-group { width:100%; float:left; }

.joinus-tabs .bylocation { max-width: 1160px; margin: 0 auto; }
.joinus-tabs .bylocation .box { width:100%; float:left; background: #fbfbfb; border:1px solid #e2e2e2; margin:0 0 30px 0; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px; }
.joinus-tabs .bylocation .box .img { width: 100%; height: 150px; float:left; }
.joinus-tabs .bylocation .box .img.abad { background: url(../img/lo_ahmedabad.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.pune { background: url(../img/lo_pune.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.london { background: url(../img/lo_england.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.sc { background: url(../img/lo_santaclara.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.nyc { background: url(../img/lo_newyork.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.sf { background: url(../img/lo_sanfrancisco.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.pa { background: url(../img/lo_pennsylvania.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.sl { background: url(../img/lo_southlake.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .img.stf { background: url(../img/lo_stamford.png)no-repeat 50% 50%; }
.joinus-tabs .bylocation .box .title { width:100%; float:left; font-weight: bold; font-size: 18px; color:#000; margin: 0 0 5px 0; }
.joinus-tabs .bylocation .box .openings { display: inline-block; background: none; border:1px solid #f67107; color:#f67107; font-size: 14px; text-align: center; padding: 5px 15px; font-weight: bold; margin: 0 0 15px 0; border-radius: 15px; -webkit-border-radius: 15px; -moz-border-radius: 15px; -ms-border-radius: 15px; -o-border-radius: 15px; }
.joinus-tabs .bylocation .box:hover { background: #fff; box-shadow: 0 0 15px 3px #eee; }
.joinus-tabs .bylocation .box:hover .openings { background: #f67107; color:#fff; }

.joinus-tabs .bycategory { width:100%; }
.joinus-tabs .bycategory .panel { width:100%; float:left; margin: 0 0 10px 0; }
.joinus-tabs .bycategory .panel-heading { width:100%; float:left; background:#fff; border:1px solid #e2e2e2; border-radius:5px 5px 0 0; padding:5px 10px; }
.joinus-tabs .bycategory .panel-heading .panel-title { width:100%; float:left; margin: 0; padding: 10px; }
.joinus-tabs .bycategory .panel-heading .panel-title a { width:100%; float:left; margin: 0; color:#fff; font-size: 20px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic { float: left; width:40px; height: 40px; margin-right: 5px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic svg { width:40px; height: 40px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .name { float: left;text-align: left; }
.joinus-tabs .bycategory .panel-heading .panel-title a .title { width:100%; float: left; font-size: 16px; line-height: 140%; font-weight: bold; color:#000; }
.joinus-tabs .bycategory .panel-heading .panel-title a .pos { width:100%; float: left; font-size: 14px; color:#f67107; line-height: 120%; }
.joinus-tabs .bycategory .panel-heading .panel-title a .arrow { float:right; }
.joinus-tabs .bycategory .panel-heading .panel-title a .arrow .fa { font-size:30px; line-height: 36px; color:#f67107; }
.joinus-tabs .bycategory .panel-heading .panel-title a.collapsed .arrow .fa:before { color:#bbbbbb; content:"\f107"; }
.joinus-tabs .bycategory .panel-collapse { width:100%; float:left; }
.joinus-tabs .bycategory .panel-body { width:100%; float:left; background:#fafafa; border:1px solid #e2e2e2; border-top: 0; padding: 20px; color:#333; border-radius: 0 0 5px 5px;	 }
.joinus-tabs .bycategory .panel-body .joblist { width:100%; float:left; margin: 0; padding: 0; list-style: none; }
.joinus-tabs .bycategory .panel-body .joblist li { width:100%; float: left; text-align: left; padding: 15px 0; margin: 0 0 10px 0; border-bottom:1px solid #e2e2e2; }
.joinus-tabs .bycategory .panel-body .joblist li a:hover .vacancy { color:#f67107; }
.joinus-tabs .bycategory .panel-body .joblist li .vacancy { width:60%; float: left; font-weight:bold; color:#666; }
.joinus-tabs .bycategory .panel-body .joblist li .vacancy span { font-weight: normal; }
.joinus-tabs .bycategory .panel-body .joblist li .location { float: right; text-align: right; font-size: 14px; color:#999; padding: 0 0 0 30px; }
.joinus-tabs .bycategory .panel-body .joblist li .location span { display:inline-block; }
.joinus-tabs .bycategory .panel-body .joblist li .location.ind { background: url(../img/flag_india.png) no-repeat 0 50%; }
.joinus-tabs .bycategory .panel-body .joblist li .location.usa { background: url(../img/flag_usa.png) no-repeat 0 50%; }
.joinus-tabs .bycategory .panel-body .joblist li .location.uk { background: url(../img/flag_uk.png) no-repeat 0 50%; }
.joinus-tabs .bycategory .panel-body .joblist li.noborder { border:0; padding-bottom: 0; }

.inspirepoints { width:100%; float:left; margin: 30px 0; text-align: center; }
.inspirepoints .activity { width:19.6%; display: inline-block; vertical-align: top; padding:0 30px; }
.inspirepoints .activity .img { width:100%; display: table; height: 120px;  }
.inspirepoints .activity .img .t { width:100%; display: table-cell; vertical-align: middle; }
.inspirepoints .activity .title { width:100%; float:left; font-size: 20px; font-weight: 400; color:#000; margin: 0 0 10px 0; }

.givinback { width:100%; float:left; margin: 30px 0 0 0; }
.givinback .box { width:100%; height: 530px; margin: 0 0 30px 0; float:left; border: 1px solid #d8d8d8; border-radius: 3px; padding:20px; position: relative; }
.givinback .box .img { width:100%; height: 120px; float:left; display:table; text-align: center; }
.givinback .box .img .t { display:table-cell; width:100%; height: 100%; vertical-align: middle; }

.givinback .box .name {  width:100%; float:left; text-align: center; }
.givinback .box .name .orange { width:100%; float:left; color:#f67107; font-size: 14px; }
.givinback .box .name .black { width:100%; float:left; color:#000; font-size: 16px; font-weight: bold; line-height: 120%; }
.givinback .box .desc { width:100%; float:left; text-align: center; }

.pg_gopalces { text-align: left; background: url("../img/goplaces_bg.jpg"); overflow: hidden; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.goplacemenu { max-width: 400px; margin: 0 auto; text-align: center; }
.goplacemenu .btn { width:100%; margin: 0 0 20px 0; border:1px solid #f67107; color:#f67107; background: none; padding: 15px; font-size: 16px; }
.goplacemenu .btn:hover { background:#f67107; color:#fff; }
.goplacemenu .btn-large { background:#f67107; border:1px solid transparent; color:#fff; }
.goplacemenu .btn-large:hover { background: none; border-color: #f67107; color:#f67107; }

.glassdoor { text-align: center; margin:40px 0 0 0; }

.celebration.codeon .box .img { -webkit-transform: scale(1); -moz-transform: scale(1); -o-transform: scale(1); -ms-transform: scale(1); transform: scale(1); z-index: 1; transition:all 0.2s ease; }
.celebration.lifeonfriday .box .img { -webkit-transform: scale(1); -moz-transform: scale(1); -o-transform: scale(1); -ms-transform: scale(1); transform: scale(1); z-index: 1; transition:all 0.2s ease; }

.zimg { -webkit-transform: scale(1.08) !important; -moz-transform: scale(1.08); -o-transform: scale(1.08); -ms-transform: scale(1.08); transform: scale(1.08); z-index: 5; }

.svg.logo { max-width: 300px; max-height: 100px; margin: 0 0 10px 0;  }

.qas_4 { text-align: left; background: url("../img/integration_bg.png"); overflow: hidden; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }

.product_form { width:100%; background: url("../img/product_form_bg.jpg"); overflow: hidden; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 100px; background-size: cover; }
.product_form h3 { font-weight: 400; color:#000; }
.product_form p { color:#000; font-size:18px; }
.product_form p a, .product_form h3 a { color:#F67107; text-decoration: underline; padding:0;  }
.product_form p a:hover, .product_form h3 a:hover { text-decoration: none; }

.listofjobs { width: 100%; float: left; padding:30px 0 0 0; }
.listofjobs ul { width:100%; float:left; list-style:none; }
.listofjobs ul li { width:100%; float:left; }
.listofjobs ul li h3 { width:100%; float:left; margin: 0 0 5px 0; font-size: 16px; font-weight: 600; }
.listofjobs ul ul { width:100%; float:left; margin: 0 0 20px 0; list-style: disc; list-style-position:inside; }
.listofjobs ul ul li { width:100%; float:left; margin: 0 0 5px 0; }
.listofjobs .dtitle::lastword { color:#f00; }

.corevalues { width:100%; float:left; }
.corevalues .img { width: 100%; height: 215px; border: 4px solid #fff; background-size: cover !important; background-position: 50% 50% !important; display: inline-block; text-align: center; margin: 0 auto; overflow: hidden; background: #fff; box-shadow: 0 0 0 1px #E4E4E1; -webkit-box-shadow: 0 0 0 1px #E4E4E1; -ms-box-shadow: 0 0 0 1px #E4E4E1; -moz-box-shadow: 0 0 0 1px #E4E4E1; -o-box-shadow: 0 0 0 1px #E4E4E1; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; clear: both; }

.div1 { width:20% !important; float:left; }
.div2 { width:40% !important; float:left; }
.div3 { width:40% !important; float:left; }
.div4 { width:16.7% !important; float:left; }
.div5 { width:33.3% !important; float:left; }
.div6 { width:33.3% !important; float:left; }
.div7 { width:16.7% !important; float:left; }

.div1 .ri-grid ul li a { border:10px solid #fff; }
.div2 .ri-grid ul li a { border:10px solid #fff; }
.div3 .ri-grid ul li a { border:10px solid #fff; }
.div4 .ri-grid ul li a { border:10px solid #fff; }
.div5 .ri-grid ul li a { border:10px solid #fff; }
.div6 .ri-grid ul li a { border:10px solid #fff; }
.div7 .ri-grid ul li a { border:10px solid #fff; }

.qa_efficiency .resp_title { padding: 0 20px; border: 2px solid #d7d7d7; width:100%; float:left; margin-bottom: 10px; }
.qa_efficiency .resp_title.activelink .fa-chevron-down:before { content: "\f076"; }
.qa_efficiency .resp_title a { font-size: 16px; color: #000; display: block; padding: 4px 0; float:left; width:100%; }
.qa_efficiency .resp_title a svg { max-width: 40px; max-height: 40px; margin: 10px 0 0 10px; }
.qa_efficiency .resp_title a.activelink { color:#f67107; }
.qa_efficiency .resp_title a.activelink span { color:#f67107; }
.qa_efficiency .resp_title i.fa { color: #ccc; position: relative; float: left; line-height:40px; }
.qa_efficiency .resp_title a span { margin-left: 15px; text-align: left; }
.qa_efficiency .resp_title a.activelink .fa-chevron-down:before { content: "\f077";}
.qa_efficiency .resp_title { background: #fff; border: 1px solid #eeeeee; border-radius: 30px; }
.qa_efficiency  .resp_title  a div.img img { width:30px; height:30px; margin-top: 5px; }
.qa_efficiency .lnk { border:1px solid #f67107; color:#f67107; }
.qa_efficiency .lnk:hover { background: #f67107; color:#fff !important; }

.p-0{ padding:0px !important;}
.p-b-0{ padding-bottom:0px !important;}
.m-0{ margin:0px !important;}
.p-l-r-5{padding:0px 5px !important;}
.m-b-10{ margin-bottom:10px;}
.m-t-8{ margin-top:8px;}
.font18 .lnk { font-size: 18px; }
.font18 { font-size: 18px; }

.tabscontainer { width: 100%; float:left; }
.tabscontainer .tabnav { width: 100%; float:left; }
.tabscontainer .tabnav .t { width: 100%; float:left; padding:10px 20px; margin: 0 0 10px 0; border:2px solid transparent; border-radius: 30px;}
.tabscontainer .tabnav .t:hover, .tabscontainer .tabnav .t.active { background: #fff; border:2px solid #eeeeee; border-radius: 30px; -webkit-border-radius: 30px; -moz-border-radius: 30px; -ms-border-radius: 30px; -o-border-radius: 30px; -webkit-box-shadow: 0px 0px 7px 0px rgba(220,220,220,0.45); -moz-box-shadow: 0px 0px 7px 0px rgba(220,220,220,0.45); box-shadow: 0px 0px 7px 0px rgba(220,220,220,0.45);}
.tabscontainer .tabnav .t:hover a span, .tabscontainer .tabnav .t.active a span { color:#f67107; }
.tabscontainer .tabnav .t a { width: 100%; float:left; }
.tabscontainer .tabnav .t a:hover { text-decoration: none; }
.tabscontainer .tabnav .t a .img { width:51px; padding-right: 10px; display: inline-block; vertical-align: middle; height: 41px; text-align: center; }
.tabscontainer .tabnav .t a .img svg { max-width: 100%; max-height: 100%; }
.tabscontainer .tabnav .t a span { width: 77%; display: inline-block; vertical-align: middle; font-size: 16px; line-height:120%; font-weight: 400; }

.tabscontainer .tabscont { width:100%; float:left; }
.tabscontainer .tabscont .tb { display: none; width:100%; float:left; margin:0 0 10px 0; }
.tabscontainer .tabscont .tb.active { display: block; }
.tabscontainer .tabscont .tb .imgbox { width:100%; float:left; margin: 0 0 10px 0; position: relative; }
.tabscontainer .tabscont .tb .btn_center { margin-top: 30px; display: inline-block; }
.pin { width: 37px; height: 37px; background: url(../img/pin.png) no-repeat 50% 50%; background-size: 100%; position: absolute; z-index: 1; }

#entgrade .pin.pin1 { left:35%; top:18%; }
#entgrade .pin.pin2 { left:37%; top:38%; }

#impprod .pin1 { left:61%; top:51%; }
#impprod .pin2 { left:25%; top:35%; }
#impprod .pin3 { left:19%; top:14%; }

#indlead .pin1 { left:22%; top:21%; }
#indlead .pin2 { left:39%; top:18%; }
#indlead .pin3 { left:40%; top:40%; }

#custrep .pin1 { left:37%; top:34%; }
#custrep .pin2 { left:53%; top:58%; }
#custrep .pin3 { left:56%; top:34%; }

#custcap .pin1 { left:59%; top:12%; }
#custcap .pin2 { left:20%; top:42%; }
#custcap .pin3 { left:31%; top:18%; }

#restapi .pin1 { left:59%; top:41%; }
#restapi .pin2 { left:50%; top:42%; }
#restapi .pin3 { left:23%; top:21%; }

.qmetry_9 .svg { max-width: 110px; max-height: 110px; width:110px; height: 110px; }

.job-popup { width:100%; max-height:550px; padding: 10px; overflow-x: scroll; }
.job-popup .header { width:100%; float:left; border-bottom:1px solid #ececea; padding-bottom:5px; margin:0 0 10px 0; }
.job-popup .header .left { width:50%; display: inline-block; vertical-align: top; }
.job-popup .header .right { width:49%; display: inline-block; vertical-align: top; }
.job-popup .header .right .btn { float: right; }
.jobdetails { width:100%; float:left; margin: 0 0 30px 0; }
.jobdetails .jobtitle { width:100%; float:left; font-size: 28px; color:#000; margin:0; }
.jobdetails .jobcode { width:100%; float:left; font-weight: bold; }
.jobdetails .jobcode span { color:#F67107; }
.jobdetails .joblocation { float:left; text-align: right; font-size: 14px; color:#999; padding: 0 0 0 30px; }
.jobdetails .joblocation span { display:inline-block; }
.jobdetails .joblocation.ind { background: url(../img/flag_india.png) no-repeat 0 50%; }
.jobdetails .joblocation.usa { background: url(../img/flag_usa.png) no-repeat 0 50%; }
.jobdetails .joblocation.uk { background: url(../img/flag_uk.png) no-repeat 0 50%; }
.jobcontent { width:100%; float:left; }
.jobcontent span a { margin: 10px 0 0 0; float:right; color: #fff !important; background: #F67107; font-size: 16px; padding: 15px 20px; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -ms-border-radius: 4px; -o-border-radius: 4px; }
.jobcontent span a:hover { opacity: 0.8; }
.jobfooter { width:100%; float:left; margin:20px 0 0 0; padding: 10px 0 0 0; border-top:1px solid #ececea; }
.jobfooter .left {width: 25%; display: inline-block;vertical-align: top;}
.jobfooter .right {width: 74%; display: inline-block;}
.jobfooter .jobs_social_links { list-style: none; display: inline-block; padding: 0; margin: 0; }
.jobfooter .jobs_social_links li { float:left; padding: 0 10px 0 0; }
.jobfooter .menu-footer-menu-in-bottom-container { float: right; }
.jobfooter .menu-footer-menu-in-bottom-container ul { float: left; list-style: none; margin:0; padding:0; }
.jobfooter .menu-footer-menu-in-bottom-container ul li { display: inline-block; padding: 0 10px; }
.jobfooter .menu-footer-menu-in-bottom-container ul li a { font-size: 12px; }











/* Media Query from 1st Sep 2015 */
@media (min-width: 1200px) and (max-width: 1230px) {
.container { width: 1200px; padding: 0 15px; }
}

/*  for mobile  */
@media (max-width:900px){
.circular_nav .popover { opacity: 1 !important; position: fixed; float: left; top:-999em !important; }
.nac_content { display: block; }
.node + .popover { opacity: 0 !important; background: red !important; }
}

@media (max-width: 480px) {
.nomobile { display: none !important; }
.container { width: 100% !important; padding: 0 15px; }
.search-bar .container { padding: 15px 0; }
.contact-bar .close, .search-bar .close { top: 24px; }
.search-bar input[type="text"].input-inverse { font-size: 14px; }
.container.container_relative { padding: 10px 0px !important; }
.container.container_relative.container_social { padding: 0 !important; }
.homeslider .container { padding: 0 !important; }
.synchro_new .homeslider.backgrounded { padding: 0 !important; }
.sbanner { height: 370px; }
.homesliders .bx-viewport { height: 330px !important; }
.sbanner .slide { height: 370px; margin-top: 0 !important; background-position: 63% 0 !important; transform:translate3d(0px, 0, 0px) !important; }
.sbanner .slide .desc { max-width: 90%; top: 30%; left: 50%; transform: translate(-50%, -30%); -webkit-transform: translate(-50%, -30%); -moz-transform: translate(-50%, -30%); -o-transform: translate(-50%, -30%); -ms-transform: translate(-50%, -30%); text-align: center; }
.sbanner .slide .desc h2 { font-size: 20px; text-align: center; margin-bottom: 10px !important; color: #fff; }
.sbanner .slide .desc p { font-size: 16px; margin-bottom: 10px; text-align: center; color: #fff; }
.sbanner .slide .desc a { font-size: 14px; float: none; }
.homeslider .bx-clone { transform: translate3d(0px, 0, 0px); -webkit-transform: translate3d(0px, 0, 0px); -moz-transform: translate3d(0px, 0, 0px); -o-transform: translate3d(0px, 0, 0px); -ms-transform: translate3d(0px, 0, 0px); }
/*.sbanner .slide.bx-clone { margin: 0 !important; }*/
.points .pb:after { display: none; }
.points { width: 100%; float: left; background: url(../img/plus_icn_1.png) no-repeat 50% 50%; background-size: 40px; }
.points .box { margin-bottom: 30px; }
.cust_3 .slide p { font-size: 14px !important; line-height: 140% !important; text-align: center !important; }
.cust_3 a.cust-more-btn { font-size: 14px; padding: 10px 0; min-width: 130px; }
.home-2-page .aboutpg { background: url(../img/home_about_bg2.jpg) no-repeat; background-position: 50% 0 !important; }
.aboutpg { background: url(../img/abt_bg_ipad.jpg) no-repeat 50% 0; }
.aboutpg p { font-size: 14px !important; }
.aboutpg .ul_container1,  .aboutpg .ul_container2,  .aboutpg .ul_container3 { padding: 0; }
.aboutpg .row-fluid { margin: 0; }
.aboutpg .row-fluid h4 { text-align: center !important; min-height: 1px; margin-top: 10px; }
.aboutpg .row-fluid p { font-size: 14px !important; text-align: center !important; }
.aboutpg .ul_container1,  .aboutpg .ul_container2,  .aboutpg .ul_container3 { margin: 20px 0 0 0; }
.mleadership p { font-size: 14px !important; }
.cust_2 { background-position: 50% -1000px; }
.mjourney .box.aug,  .mjourney .box.mob,  .mjourney .box.eff,  .mjourney .box.exc { margin: 0; }
.mjourney .box { margin-bottom: 30px; }
.mjourney .box h3 { width: 100%; }
.mjourney .box .ic { float: none; margin: 0 auto 20px auto; }
.mjourney .box ul { margin: 0 0 20px 20px; }
.mjourney .box ul:after { border: 0; }
.dd { border: 0; }
.synchro_new .backgrounded { padding: 20px 0 !important; }
.yourefforts.backgrounded { padding-bottom: 0 !important; }
.dtitle { font-size: 24px !important; line-height: 120% !important; }
.subtext { font-size: 16px; }
.cust_2 .testimonial { padding: 0 !important; font-size: 14px !important; }
.cust_2 ._cite-content strong { font-size: 16px !important; }
.cust_2 ._cite-content span { font-size: 14px !important; }
.cust_2 .cust-more-btn { font-size: 14px; padding: 10px 0; min-width: 130px; }
.mjourney .box .nodesktop .ic { width: 66px; height: 66px; }
.mjourney .box .nodesktop .ic img { padding: 13px 0; max-width: 40px; }
.mjourney .box.mob .nodesktop .ic img { margin-left: 5px; }
.mjourney .box .nodesktop h3 { margin-top: 10px; text-align: left; font-size: 17px; }
.mjourney .box .nodesktop .col-xs-4,  .mjourney .box .nodesktop .col-xs-8 { padding-left: 0; }
.newsnevent { top: 0 !important; }
.newsnevent .box { margin: 0 0 20px 0; text-align: center; padding-bottom: 20px; }
.newsnevent .box .title { height: auto !important; }
.newsnevent .box .img { max-width:300px; max-height: 170px; margin-bottom: 10px !important; }
.newsnevent .box .seemore { text-align: center; }
.lblog .box { margin: 0 0 20px 0; text-align: center; }
.lblog .box .title { height: auto !important; }
.lblog .box .img { height: 230px; margin-bottom: 10px !important; }
.lblog .box .desc .date { margin: 0 0 10px 0; }
.lblog .box .desc .text { margin-bottom: 10px; }
.backgrounded.fastFadeFromTop.newsnevent { padding-bottom: inherit !important; }
.footer_copyright { width: 100%; text-align: center; }
.markchal .span3m { width: 100% !important; margin-bottom: 30px; }
.menu-video-img { display: none; }
div#product_footerlink { text-align: center; }
footer .copyright li { float: none; display: inline-block; }
.socialright { width: 100%; margin-top: 20px; }
.backgrounded.fastFadeFromTop { padding: 30px 0; }
.home-core-offering .span3m { width:100%; margin: 0 0 30px 0 !important; }

.tabs .t { width:50%; float:left; margin: 0 0 15px 0; }
.soimg { width:100% !important; margin-bottom: 20px; }
.socnt { width:100% !important; }
.static_banner .desc .soimg { width:100% !important; margin: 0; }
.static_banner .desc .soimg .img { width: 100%; text-align: center !important; }
.static_banner .desc .soimg .img img { max-width: 120px; }
.static_banner .desc .socnt { width:100% !important; margin: 0; }
.static_banner .desc .socnt h2 { font-size: 22px; text-align: center; }
.static_banner .desc .socnt p { font-size:16px; line-height: 140% !important; }

div#product_footerlink ul { margin: 0 0 30px 0; }
.md_mobile_div { height: auto !important; }
.md_if_font p { min-height: 1px !important; }

.small_header { padding: 10px 0; }
.small_header h2 { font-size: 30px !important; margin: 0 0 10px 0 !important; text-align: center; }
.small_header .pull-right { max-width: 50%; }
.small_header p { font-size: 16px !important; text-align: center !important; }

.videomsg .video { width:100%; }
.videomsg .quote { width:100%; margin: 0 0 30px 0; }
.videomsg .quote h3 { text-align: center; }
.videomsg .quote p { text-align: center !important; }
.videomsg .quote a { text-align: center; display: block; }
.videomsg blockquote { padding: 15px 15px 0 15px; text-align: center; }
.videomsg blockquote:before { left: 0; }

.testi_slider .video { width: 100%; }
.testi_slider .quote { width:96%; margin: 0 2% 30px 2%; }
.testi_slider .quote h3 { text-align: center; }
.testi_slider .quote p { text-align: center !important; }
.testi_slider .quote a { text-align: center; display: block; }
.testi_slider blockquote { padding: 15px 15px 0 15px; text-align: center; }
.testi_slider blockquote:before { left: 0; }

.c_list .box { height: auto !important; padding: 15px 15px 80px 15px; }
.c_list .box .cl { height: 80px; }
.c_list .box .cl img { max-height: 70px; }
.testi_slider .bx-controls { margin: 0; }
.testi_slider .bx-controls .bx-pager { width:100%; margin-top: 0; }
.testi_slider blockquote:after { right:-30px; }
.events-tabs .bx-wrapper { max-width: 320px !important; }
.moresuccess .bx-wrapper { max-width: 320px !important; }
.moresuccess .bx-wrapper .bx-prev { left: 0px; }
.moresuccess .bx-wrapper .bx-next { right:0px; }

.mobi_init .bx-wrapper { max-width: 320px !important; }
.mobi_init .bx-wrapper .bx-prev { left: 0px; }
.mobi_init .bx-wrapper .bx-next { right:0px; }

.marketleaders .bx-wrapper { max-width: 320px !important; }
.marketleaders .bx-wrapper .bx-prev { left: 0px; }
.marketleaders .bx-wrapper .bx-next { right:0px; }

.mobijourney .bx-wrapper { max-width: 320px !important; }
.mobijourney .bx-wrapper .bx-prev { left: 0px !important; }
.mobijourney .bx-wrapper .bx-next { right:0px !important; }

.helpindus .bx-wrapper { max-width: 320px !important; }
.helpindus .bx-wrapper .bx-prev { left: 0px !important; }
.helpindus .bx-wrapper .bx-next { right:0px !important; }

.cust-tabs .bx-wrapper { max-width: 320px !important; }
.gets-tabs .bx-wrapper { max-width: 320px !important; }
.gets-tabs .tab-content .resp_title { display: none !important; }
.events_1 h2, .events_2 h2 { font-size: 24px !important; }
.event_map iframe { height: 420px; }

.events-tabs .box { margin: 0 0 10px 0; }
.events-tabs .nav-tabs li a i { font-size: 14px; }
.events-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }
.custom_slider .cust-head-text{ text-align:center;}
#thebodyshop1 p{ text-align:center; padding:10px 0px; }
#isos1 p{ text-align:center; padding:10px 0px; }
#globeone1 p{ text-align:center; padding:10px 0px; }
#urgently1 p{ text-align:center; padding:10px 0px; }
#aravo1 p{ text-align:center; padding:10px 0px; }
#starwood1 p{ text-align:center; padding:10px 0px; }
.admin-bar header .navbar-fixed-top, .admin-bar header .search-bar, .admin-bar header .contact-bar { margin-top: 0px !important; }
.footermar .col{ width: 100% !important; height:auto !important; }

#getstarted { width:100%; height:735px; }

#frm_contact { width:100%; height:770px; }
#frm_product { width:100%; height:870px; }
#frm_product_a { width:100%; height:780px; }

.contact_pg .dtitle.tleft { text-align: center !important; }
.contact_pg .cdetails .details .social { text-align: center; }

.mktoForm select#More_Information__c.mktoField { width:100% !important; }

.cust_slider_cont .cust-head-text { font-size: 16px !important; }
.cust_slider_cont .video .img { width:160px; height: 160px; }
.cust_slider_cont .video .img .imgin { width:160px; height: 160px; }
.cust_slider_cont .video .img a { width: 50px; height: 50px; }
.cust_slider_cont .video .img a .fa { line-height: 44px; font-size: 20px; }

.methodology .box .title { height: auto !important; }
.methodology .box .title { font-size: 20px; text-align: center; }

.mobispec { background-position: 50% 0px !important; background-attachment: inherit; }
.mobispec .exppoints .col { width:100%; margin: 0 0 20px 0; height: auto !important; text-align: center; }
.mobispec .exppoints .col h3 { text-align: center; }
.mobispec .exppoints .col p { text-align: center; }

.entstack { background-position: 50% 0px !important; background-attachment: inherit; }
.moresuccess { background-position: 50% 0px !important; background-attachment: inherit; }
.mobi_init { background-position: 50% 0px !important; background-attachment: inherit; }
.marketleaders { background-position: 50% 0px !important; background-attachment: inherit; }

.static_banner { height: 200px; }
.static_banner .desc h2 { font-size: 24px; }
.static_banner .desc p { text-align: center !important; font-size: 16px; margin: 0 !important; }

.static_banner.toolsandplatform .desc h2 { font-size: 24px; }
.static_banner.toolsandplatform .desc p { text-align: center !important; font-size: 16px; margin: 0 0 5px 0 !important; }

.static_banner.qmetrymobile { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.qmetrttestmanager { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.qas { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.attesto { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }

.qmetry_6 { background-position: 50% 0 !important; }
.product_form { background-position: 50% 0 !important; }
.strat_mobi .strat { width:100%; }

.static_banner.cicd { background-attachment: inherit; background-position: 50% 0 !important; height: 230px; }

.cust_sayings .testimonial { font-size: 18px !important; }

.jump_start_top .head { font-size: 20px; }
.jump_start_top .subhead { font-size: 16px; margin: 0 0 20px 0; }

.capabilitypg { background-position: 50% 0 !important; background-attachment: inherit; }
.capabilitypg .container { overflow-x:hidden; }
.home-2-page .aboutpg { background-position: 50% 0 !important; background-attachment: inherit !important; }
.home-2-page .backgrounded.cust_sayings { background-position: 50% 0 !important; background-attachment: inherit; }

.contact_pg .cdetails { margin: 20px 0 40px 0 !important; }
.o_locations .box .details .head { text-align: center; height: auto !important; }
.o_locations .box .details .desc { text-align: center; height: auto !important; }
.o_locations .box .details .phoneout { text-align: center; }

.tier_one .dtitle { text-align: left; }
.tier_one .num { margin: 5px 0 0 0; }
.tier_one .num img { max-width: 40px; }
.tier_one .desc { text-align: center; }
.tier_one .btns { text-align: center; }
.tier_one .btns .btn { font-size: 14px; padding: 12px 16px; }

.tier_two .dtitle { text-align: left; }
.tier_two .num { margin: 5px 0 0 0; }
.tier_two .num img { max-width: 40px; }
.tier_two .desc { text-align: center; }
.tier_two .btns { text-align: center; }
.tier_two .btns .btn { font-size: 14px; padding: 12px 16px; }

.tier_three .dtitle { text-align: left; }
.tier_three .num { margin: 5px 0 0 0; }
.tier_three .num img { max-width: 40px; }
.tier_three .desc { text-align: center; }
.tier_three .btns { text-align: center; }
.tier_three .btns .btn { font-size: 14px; padding: 12px 16px; }

.tier_four .dtitle { text-align: left; }
.tier_four .num { margin: 5px 0 0 0; }
.tier_four .num img { max-width: 40px; }
.tier_four .desc { text-align: center; }
.tier_four .btns { text-align: center; }
.tier_four .btns .btn { font-size: 14px; padding: 12px 16px; }

.tier_five .dtitle { text-align: left; }
.tier_five .num { margin: 5px 0 0 0; }
.tier_five .num img { max-width: 40px; }
.tier_five .desc { text-align: center; }
.tier_five .btns { text-align: center; }
.tier_five .btns .btn { font-size: 14px; padding: 12px 16px; }

.noparallax { background-attachment: inherit !important; background-size: cover !important; background-position-y: 0 !important; }

.mob_serv_list .box { width:94%; margin:0 3% 10px 3% !important; }
.mob_serv_list .box .img { height: auto !important; }
.mob_serv_list .box .desc { height: auto !important; }

.cap_list .box { width:94%; margin:0 3% 10px 3% !important; }
.cap_list .box .img { height: auto !important; }
.cap_list .box .desc { height: auto !important; }

.pg_mob_features .box { margin:0 0 40px 0; }

.pg_rtattesto .list li { font-size: 16px; margin:0 0 10px 0; }
.mobi_init .slide .box p, .mobi_init .slide { height: auto !important; }

.frm_getInTouch { padding: 0; }

.exp_mobi .experties .col { width:100%; margin:0 0 30px 0; }

.checkmarks { margin:20px 0 0 0; }
.checkmarks .box { margin: 0 0 40px 0; }

.int_map .int_loc_map { margin: -70px 0 0 0; }
.int_map .int_loc_map .loc { width:6px; height: 6px; border:1px solid #fff; }
.int_map .qualities { margin:-80px 0 0 0; }
.int_map .qualities .box { margin:20px 0 0 0; }
.int_map .int_loc_map .loc { display: none; }
.int_map .qualities .box .name { height: auto !important; }

.apps_tested .app_features { margin:20px 0; }
.apps_tested .app_features .box { margin: 0 0 20px 0; }

.cont_integration { background: url("../img/cont_integration_mobile_bg.jpg"); background-attachment: inherit; background-position: 50% 50%; }

.forrest_form .dtitle { font-size: 24px !important; text-align: center; }
.forrest_form .sub { text-align: center; }
.better_quality .dtitle { text-align: center; }
.better_quality h3 { text-align: center; }
.better_quality p { text-align: center; }

.sexy_wheel { box-shadow: 0 0 0 6px rgba(255,255,255,0.2), 0 0 0 12px rgba(255,255,255,0.2); }
.slice label { font-size: 10px; line-height: 3.3; }
.svg svg { width: 26px !important; }
.unsel label { background-size: 87%; }

.mobstra .svg { transform: translate(-51%,-10%) rotate(51deg); -webkit-transform: translate(-51%,-10%) rotate(51deg); -moz-transform: translate(-51%,-10%) rotate(51deg); -ms-transform: translate(-51%,-10%) rotate(51deg); -o-transform: translate(-51%,-10%) rotate(51deg); }
.mobtest .svg { transform: translate(-40%,-24%) rotate(-90deg); -webkit-transform: translate(-40%,-24%) rotate(-90deg); -moz-transform: translate(-40%,-24%) rotate(-90deg); -ms-transform: translate(-40%,-24%) rotate(-90deg); -o-transform: translate(-40%,-24%) rotate(-90deg); }
.mobauto .svg { transform: translate(-50%,-10%) rotate(-164deg); -webkit-transform: translate(-50%,-10%) rotate(-164deg); -moz-transform: translate(-50%,-10%) rotate(-164deg); -ms-transform: translate(-50%,-10%) rotate(-164deg); -o-transform: translate(-50%,-10%) rotate(-164deg); }
.mobopt .svg { transform:translate(-50%,25%) rotate(124deg); -webkit-transform:translate(-50%,25%) rotate(124deg); -moz-transform:translate(-50%,25%) rotate(124deg); -ms-transform:translate(-50%,25%) rotate(124deg); -o-transform:translate(-50%,25%) rotate(124deg); }

.current.mobstra .svg { transform: translate(-50%,20%) rotate(51deg); -webkit-transform: translate(-50%,20%) rotate(51deg); -moz-transform: translate(-50%,20%) rotate(51deg); -ms-transform: translate(-50%,20%) rotate(51deg); -o-transform: translate(-50%,20%) rotate(51deg); }
.current.mobdev .svg { transform:translate(-60%,20%) rotate(-20deg); -webkit-transform:translate(-60%,20%) rotate(-20deg); -moz-transform:translate(-60%,20%) rotate(-20deg); -ms-transform:translate(-60%,20%) rotate(-20deg); -o-transform:translate(-60%,20%) rotate(-20deg); }
.current.mobtest .svg { transform: translate(-50%,20%) rotate(-90deg); -webkit-transform: translate(-50%,20%) rotate(-90deg); -moz-transform: translate(-50%,20%) rotate(-90deg); -ms-transform: translate(-50%,20%) rotate(-90deg); -o-transform: translate(-50%,20%) rotate(-90deg); }
.current.mobauto .svg { transform: translate(-53%,20%) rotate(-164deg); -webkit-transform: translate(-53%,20%) rotate(-164deg); -moz-transform: translate(-53%,20%) rotate(-164deg); -ms-transform: translate(-53%,20%) rotate(-164deg); -o-transform: translate(-53%,20%) rotate(-164deg); }
.current.mobopt .svg { transform:translate(-50%,40%) rotate(124deg); -webkit-transform:translate(-50%,40%) rotate(124deg); -moz-transform:translate(-50%,40%) rotate(124deg); -ms-transform:translate(-50%,40%) rotate(124deg); -o-transform:translate(-50%,40%) rotate(124deg); }

.slice #ms_name .svg { height:16px; }
.slice #ms_dev .svg { height:20px; }
.slice #ms_test .svg { height:16px; }
.slice #ms_auto .svg { height:13px; }
.slice #ms_opti .svg { height:13px; }

.slice.current #ms_name .svg { height:18px; transform: translate(-50%,-130%) rotate(0deg); -webkit-transform: translate(-50%,-130%) rotate(0deg); -moz-transform: translate(-50%,-130%) rotate(0deg); -ms-transform: translate(-50%,-130%) rotate(0deg); -o-transform: translate(-50%,-130%) rotate(0deg); }
.slice.current #ms_dev .svg { height:22px; transform: translate(-50%,-110%) rotate(0deg); -webkit-transform: translate(-50%,-110%) rotate(0deg); -moz-transform: translate(-50%,-110%) rotate(0deg); -ms-transform: translate(-50%,-110%) rotate(0deg); -o-transform: translate(-50%,-110%) rotate(0deg); }
.slice.current #ms_test .svg { height:18px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }
.slice.current #ms_auto .svg { height:15px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }
.slice.current #ms_opti .svg { height:15px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }

.mobopt .svg { top:14%; }
.current.mobopt .svg { top:12%; }
.slice .svg { width:26px; }
.current .svg { width:26px; top:14%; }
.current .svg svg { width:30px !important; }

.moreinfo { display: none; }

.mobopt.current .svg { width:26px; }

.circle .arrow { width:28px; height:17px; }
.circle .arrow1 { top: 5%; left: 31%; transform: rotate(-21deg); -webkit-transform: rotate(-21deg); -moz-transform: rotate(-21deg); -ms-transform: rotate(-21deg); -o-transform: rotate(-21deg); }
.circle .arrow2 { top:22% ; right: 8%; transform: rotate(57deg); -webkit-transform: rotate(57deg); -moz-transform: rotate(57deg); -ms-transform: rotate(57deg); -o-transform: rotate(57deg); }
.circle .arrow3 {top: 73%; right: 10%; transform: rotate(129deg); -webkit-transform: rotate(129deg); -moz-transform: rotate(129deg); -ms-transform: rotate(129deg); -o-transform: rotate(129deg); }
.circle .arrow4 {top: 89%; left: 32%; transform: rotate(197deg); -webkit-transform: rotate(197deg); -moz-transform: rotate(197deg); -ms-transform: rotate(197deg); -o-transform: rotate(197deg); }
.circle .arrow5 {top: 47%; left: 2%; transform: rotate(-92deg); -webkit-transform: rotate(-92deg); -moz-transform: rotate(-92deg); -ms-transform: rotate(-92deg); -o-transform: rotate(-92deg); }

.innovators { margin:0 !important; }
.innovators .box { margin: 0 0 20px 0; }

.circular_nav { max-width: 300px; }
.circular_nav .nav .center { width:80px; height: 80px; }
.circular_nav .nav .node { height: 60px; }
.circular_nav .nav .node:after { width:100%; right: 0; }
.circular_nav .nav .node .cnav { width:60px; height: 60px; }

.circular_nav .nav .center .sm { font-size: 12px; }
.circular_nav .nav .center .lg { font-size: 16px; }

.circular_nav .popover { max-width: 170px !important; min-width: 150px; width:100%; }
.circular_nav .nav .cnav .svg { margin: 0; width:30px; height:30px; }
.circular_nav .nav .cnav .name { display: none; }

.awardnote { background-position:94% 0; }
.aw_list .box { height: auto !important; }

#whitepaper_1 { width: 260px; height: 475px; }
.whitepaper { text-align: center !important; }
.whitepaper .dtitle { text-align: center !important; }
.whitepaper .img { max-width: 200px; display: none; }

.nice_title .box { font-size: 15px; min-height: 1px; }
.nice_title.orange .box:before { border:16px solid #F67107; }
.nice_title.orange .box:after { border:16px solid #F67107; }
.nice_title.yellow .box:before { border:16px solid #faa224; }
.nice_title.yellow .box:after { border:16px solid #faa224; }
.nice_title.green .box:before { border:16px solid #b4c860; }
.nice_title.green .box:after { border:16px solid #b4c860; }

.nice_title.big.green .box { width:85%; font-size: 14px; padding: 10px 5px; }
.nice_title.big.green .box:before { border: 30px solid #b4c860; border-right:2px solid #b4c860; left: -32px !important; }
.nice_title.big.green .box:after { border: 30px solid #b4c860; border-left:2px solid #b4c860; right:-32px !important; }

.isapproach .subtext { font-size: 16px !important; text-align: center !important; margin: 0 0 30px 0; }

.static_banner.mob_automation { background:url("../img/m_test_automation_banner_mobile.jpg") !important; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 90px; background-size: 100% !important; }

.closertocode .graph_pair .svg.graph { height:230px; }

.static_banner.bnabout { background-size: cover !important; }

.static_banner.bnabout { height: 320px; }
.static_banner.bnabout .desc img { display:none; }
.static_banner.bnabout .desc .gap30 { display:none; }
.static_banner.bnabout .desc p { max-width: 79%; font-size: 14px; line-height: 140% !important; font-style: normal; }

.pg_globalinfra .threepoints { margin: 0; }
.pg_globalinfra .threepoints .box { margin:0 0 20px 0; height: auto !important; font-size: 16px; }

.pg_globalinfra .fivepoints { margin: 0; }
.pg_globalinfra .fivepoints .box { width:100%; }

.pg_form { background-position: 50% 0 !important; }
.pg_form .title { text-align: center; }
.pg_form p { text-align: center; }

.m-text-center { text-align: center; }

#fancybox-close { display: block !important; }

.leaderteam .box { max-width: 220px !important; }

.pg_mapbox .mapbox { margin:0 0 90px 0; display: block; }
.pg_mapbox .mapbox .loc_map img { margin:0 0 90px 0; }
.pg_mapbox .mapbox .loc { display: none; width: 4px; height: 4px; border: 0; box-shadow: 0 0 0 #fff; -webkit-box-shadow: 0 0 1px #ffffff; -moz-box-shadow: 0 0 1px #fff; -ms-box-shadow: 0 0 1px #fff; -o-box-shadow: 0 0 1px #fff; background: #fff; }

.s_locations { display: none; width: 100%; float: left; z-index: 100; position: relative; margin: -120px 0 -80px 0; background: url(../img/img_map.png) no-repeat 50% 0%; background-size: 100%; height: 450px; }
.s_locations .panel { display: none; width:100%; float:left; margin: 0 0 10px 0; }
.s_locations .panel-heading { width:100%; float:left; background: rgba(255,255,255,0.1); }
.s_locations .panel-heading .panel-title { width:100%; float:left; margin: 0; padding: 10px; }
.s_locations .panel-heading .panel-title a { width:100%; float:left; margin: 0; color:#fff; font-size: 20px; }
.s_locations .panel-heading .panel-title a .arrow { float:right; }
.s_locations .panel-heading .panel-title a .arrow .fa { font-size:30px; color:#fff; }
.s_locations .panel-heading .panel-title a.collapsed .arrow .fa:before { content:"\f107"; }

.s_locations .panel-collapse { width:100%; float:left; }
.s_locations .panel-body { width:100%; float:left; background:rgba(255,255,255,1); padding: 10px; color:#333; }

.joinus-tabs .bycategory .panel-heading { padding: 10px; }
.joinus-tabs .bycategory .panel-heading .panel-title { padding: 0; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic { width:30px; height: 30px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic svg { width:30px; height: 30px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .name { max-width: 200px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .title { width:100%; font-size: 14px; line-height: 16px; text-oveflow:ellipses; overflow: hidden; white-space: nowrap; }

.joinus-tabs .bycategory .panel-body .joblist li .vacancy { width:100%; }

.inspirepoints .activity { width:100%; margin: 0 0 40px 0; }
.inspirepoints .activity .img { height: 80px; }

.givinback .box { height: auto !important; }

.pg_gopalces { background-position: 50% 0 !important; background-size: cover !important; background-attachment: inherit !important; }

.goplacemenu .pl0, .goplacemenu .pr0 { padding:0 !important; }
.goplacemenu { padding: 0 15px; }

.zimg { -webkit-transform: scale(1.02) !important; -moz-transform: scale(1.02); -o-transform: scale(1.02); -ms-transform: scale(1.02); transform: scale(1.02); z-index: 5; }

.static_banner.toolsandplatform .desc .mid { display: inline-block; max-width: 90%; text-align: center; }

.corevalues .img { max-width:300px; max-height: 170px; }

.div1 .ri-grid ul li a { border:2px solid #fff; }
.div2 .ri-grid ul li a { border:2px solid #fff; }
.div3 .ri-grid ul li a { border:2px solid #fff; }
.div4 .ri-grid ul li a { border:2px solid #fff; }
.div5 .ri-grid ul li a { border:2px solid #fff; }
.div6 .ri-grid ul li a { border:2px solid #fff; }
.div7 .ri-grid ul li a { border:2px solid #fff; }

.tabscontainer .tabscont .tb .btn_center { margin-top: 10px; display: inline-block; }

.synchro_new .backgrounded.qmetry_7 { padding:20px 0 40px 0 !important; }
.qmetry_7 .bx-wrapper .bx-pager { bottom:-30px !important; }
.customer_slider .testimonial { font-size: 20px !important; }

.product_form .col-xs-12 { text-align: center; }

.corevalues { text-align:center; }

.attesto_1 .col-xs-12 { text-align: center; }
.qas_2 .col-xs-12 { text-align: center; }

.job-popup .header { text-align: center; }
.job-popup .header .left { width:100%; display: inline-block; margin: 0 0 20px 0; }
.job-popup .header .right { width:100%; display: inline-block; margin:0 0 20px 0; }
.job-popup .header .right .btn { float: none; }
.jobdetails .jobtitle { text-align: center; font-size: 20px; }
.jobdetails .jobcode { text-align: center; }
.jobdetails .joblocation { float: right; }
.jobfooter .left {width: 100%; display: inline-block;vertical-align: top;}
.jobfooter .left ul { text-align: center; width:100%; }
.jobfooter .left ul li { display: inline-block; float: none; }
.jobfooter .right { width: 100%; display: inline-block; }
.jobfooter .menu-footer-menu-in-bottom-container { float: none; display: inline-block; }
.jobfooter .menu-footer-menu-in-bottom-container ul { float: none; display: inline-block; text-align: center; }

.static_banner.attesto { background-size: cover !important; }

.home-sec-one .pl0 { padding-left: 15px !important; }

.o_locations .box .img { height: 160px; }
}

@media (min-width:310px) and (max-width: 360px) {
.sexy_wheel { position: relative; margin: 80px auto; min-width: 250px; }
.lblog .box .img { height: 170px; }
.cust_sayings .testimonial:before { left:-25px !important; }
.cust_sayings .testimonial:after { right:-25px !important; }
.cust_sayings .testimonial { font-size:16px !important; }
.gets-tabs .tab-content > .active { margin: 0; }
}

@media (max-width: 767px){
.static_banner.mob_automation { background:url("../img/m_test_automation_banner_mobile.jpg") !important; background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 90px; background-size: 100% !important; }
.menu-video-img { display: none; }

.footermar .col{ width: 100% !important; height:auto !important; }

.requesttrial .box { margin-bottom: 20px; }
.methodology .box .title { font-size: 20px; text-align: center; }

.home-2-page .aboutpg { background-position: 50% 0 !important; background-attachment: inherit !important; }

.o_locations .box .details .head { text-align: center; height: auto !important; }
.o_locations .box .details .desc { text-align: center; height: auto !important; }
.o_locations .box .details .phoneout { text-align: center; }

.contact_pg .cdetails { margin: 0 0 20px 0; }
.contact_pg .cdetails .details { margin: 0 0 20px 0; }

.noparallax { background-attachment: inherit !important; background-size: cover !important; background-position-y: 0 !important; }

.mob_serv_list .box { width:94% !important; margin:0 3% 10px 3% !important; }
.mob_serv_list .box .img { height: auto !important; }
.mob_serv_list .box .desc { height: auto !important; }

.cap_list .box { width:94% !important; margin:0 3% 30px 3% !important; }
.cap_list .box .img { height: auto !important; }
.cap_list .box .desc { height: auto !important; }

.checkmarks .box { margin: 0 0 40px 0; }

.forrest_form .dtitle { font-size: 24px !important; text-align: center; }
.forrest_form .sub { text-align: center; }
.better_quality .dtitle { text-align: center; }
.better_quality h3 { text-align: center; }
.better_quality p { text-align: center; }

.yourefforts .platforms .clients .col { width:100% !important; }
.yourefforts .platforms .clients .col .img { height: 60px !important; }

.yourefforts .effortareas .title { height: auto !important; }
.yourefforts .effortareas .desc { height: auto !important; }
.yourefforts .effortareas .box { margin: 0 0 40px 0; }

#whitepaper_1 { width: 260px; height: 475px; }
.whitepaper { text-align: center !important; }
.whitepaper .dtitle { text-align: center !important; }
.whitepaper .img { max-width: 200px; display: none; }

.nice_title .box { padding: 5px 0 6px 0; }

.closertocode .arrow_img { display: table; }
.closertocode .arrow_img .svg { height: auto; max-height: 380px !important; }
.closertocode .arrow_img .t { display: table-cell; vertical-align: middle; }

.ourpeers .box { height: auto !important; }
.pg_ourpeers .btns .btn { margin: 0 0 10px 0; }
.pg_ourpeers .btns { margin: 0; }

.pg_celebration .btns { margin: 0 0 10px 0; }
.pg_celebration .btns .btn { margin: 0 0 10px 0; }

.pg_personalmobility .btns { margin: 0 0 10px 0; }
.pg_personalmobility .btns .btn { margin: 0 0 10px 0; }

.pg_mapbox .btns { margin: 0 0 10px 0; }
.pg_mapbox .btns .btn { margin: 0 0 10px 0; }

.m-text-center { text-align: center; }

.leaderteam .box { max-width: 300px; }

.pg_historytimeline { display: none; }

.goplacemenu .pl0, .goplacemenu .pr0 { padding:0 !important; }

.qas_3 { text-align: center; }
.qas_3 .features-text { text-align: left; }
}

@media (min-width: 481px) and (max-width: 768px) {
header .navbar .brand { margin-left: 15px; }
.nomobile { display: none !important; }
.container { width: 100% !important; padding: 0 15px; }
.search-bar .container { padding: 20px 0; }
.contact-bar .close, .search-bar .close { top: 30px; }
.container.container_relative { padding: 10px 0px 10px 0px !important; }
.container.container_relative.container_social { padding: 0 !important; }
.homeslider .container { padding: 0 !important; }
.synchro_new .homeslider.backgrounded { padding-bottom: 0 !important; }
.sbanner { height: 360px; }
.sbanner .slide { height: 360px; margin-top:0; }
/*.sbanner .slide.bx-clone { margin-top: -49px !important; }*/
.sbanner .slide .desc { max-width: 600px; width:90%; }
.sbanner .slide .desc h2 { font-size: 24px; text-align: center; }
.sbanner .slide .desc p { font-size: 16px; text-align: center; }
.sbanner .slide .desc a { font-size: 16px; }
.homeslider .bx-clone { transform: translate3d(0px, -52px, 0px); -webkit-transform: translate3d(0px, -52px, 0px); -moz-transform: translate3d(0px, -52px, 0px); -o-transform: translate3d(0px, -52px, 0px); -ms-transform: translate3d(0px, -52px, 0px); }
.points .pb:after { display: none; }
.points { width: 100%; float: left; background: url(../img/plus_icn_1.png) no-repeat 50% 50%; }
.points .box { margin-bottom: 30px; }
.cust_3 .slide p { font-size: 16px !important; line-height: 140% !important; text-align: center !important; }
.cust_3 a.cust-more-btn { font-size: 16px; padding: 10px 0; min-width: 130px; }
.home-2-page .aboutpg { background: url(../img/home_about_bg2.jpg) no-repeat 50% -3000px; }
.home-2-page .aboutpg p { font-size:18px !important; }
.aboutpg { background: url(../img/abt_bg_ipad.jpg) no-repeat 50% -500px; }
.aboutpg .row-fluid h4 { text-align: center !important; min-height: 1px; margin-top: 10px; }
.aboutpg .row-fluid p { font-size: 16px !important; text-align: center !important; }
.aboutpg .ul_container1,  .aboutpg .ul_container2,  .aboutpg .ul_container3 { padding: 0; }
.aboutpg .row-fluid { margin: 0; }
.aboutpg .row-fluid p { font-size: 16px !important; }
.aboutpg .ul_container1,  .aboutpg .ul_container2,  .aboutpg .ul_container3 { margin: 20px 0 0 0; }
.cust_2 { background-position: 50% -750px; }
.mleadership p { font-size: 16px !important; }
.mjourney .box.aug,  .mjourney .box.mob,  .mjourney .box.eff,  .mjourney .box.exc { margin: 0; }
.mjourney .box { margin-bottom: 30px; }
.mjourney .box h3 { width: 100%; }
.mjourney .box .ic { float: none; margin: 0 auto 20px auto; }
.mjourney .box ul { margin: 0 0 20px 30px; }
.mjourney .box ul:after { border: 0; }
.dd { border: 0; }
.synchro_new .backgrounded { padding: 20px 0 !important; }
.dtitle { font-size: 26px !important; line-height: 120% !important; }
.subtext { font-size: 20px !important; line-height: 120% !important; }
.cust_2 .testimonial { padding: 0 !important; font-size: 14px !important; }
.cust_2 ._cite-content strong { font-size: 18px !important; }
.cust_2 ._cite-content span { font-size: 16px !important; }
.cust_2 .cust-more-btn { font-size: 16px; padding: 10px 0; min-width: 130px; }
.newsnevent .box { margin: 0 0 30px 0; text-align: center; padding-bottom: 20px; }
.newsnevent .box .img { max-width: 360px; max-height: 200px; }
.newsnevent .box .seemore { text-align: center; }
.lblog .box { margin: 0 0 30px 0; text-align: center; }
.lblog .box .title { height: auto; }
.lblog .box .img { max-width: 360px; max-height: 145px; margin-bottom: 10px; }
.lblog .box .desc .date { margin: 0 0 10px 0; }
.lblog .box .desc .text { height: auto; margin-bottom: 10px; }
.lblog .box .readmore { width: 100%; }
.footer_copyright { width: 100%; }
.markchal .span3m { width: 32% !important; margin-bottom: 30px; }

footer .copyright li { float: none; margin: 0 4px 10px 4px; display: inline-block; }
div#product_footerlink { text-align: center; }
div#product_footerlink ul { margin: 0 0 30px 0; }
.footer_copyright { text-align: center; }
.socialright { width: 100%; margin-top: 0px; }
.home-core-offering { text-align: center; }
.home-core-offering .span3m { width: 49%; display: inline-block; margin: 0 0 30px 0; }
.tabs .t { width:33%; float:left; margin: 0 0 15px 0; }
.soimg { width:100% !important; margin-bottom: 20px; }
.socnt { width:100% !important; }

.jump_start_top .subhead { font-size: 16px; margin: 0 0 20px 0; }

.small_header h2 { font-size: 30px !important; margin: 0 0 10px 0 !important; }
.small_header .pull-right { max-width: 50%; }
.small_header p { font-size: 16px !important; text-align: center !important; }

.videomsg { margin-bottom: 30px; }
.testi_slider { margin-bottom: 30px; }
.testi_slider .video { width:100%; }
.testi_slider .video .img { width:180px; height: 180px; }
.testi_slider .video .img .imgin { width:180px; height: 180px; }
.testi_slider .quote { width:80%; margin:0 10%; }
.testi_slider .bx-controls .bx-pager { width:100%; }

.events-tabs .bx-wrapper { max-width: 320px !important; }
.events-tabs .nav-tabs li a i { font-size: 14px; }
.events-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }

.cust-tabs .bx-wrapper { max-width: 320px !important; }
.cust-tabs .nav-tabs li a i { font-size: 14px; }
.cust-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }

.gets-tabs .tab-content .resp_title { display: none !important; }
.gets-tabs .bx-wrapper { max-width: 320px !important; }
.gets-tabs .nav-tabs li a i { font-size: 14px; }
.gets-tabs .nav-tabs li a span { font-size: 14px; margin-left: 5px; }

.footermar .col { width: 100%; }

.mobispec .exppoints .col { width:32.5%; display: inline-block; float: none; vertical-align: top; }

.admin-bar header .navbar-fixed-top, .admin-bar header .search-bar, .admin-bar header .contact-bar { margin-top: 0px !important; }

.static_banner { height: 280px; }
.static_banner .desc h2 { font-size: 28px; }
.static_banner .desc p { text-align: center; font-size: 20px; }
.static_banner .desc .socnt h2 { text-align: center; }
.static_banner .desc .socnt p { text-align: center; }

.static_banner.toolsandplatform .desc h2 { font-size: 28px; }
.static_banner.toolsandplatform .desc p { text-align: center !important; font-size: 20px; }

.qmetry_6 { background-position: 50% 0 !important; }
.product_form { background-position: 50% 0 !important; }

.entstack { background-position: 50% 0 !important; background-attachment: inherit; }
.mobispec { background-position: 50% 0 !important; background-attachment: inherit; }
.moresuccess { background-position: 50% 0 !important; background-attachment: inherit; }
.moresuccess .bx-wrapper { max-width: 320px !important; }

.mobi_init { background-position: 50% 0 !important; background-attachment: inherit; }
.mobi_init .bx-wrapper { max-width: 320px !important; }

.marketleaders { background-position: 50% 0 !important; background-attachment: inherit; }
.marketleaders .bx-wrapper { max-width: 320px !important; }
.mobijourney .bx-wrapper { max-width: 320px !important; }

.helpindus .bx-wrapper { max-width: 320px !important; }

.methodology .box .title { font-size: 20px; }

.strat_mobi .strat { width:49.6%; }
.strat_mobi .strat .decs { width:100%; float:left; padding: 0 30px; }

.capabilitypg { background-position: 50% 0 !important; background-attachment: inherit; }
.home-2-page .aboutpg { background-position: 50% 0 !important; background-attachment: inherit; }
.home-2-page .backgrounded.cust_sayings { background-position: 50% 0 !important; background-attachment: inherit; }

.contact_pg .cdetails { margin: 0 0 20px 0; }
.contact_pg .cdetails .details { margin: 0 0 20px 0; }

.tier_one .dtitle { text-align: left; }
.tier_one .num img { max-width: 45px; }
.tier_one .desc { text-align: center; }
.tier_one .btns { text-align: center; }
.tier_one .btns .btn { margin: 0 10px 10px 0; font-size: 16px; }

.tier_two .dtitle { text-align: left; }
.tier_two .num img { max-width: 45px; }
.tier_two .desc { text-align: center; }
.tier_two .btns { text-align: center; }
.tier_two .btns .btn { margin: 0 10px 10px 0; font-size: 16px; }

.tier_three .dtitle { text-align: left; }
.tier_three .num img { max-width: 45px; }
.tier_three .desc { text-align: center; }
.tier_three .btns { text-align: center; }
.tier_three .btns .btn { margin: 0 10px 10px 0; font-size: 16px; }

.tier_four .dtitle { text-align: left; }
.tier_four .num img { max-width: 45px; }
.tier_four .desc { text-align: center; }
.tier_four .btns { text-align: center; }
.tier_four .btns .btn { margin: 0 10px 10px 0; font-size: 16px; }

.tier_five .dtitle { text-align: left; }
.tier_five .num img { max-width: 45px; }
.tier_five .desc { text-align: center; }
.tier_five .btns { text-align: center; }
.tier_five .btns .btn { margin: 0 10px 10px 0; font-size: 16px; }

.noparallax { background-attachment: inherit !important; background-size: cover !important; background-position-y: 0 !important; }

.mob_serv_list { width:98%; margin:0 1%; text-align: center; }
.mob_serv_list .box { width:30.4%; margin:0 1.2% 25px 1.2% !important; }

.cap_list { width:98%; margin:0 1%; text-align: center; }
.cap_list .box { width:30.4%; margin:0 1.2% 25px 1.2% !important; }

.int_map .int_loc_map .loc { display: none; }
.int_map .qualities { margin: -110px 0 0 0; }
.int_map .qualities .box { margin:20px 0 0 0; }

.pg_mob_features .box { margin:0 0 30px 0; }

.exp_mobi .experties .col { width:49.3%; margin:0 0 30px 0; }

.cont_integration { background: url("../img/cont_integration_mobile_bg.jpg"); background-attachment: inherit; background-size: cover; background-repeat: no-repeat; background-position: 50% 50%; }

.forrest_form .dtitle { font-size: 30px !important; }

.sexy_wheel { box-shadow: 0 0 0 8px rgba(255,255,255,0.2), 0 0 0 16px rgba(255,255,255,0.2); }

.slice label { font-size: 10px; line-height: 4.5; }
.unsel label { background-size: 87%; }

.current .name { font-size: 12px; line-height: 3; }

.mobopt .svg { top:15%; }
.current.mobopt .svg { top:11%; }
.current .svg { width:45px; top:14%; }
.current .svg svg { width:45px !important; }

.moreinfo { display: none; }

.circle .arrow { width:28px; height:17px; }
.circle .arrow1 { top: 5%; left: 31%; transform: rotate(-21deg); -webkit-transform: rotate(-21deg); -moz-transform: rotate(-21deg); -ms-transform: rotate(-21deg); -o-transform: rotate(-21deg); }
.circle .arrow2 { top:22% ; right: 8%; transform: rotate(57deg); -webkit-transform: rotate(57deg); -moz-transform: rotate(57deg); -ms-transform: rotate(57deg); -o-transform: rotate(57deg); }
.circle .arrow3 {top: 73%; right: 10%; transform: rotate(129deg); -webkit-transform: rotate(129deg); -moz-transform: rotate(129deg); -ms-transform: rotate(129deg); -o-transform: rotate(129deg); }
.circle .arrow4 {top: 89%; left: 32%; transform: rotate(197deg); -webkit-transform: rotate(197deg); -moz-transform: rotate(197deg); -ms-transform: rotate(197deg); -o-transform: rotate(197deg); }
.circle .arrow5 {top: 47%; left: 2%; transform: rotate(-92deg); -webkit-transform: rotate(-92deg); -moz-transform: rotate(-92deg); -ms-transform: rotate(-92deg); -o-transform: rotate(-92deg); }

.yourefforts.backgrounded { padding-bottom: 0 !important; }
.yourefforts .platforms .clients .col { width:49% !important }
.yourefforts .platforms .clients .col .img { height: 60px; }

.innovators { margin:0 !important; }
.innovators .box { margin: 0 0 40px 0; }

.circular_nav { max-width: 340px; }
.circular_nav .nav .center { width:100px; height:100px; }
.circular_nav .node { height: 60px !important; }
.circular_nav .nav .node:after { width:22%; right:40%; }
.circular_nav .node .cnav { width:60px !important; height:60px !important; }
.circular_nav .node .cnav .svg { margin: 0; }
.circular_nav .node .cnav .name { display: none; } 

.circular_nav .nav .center .sm { font-size: 12px; }
.circular_nav .nav .center .lg { font-size: 16px; }

.circular_nav .popover { max-width: 170px !important; min-width: 150px; width:100%; }

.awardnote { background-position:100% 0; }

.mobstra .svg { transform: translate(-51%,-10%) rotate(51deg); -webkit-transform: translate(-51%,-10%) rotate(51deg); -moz-transform: translate(-51%,-10%) rotate(51deg); -ms-transform: translate(-51%,-10%) rotate(51deg); -o-transform: translate(-51%,-10%) rotate(51deg); }
.mobtest .svg { transform: translate(-40%,-24%) rotate(-90deg); -webkit-transform: translate(-40%,-24%) rotate(-90deg); -moz-transform: translate(-40%,-24%) rotate(-90deg); -ms-transform: translate(-40%,-24%) rotate(-90deg); -o-transform: translate(-40%,-24%) rotate(-90deg); }
.mobauto .svg { transform: translate(-50%,-10%) rotate(-164deg); -webkit-transform: translate(-50%,-10%) rotate(-164deg); -moz-transform: translate(-50%,-10%) rotate(-164deg); -ms-transform: translate(-50%,-10%) rotate(-164deg); -o-transform: translate(-50%,-10%) rotate(-164deg); }
.mobopt .svg { transform:translate(-50%,25%) rotate(124deg); -webkit-transform:translate(-50%,25%) rotate(124deg); -moz-transform:translate(-50%,25%) rotate(124deg); -ms-transform:translate(-50%,25%) rotate(124deg); -o-transform:translate(-50%,25%) rotate(124deg); }

.current.mobstra .svg { transform: translate(-50%,20%) rotate(51deg); -webkit-transform: translate(-50%,20%) rotate(51deg); -moz-transform: translate(-50%,20%) rotate(51deg); -ms-transform: translate(-50%,20%) rotate(51deg); -o-transform: translate(-50%,20%) rotate(51deg); }
.current.mobdev .svg { transform:translate(-60%,20%) rotate(-20deg); -webkit-transform:translate(-60%,20%) rotate(-20deg); -moz-transform:translate(-60%,20%) rotate(-20deg); -ms-transform:translate(-60%,20%) rotate(-20deg); -o-transform:translate(-60%,20%) rotate(-20deg); }
.current.mobtest .svg { transform: translate(-50%,20%) rotate(-90deg); -webkit-transform: translate(-50%,20%) rotate(-90deg); -moz-transform: translate(-50%,20%) rotate(-90deg); -ms-transform: translate(-50%,20%) rotate(-90deg); -o-transform: translate(-50%,20%) rotate(-90deg); }
.current.mobauto .svg { transform: translate(-53%,20%) rotate(-164deg); -webkit-transform: translate(-53%,20%) rotate(-164deg); -moz-transform: translate(-53%,20%) rotate(-164deg); -ms-transform: translate(-53%,20%) rotate(-164deg); -o-transform: translate(-53%,20%) rotate(-164deg); }
.current.mobopt .svg { transform:translate(-50%,40%) rotate(124deg); -webkit-transform:translate(-50%,40%) rotate(124deg); -moz-transform:translate(-50%,40%) rotate(124deg); -ms-transform:translate(-50%,40%) rotate(124deg); -o-transform:translate(-50%,40%) rotate(124deg); }

.slice #ms_name .svg { height:20px; }
.slice #ms_dev .svg { height:24px; }
.slice #ms_test .svg { height:18px; }
.slice #ms_auto .svg { height:16px; }
.slice #ms_opti .svg { height:16px; }

.slice.current #ms_name .svg { height:18px; transform: translate(-50%,-130%) rotate(0deg); -webkit-transform: translate(-50%,-130%) rotate(0deg); -moz-transform: translate(-50%,-130%) rotate(0deg); -ms-transform: translate(-50%,-130%) rotate(0deg); -o-transform: translate(-50%,-130%) rotate(0deg); }
.slice.current #ms_dev .svg { height:22px; transform: translate(-50%,-110%) rotate(0deg); -webkit-transform: translate(-50%,-110%) rotate(0deg); -moz-transform: translate(-50%,-110%) rotate(0deg); -ms-transform: translate(-50%,-110%) rotate(0deg); -o-transform: translate(-50%,-110%) rotate(0deg); }
.slice.current #ms_test .svg { height:20px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }
.slice.current #ms_auto .svg { height:15px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }
.slice.current #ms_opti .svg { height:15px; transform: translate(-50%,-180%) rotate(0deg); -webkit-transform: translate(-50%,-180%) rotate(0deg); -moz-transform: translate(-50%,-180%) rotate(0deg); -ms-transform: translate(-50%,-180%) rotate(0deg); -o-transform: translate(-50%,-180%) rotate(0deg); }

.nice_title .box { font-size: 15px; }
.nice_title.orange .box:before { border:16px solid #F67107; }
.nice_title.orange .box:after { border:16px solid #F67107; }
.nice_title.yellow .box:before { border:16px solid #faa224; }
.nice_title.yellow .box:after { border:16px solid #faa224; }
.nice_title.green .box:before { border:16px solid #b4c860; }
.nice_title.green .box:after { border:16px solid #b4c860; }

.isapproach .subtext { font-size: 18px !important; line-height: 140% !important; text-align: center !important; margin: 0 0 30px 0; }

.static_banner.bnabout .desc img { max-height: 80px; }
.static_banner.bnabout .desc p { font-size: 16px; line-height: 140%; }

.pg_globalinfra .threepoints { margin: 0; }
.pg_globalinfra .threepoints .box { margin:0 0 20px 0; font-size: 18px; }

.pg_globalinfra .fivepoints { margin: 0; }
.pg_globalinfra .fivepoints .box { width:32%; }

.pg_mapbox .mapbox { margin:0; display: block; }
.pg_mapbox .mapbox .loc_map img { margin:0 0 70px 0; }
.pg_mapbox .mapbox .loc { display: none; width: 4px; height: 4px; border: 0; box-shadow: 0 0 0 #fff; -webkit-box-shadow: 0 0 1px #ffffff; -moz-box-shadow: 0 0 1px #fff; -ms-box-shadow: 0 0 1px #fff; -o-box-shadow: 0 0 1px #fff; background: #fff; }

.s_locations { display: none; width: 100%; float: left; z-index: 100; position: relative; margin: -120px 0 -80px 0; background: url(../img/img_map.png) no-repeat 50% 0%; background-size: 100%; height: 450px; }
.s_locations .panel { display: none; width:100%; float:left; margin: 0 0 10px 0; }
.s_locations .panel-heading { width:100%; float:left; background: rgba(255,255,255,0.1); }
.s_locations .panel-heading .panel-title { width:100%; float:left; margin: 0; padding: 10px; }
.s_locations .panel-heading .panel-title a { width:100%; float:left; margin: 0; color:#fff; font-size: 20px; }
.s_locations .panel-heading .panel-title a .arrow { float:right; }
.s_locations .panel-heading .panel-title a .arrow .fa { font-size:30px; color:#fff; }
.s_locations .panel-heading .panel-title a.collapsed .arrow .fa:before { content:"\f107"; }

.s_locations .panel-collapse { width:100%; float:left; }
.s_locations .panel-body { width:100%; float:left; background:rgba(255,255,255,1); padding: 10px; color:#333; }

.celebration .box { width:100%; margin:0 0 10px 0; }
.celebration .box .img { width:100%; background-size: cover !important; }
.celebration .box.type2 { width:98%; margin: 1%; }

.pg_form { background-position: 50% 0 !important; }
.pg_form .title { text-align: center; }
.pg_form p { text-align: center; }

.m-text-center { text-align: center; }

/*#fancybox-wrap{ max-width:80% !important; }*/
#fancybox-close { display: block !important; }

.pg_historytimeline { display: none; }

.joinus-tabs .bycategory .panel-heading { padding: 10px; }
.joinus-tabs .bycategory .panel-heading .panel-title { padding: 0; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic { width:30px; height: 30px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .ic svg { width:30px; height: 30px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .name { max-width: 200px; }
.joinus-tabs .bycategory .panel-heading .panel-title a .title { width:100%; font-size: 14px; line-height: 16px; text-oveflow:ellipses; overflow: hidden; white-space: nowrap; }

.joinus-tabs .bycategory .panel-body .joblist li .vacancy { width:100%; margin: 0 0 5px 0; }

.inspirepoints .activity { width:49.5%; margin: 0 0 40px 0; }
.inspirepoints .activity .img { height: 80px; }

.static_banner.toolsandplatform .desc .mid { display: inline-block; max-width: 90%; text-align: center; }
.static_banner.toolsandplatform .desc h2 { font-size: 34px; }

.corevalues .img { max-width:360px; max-height: 200px; }

.div1 .ri-grid ul li a { border:5px solid #fff; }
.div2 .ri-grid ul li a { border:5px solid #fff; }
.div3 .ri-grid ul li a { border:5px solid #fff; }
.div4 .ri-grid ul li a { border:5px solid #fff; }
.div5 .ri-grid ul li a { border:5px solid #fff; }
.div6 .ri-grid ul li a { border:5px solid #fff; }
.div7 .ri-grid ul li a { border:5px solid #fff; }

.tabscontainer .tabscont .tb .btn_center { margin-top: 20px; display: inline-block; }

.synchro_new .backgrounded.qmetry_7 { padding:20px 0 40px 0 !important; }
.qmetry_7 .bx-wrapper .bx-pager { bottom:10px !important; }
.qmetry_7 ._cite { width:100% !important; }
.customer_slider .testimonial { font-size: 20px !important; }

.product_form .col-xs-12 { text-align: center; }

.corevalues { text-align:center; }

.job-popup .header { text-align: center; }
.job-popup .header .left { width:100%; display: inline-block; margin: 0 0 20px 0; }
.job-popup .header .right { width:100%; display: inline-block; margin:0 0 20px 0; }
.job-popup .header .right .btn { float: none; }
.jobdetails .jobtitle { text-align: center; font-size: 20px; }
.jobdetails .jobcode { text-align: center; }
.jobdetails .joblocation { float: right; }
.jobfooter .left {width: 100%; display: inline-block;vertical-align: top;}
.jobfooter .left ul { text-align: center; width:100%; }
.jobfooter .left ul li { display: inline-block; float: none; }
.jobfooter .right { width: 100%; display: inline-block; }
.jobfooter .menu-footer-menu-in-bottom-container { float: none; display: inline-block; }
.jobfooter .menu-footer-menu-in-bottom-container ul { float: none; display: inline-block; text-align: center; }

.frm_getInTouch { text-align: center; }
#frm_contact { max-width: 485px; }

.static_banner.qmetrymobile { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.qmetrttestmanager { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.qas { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }
.static_banner.attesto { background-size: cover !important; background-position: 50% 0 !important; background-attachment:inherit !important; }

.home-sec-one .pl0 { padding-left: 15px !important; }

.o_locations .box .img { height: 180px; background-size: 96%; }

}


@media (min-width: 768px) and (max-width: 1024px) {
.nodesktop { display: none !important; }
header .navbar .brand { margin-left: 15px; }
.menu_mobile { padding-left: 15px !important; }
.left-con-menu { padding:10px 10px 10px 25px !important; }

.events-tabs .bx-wrapper { max-width: 620px !important; }
/*.moresuccess .bx-wrapper { max-width: 620px !important; }*/
.cust-tabs .bx-wrapper { max-width: 620px !important; }
.gets-tabs .bx-wrapper { max-width: 620px !important; }

.navbar-fixed-top { margin-bottom: 0 !important; }
.container { width: 100% !important; padding: 0 15px; }
.search-bar .container { padding: 50px 0; }
.container.container_relative { padding: 10px 0px 10px 0px !important; }
.container.container_relative.container_social { padding: 0 !important; }
.homeslider .container { padding: 0 !important; }
.homesliders .bx-viewport { height: 380px !important; }
.sbanner { height: 380px; }
.sbanner .slide { height: 380px; margin-top:0; }
/*.sbanner .slide.bx-clone { margin-top: -71px !important; }*/
.sbanner .slide .desc { width: 500px; }
.synchro_new .homeslider.backgrounded { padding: 0 !important; }

.cust_3 .slide p { text-align: center !important; }
.home-2-page .aboutpg p { font-size:24px !important; }
.aboutpg p { font-size: 16px !important; }
.aboutpg .ul_container1,  .aboutpg .ul_container2,  .aboutpg .ul_container3 { padding: 0; }
.aboutpg .row-fluid { margin: 0; }
.aboutpg .row-fluid p { font-size: 16px !important; }
.home-2-page .aboutpg { background: url(../img/home_about_bg2.jpg) no-repeat 50% -2500px; }
.aboutpg { background: url(../img/abt_bg_ipad.jpg) no-repeat 50% -300px; }
.cust_2 { background-position: 50% -750px; }
.mjourney .box h3 { width: 100%; font-size: 16px; }
.mjourney .box .ic { float: none; margin: 0 auto; }
.mjourney .box.aug { margin-top: 0; }
.mjourney .box.mob { margin-top: 0; }
.mjourney .box.eff { margin-top: 0; }
.mjourney .box.exc { margin-top: 0; }
.mjourney .box ul { margin: 10px 0 40px 20px; }
.synchro_new .backgrounded { padding: 30px 0 !important; }
.dtitle { font-size: 30px !important; line-height: 120% !important; }
footer .copyright li { margin: 0 4px; }
.home-core-offering { text-align: center; }
.home-core-offering .span3m { width: 49%; float: none; display: inline-block; margin: 0 0 30px 0; }

div#product_footerlink h3 { margin:30px 0 0 0; }
div#product_footerlink ul { margin: 0; }

.services .service-box { height: 160px; }
.services h3 { font-size: 20px; }
.home-core-offering .md_if_font { margin-bottom: 0; }
.md_if_font p { min-height: 1px; }
.small_header h2 { font-size: 30px !important; text-align: center; }
.small_header p { font-size: 20px; }

.videomsg .video .img { width: 170px; height: 170px; }
.videomsg .video .img .imgin { width: 170px; height: 170px; }

.testi_slider .video { width:40%; }
.testi_slider .quote { width:54%; margin:0; }
.testi_slider .video .img { width: 220px; height: 220px; margin-top: 70px; }
.testi_slider .video .img .imgin { width: 220px; height: 220px; }

.newsnevent .box .img { max-height: 145px; }

.ftr_newsletter { overflow: hidden; width:100%; float:left; }
.ftr_newsletter iframe { max-width: 220px; width: 220px; }
iframe#partner_form { height: 740px !important; }
/*.new_part_four div.row-fluid .box { height: auto !important; }*/
.footermar .col { width: 25%; }

.requesttrial .box { margin-top: 30px; }
.checkmarks { margin-bottom: 0; }
ul.qvsexcel { max-width: 64%; }

.sbanner .slide .desc h2 { font-size: 28px; }
.sbanner .slide.slide2 { background-position: 50% 0; }

.moresuccess .bx-wrapper { max-width: 620px !important; }
.mobi_init .bx-wrapper { max-width: 620px !important; }
.marketleaders .bx-wrapper { max-width: 620px !important; }
.mobijourney .bx-wrapper { max-width: 620px !important; }

.helpindus .bx-wrapper { max-width: 620px !important; }

.mobispec .exppoints .col { width:32.5%; display: inline-block; float: none; vertical-align: top; margin: 0 0 20px 0; }

.static_banner { height: 300px; }
.static_banner .desc h2 { font-size: 32px; }
.awardnote { height: 200px; }
.static_banner.qmetrymobile { background-position:50% 0px !important; background-size: cover !important; }

.capabilitypg { background-position: 50% 0 !important; background-attachment: inherit; }
.home-2-page .aboutpg { background-position: 50% 0 !important; background-attachment: inherit !important; }
.home-2-page .backgrounded.cust_sayings { background-position: 50% 0 !important; background-attachment: inherit; }

.methodology .box { padding:0; }

.contact_pg .cdetails { margin: 0 0 40px 0; }
.contact_pg .cdetails .details { margin: 0; }

.yourefforts.backgrounded { padding-bottom: 0 !important; }

.tier_one .btn { font-size: 16px; }
.tier_two .btn { font-size: 16px; }
.tier_three .btn { font-size: 16px; }
.tier_four .btn { font-size: 16px; }
.tier_five .btn { font-size: 16px; }

.bestpractice .box .title { font-size: 18px; }
.aboutpg .row-fluid h4 { font-size: 18px; }
.cust_sayings .testimonial { font-size: 18px !important; }

.mob_serv_list { width:98%; margin:0 1%; text-align: center; }
.mob_serv_list .box { width:30.4%; margin:0 1.2% 25px 1.2% !important; }

.cap_list { width:98%; margin:0 1%; text-align: center; }
.cap_list .box { width:30.4%; margin:0 1.2% 25px 1.2% !important; }

.yourefforts .platforms .clients .col { width:31% !important; }

.exp_mobi .experties .col { width:32.3%; margin:0 0 30px 0; }

.int_map .qualities { margin: -150px 0 0 0; }
.int_map .qualities .box { margin:20px 0 0 0; }

.strat_mobi .strat .decs { padding: 0 10px; }

.moreinfo { display: none; }

.innovators { margin:0 !important; }
.innovators .box { margin: 0 0 40px 0; }

.int_map .int_loc_map { margin:-90px 0 0 0; }
.int_map .int_loc_map .loc { display: block; width: 4px; height: 4px; border: 0; box-shadow: 0 0 0 #f67107; -webkit-box-shadow: 0 0 1px #f67107; -moz-box-shadow: 0 0 1px #f67107; -ms-box-shadow: 0 0 1px #f67107; -o-box-shadow: 0 0 1px #f67107; background: #f67107;  }

.static_banner.bnabout { height: 400px !important; }
.static_banner.bnabout .desc img { max-height: 80px; }
.static_banner.bnabout .desc p { max-width: 630px !important; font-size: 16px; }

.leaderteam .box { margin: 0 0 30px 0; }
.leaderteam .box .name { font-size: 16px; }
.leaderteam .box .designation { font-size: 14px; }

.pg_globalinfra .threepoints { margin: 30px 0; }
.pg_globalinfra .threepoints .box { font-size: 18px; }

.pg_globalinfra .fivepoints { margin: 0; }
.pg_globalinfra .fivepoints .box { width:31%; }

.loc_map_details { display: none; }
.pg_mapbox .mapbox .loc { display: none; }

/*.mapbox { display: none; }*/
.pg_mapbox .mapbox { margin:10px 0 -80px 0; display: block; }
.pg_mapbox .mapbox .loc_map img { margin:0; }
.pg_mapbox .mapbox .loc { display: none; width: 4px; height: 4px; border: 0; box-shadow: 0 0 0 #fff; -webkit-box-shadow: 0 0 1px #ffffff; -moz-box-shadow: 0 0 1px #fff; -ms-box-shadow: 0 0 1px #fff; -o-box-shadow: 0 0 1px #fff; background: #fff; }

.s_locations { display: none; width: 100%; float: left; z-index: 100; position: relative; margin: -120px 0 -80px 0; background: url(../img/img_map.png) no-repeat 50% 0%; background-size: 100%; height: 450px; }
.s_locations .panel { display: none; width:100%; float:left; margin: 0 0 10px 0; }
.s_locations .panel-heading { width:100%; float:left; background: rgba(255,255,255,0.1); }
.s_locations .panel-heading .panel-title { width:100%; float:left; margin: 0; padding: 10px; }
.s_locations .panel-heading .panel-title a { width:100%; float:left; margin: 0; color:#fff; font-size: 20px; }
.s_locations .panel-heading .panel-title a .arrow { float:right; }
.s_locations .panel-heading .panel-title a .arrow .fa { font-size:30px; color:#fff; }
.s_locations .panel-heading .panel-title a.collapsed .arrow .fa:before { content:"\f107"; }

.s_locations .panel-collapse { width:100%; float:left; }
.s_locations .panel-body { width:100%; float:left; background:rgba(255,255,255,1); padding: 10px; color:#333; }

.celebration .box { width:100%; margin:0 0 10px 0; }
.celebration .box .img { width:100%; background-size: cover !important; }
.celebration .box.type2 { width:98%; margin: 1%; }

.m-text-center { text-align: center; }

.pg_historytimeline { display: none; }
.pg_career_benefits { background-position: 50% 0 !important; }

.inspirepoints .activity { width:32%; margin: 0 0 40px 0; }
.inspirepoints .activity .img { height: 80px; }

.pg_gopalces { background-position: 50% 0 !important; background-size: cover !important; background-attachment: inherit !important; }    

.corevalues .img { max-height: 145px; }

.tabscontainer .tabnav .t { padding:10px 15px; }
.tabscontainer .tabnav .t a span { font-size: 16px; width: 75%; }

#whitepaper_1 { height: 375px; }

.qas_3 { text-align: center; }
.qas_3 .features-text { text-align: left; }

.o_locations .box .img { height: 200px; background-size: 96%; }

}
@media (min-width:768px) and (max-width: 768px){
.nomobile { display: none !important; }
.nodesktop { display: block !important; }

.resp_title { display: none !important; }
.get-result-tab { display: table !important; }

.nice_title .box { padding: 5px 0 6px 0; }
.closertocode .arrow_img .svg { max-height: 380px !important; }
.closertocode .graph_pair .svg.graph { width:100%; max-height: 500px; }
}
@media (min-width: 1025px) and (max-width: 1220px) {
.nodesktop { display: none !important; }
.container { width: 100% !important; padding: 0 15px; }
.search-bar .container { padding: 50px 0; }
header .navbar .brand { margin-left: 15px; }
.container.container_relative { padding: 10px 0px 10px 0px !important; }
.container.container_relative.container_social { padding: 0 !important; }
.homesliders .container { padding: 0 !important; }
.homesliders .bx-viewport { /*height: 410px !important;*/ }
.homesliders .sbanner .slide { height: 500px; }
.synchro_new .homeslider.backgrounded { padding: 0 !important; }

.tier_one .btn { font-size: 16px; }
.tier_two .btn { font-size: 16px; }
.tier_three .btn { font-size: 16px; }
.tier_four .btn { font-size: 16px; }
.tier_five .btn { font-size: 16px; }

.loc_map_details { max-width:600px; }
.loc_map_details .infobox .detail .title { font-size: 18px; }
.loc_map_details .infobox .detail .role { font-size: 14px; }
.loc_map_details .infobox .detail .desc { font-size: 14px; }

.loc_map_details .infobox .redirect a i { font-size: 20px; }

}
@media (min-width: 1200px) {
.nodesktop { display: none !important; }

}
@media (min-width: 1400px) {
/*.sbanner .slide.bx-clone { margin-top: -55px !important; }*/

.sbanner .slide.slide2 { background-position: 50% 0 !important; }
.sbanner .slide.slide2 { background-position: 50% -200px !important; }
.sbanner .slide.slide3 { background-position: 50% -50px !important; }
}
@media (min-width: 1025px) and (max-width: 1400px) {
.sbanner .slide { background-position: 60% 0 !important; }
.static_banner.qmetrymobile { background-position:50% 90px !important; }
}

@media (min-width: 480px) and (max-width: 767px){
.newsnevent .box .desc { height: auto !important; }
.mobile-application-development-page .defaultimg { background-position: 65% 0 !important; }
.mobile-testing-page .defaultimg { background-position: 65% 0 !important; }
.mobile-business-optimization-page .defaultimg { background-position: 65% 0 !important; }
.enterprise-qa-page .defaultimg { background-position: 65% 0 !important; }
.wearable-technologies-page .defaultimg { background-position: 65% 0 !important; }

.tp-caption.black_mobile1 .we_title { font-size: 26px !important; }
.homesliders .bx-viewport { height: 360px !important; }

.entstack { background-position: 50% 400px; }
}

@media (max-width: 480px){
.home-enable .headline { font-size: 24px !important; text-align: center !important; }
.lblog .box .readmore { float: none; }
.newsnevent .box .desc { height: auto !important; }
.mobile-enablement-page .f.headline { font-size: 20px; }
.factory { min-height: 80px; }
.factory img { max-height: 70px; }
.mobile-application-development-page .defaultimg { background-position: 70% 0 !important; }
.mobile-testing-page .defaultimg { background-position: 70% 0 !important; }
.mobile-business-optimization-page .defaultimg { background-position: 70% 0 !important; }
.enterprise-qa-page .defaultimg { background-position: 70% 0 !important; }
.wearable-technologies-page .defaultimg { background-position: 70% 0 !important; }

.tp-caption.black_mobile1 { left: 10px !important; }
.tp-caption.black_mobile3 { left: 10px !important; }

.tp-caption.black_mobile1 .we_title { font-size: 20px !important; }

a.tools_orange, a.tools_white { width:100%; text-align: center; margin:10px 0 !important; }
.tools_2 a.tools_orange, .tools_3 a.tools_orange { width:100%; text-align: center; margin:10px 0 !important; }
.tools_2 a.tools_white, .tools_3 a.tools_white { width:100%; text-align: center; margin:10px 0 !important; }

.ftr_newsletter iframe { max-width: 220px; float: none; display: inline-block; }
header .navbar .brand { margin-left: 15px; }

.entstack { background-position: 50% 400px; }
}

.webinar .fluid-width-video-wrapper { display: none; }

.backgrounded.fastFadeFromTop.cust_sayings { background: url("http://demo.weborion.in/infostretch/wp-content/uploads/2015/08/what_our_customers_saying_img.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% -1000px; background-size: cover; } 
.customers-page .backgrounded.fastFadeFromTop.cust_sayings1 { background: url("http://demo.weborion.in/infostretch/wp-content/uploads/2015/08/what_our_customers_saying_img.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover; }
.cust_sayings .client_logo { text-align:center; }
.cust_sayings1 .client_logo { text-align:center; }

a.cust-more-btn-new { display:block;  text-align:center; margin: 70px auto 0;  background-color: transparent; border: 1px solid #f67107; width: 200px; padding: 13.5px 0; border-radius: 3px; color: #f67107; font-size: 18px;  }
a:hover.cust-more-btn-new{     background-color: #f67107; color:#fff;}
a:hover.cust-more-btn{background-color: #f67107; color:#fff;}
a.cust-more-btn-new1 { display:inline-block; text-align:center; margin: 70px auto 0;  background-color: transparent; border: 1px solid #f67107; width: 200px; padding: 13.5px 0; border-radius: 3px; color: #f67107; font-size: 18px;  }
a:hover.cust-more-btn-new1{ background-color: #f67107; color:#fff;}

.cust_sayings .testimonial {border: none;z-index: 1;box-sizing: border-box; color: #000;font-size:22px;font-weight: 300;letter-spacing: -.04em;line-height: 1.5em;margin: 0 auto 15px;position: relative;text-align: center;width: 80%; padding:10px;}
.cust_sayings .testimonial:after {background: url("../img/quotes-sprite-gray.png") no-repeat 0 -50px;content:"";bottom: 0px;height: 50px;overflow: hidden;position: absolute;right: -33px;width: 50px;}
.cust_sayings .testimonial:before {background: url("../img/quotes-sprite-gray.png") no-repeat;content:"";left: -35px;overflow: hidden;position: absolute;top: 5px;width: 50px;height: 50px;}
.cust_sayings ._cite { width:100%; float:left; }

.cust_sayings1 .testimonial {border: none;z-index: 1;box-sizing: border-box; color: #000;font-size:22px;font-weight: 300;letter-spacing: -.04em;line-height: 1.5em;margin: 0 auto 15px;position: relative;text-align: center;width: 80%; padding:10px;}
.cust_sayings1 .testimonial:after {background: url("../img/quotes-sprite-gray.png") no-repeat 0 -50px;content:"";bottom: 0px;height: 50px;overflow: hidden;position: absolute;right: -33px;width: 50px;}
.cust_sayings1 .testimonial:before {background: url("../img/quotes-sprite-gray.png") no-repeat;content:"";left: -35px;overflow: hidden;position: absolute;top: 5px;width: 50px;height: 50px;}
.cust_sayings1 ._cite { width:100%; float:left; }

.qmetry_7 { padding: 30px 0 60px 0 !important; }
.qmetry_7 .bx-wrapper { width:100%; float:left; }
/*.qmetry_7 .bx-wrapper .bx-pager { left:0; bottom: 30px; }*/
.customer_slider .testimonial {border: none;z-index: 1;box-sizing: border-box; color: #000;font-size:26px;font-weight: 300;letter-spacing: -.04em;line-height: 1.5em;margin: 0 auto 15px;position: relative;text-align: center;width: 80%; padding:10px;}
.customer_slider .testimonial:after {background: url("../img/quotes-sprite-gray.png") no-repeat 0 -50px;content:"";bottom: 0px;height: 50px;overflow: hidden;position: absolute;right: -33px;width: 50px;}
.customer_slider .testimonial:before {background: url("../img/quotes-sprite-gray.png") no-repeat;content:"";left: -35px;overflow: hidden;position: absolute;top: 5px;width: 50px;height: 50px;}
.customer_slider ._cite { width:100%; float:left; }
.customer_slider .person-name{ font-size:16px; color:#000000; }
.customer_slider .designationtxt{ font-size:14px; color:#666666; }
.customer_slider .get-started-imp{ font-size: 12px; color: #999; padding-top:5px; }
.customer_slider .cname { font-style: italic; color: #f67107; font-size: 14px; line-height: 130%; margin: 0; font-weight: 400; text-align: center; }

.para-title{ font-size: 31.5px; text-align:center; margin-top:57px;}
.para-title h2{ color:#666;}
.para-title span{ color:#ff7302;}
.hover_icon_fsize{ font-size:28px;}
.info_get_ruselt{ padding: 30px 0px;}
.info_get_ruselt h2{ color:#666;}
.info_get_ruselt span{ color:#ff7302;}
.cust_sayings .bx-wrapper .bx-pager.bx-default-pager a{ background:#dfdfdf;}
.cust_sayings1 .bx-wrapper .bx-pager.bx-default-pager a{ background:#dfdfdf;}
.bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active {     background: #f67107 !important;}

.p-0{ padding:0px !important; }

#infostretchgetsResults ul.get-result-tab{ text-align: center; margin: 0 auto; width: 100%; max-width: 800px !important; display: table; }
#infostretchgetsResults ul.get-result-tab { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
#infostretchgetsResults ul{background-color:#fafafa; border-radius:16px; padding: 0px 15px;}
#infostretchgetsResults ul.get-result-tab li {border:none;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell;  }
#infostretchgetsResults ul.get-result-tab li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
#infostretchgetsResults ul.get-result-tab li a:hover, .cust-tabs .nav-tabs li a:focus, .cust-tabs .nav-tabs li a.ui-tabs-active{transition:none;box-shadow: none !important;background-color: transparent;}
#infostretchgetsResults ul.get-result-tab li a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
#infostretchgetsResults ul.get-result-tab li a i{color: #9da1a5; font-size: 16px; }
#infostretchgetsResults ul.get-result-tab li.ui-tabs-active {background-color: #fafafa;}
#infostretchgetsResults ul.get-result-tab li.ui-tabs-active  a span{color:#f67107;}
#infostretchgetsResults ul.get-result-tab li.ui-tabs-active  a i{color:#f67107;}
#infostretchgetsResults ul.get-result-tabli a:hover span {color: #f67107;}
#infostretchgetsResults ul.get-result-tab li a:hover i {color: #f67107;}
#infostretchgetsResults ul.get-result-tab li.first{}
#infostretchgetsResults ul.get-result-tab li.last{border-radius: 0 5px 5px 0;}
#infostretchgetsResults .slide .box {text-align:center;}
#infostretchgetsResults .slide .box img{ text-align:center; width:auto; height:90px; margin-bottom:20px; } 
#infostretchgetsResults .slide .box a{ color:#f67107;} 
#infostretchgetsResults .bx-wrapper .bx-next {    right: -50px !important;}
#infostretchgetsResults .bx-wrapper .bx-prev { left: -50px !important; }
#infostretchgetsResults .resp_title a { width:100%; float:left; }
#infostretchgetsResults .resp_title a.activelink i:before { content:"\f077"; }

#tabs_new ul.get-result-tab{ text-align: center; margin: 0 auto; width: 100%; max-width: 800px !important; display: table; }
#tabs_new ul.get-result-tab { text-align:center; margin: 0 auto; width:100%; max-width: 460px; display: table; }
#tabs_new ul{background-color:#fafafa; border-radius:16px; padding: 0px 15px;}
#tabs_new ul.get-result-tab li {border:none;padding: 0;min-height: 1px;margin: 0;border-left: none;float: none;display: inline-block;min-width: 95px; display: table-cell;  }
#tabs_new ul.get-result-tab li a{color: #9da1a5;font-size: 22px;padding: 10px 0;transition:none;box-shadow: none !important;background-color: transparent;}
#tabs_new ul.get-result-tab li a:hover, .gets-tabs .nav-tabs li a:focus, .gets-tabs .nav-tabs li a.ui-tabs-active{transition:none;box-shadow: none !important;background-color: transparent;}
#tabs_new ul.get-result-tab li  a span{vertical-align: middle;margin-left: 15px; font-size:16px; color: #9da1a5;}
#tabs_new ul.get-result-tab li  a i{color: #9da1a5; font-size: 16px; }
#tabs_new ul.get-result-tab li.ui-tabs-active {background-color: #fafafa;}
#tabs_new ul.get-result-tab li.ui-tabs-active  a span{color:#f67107;}
#tabs_new ul.get-result-tab li.ui-tabs-active  a i{color:#f67107;}
#tabs_new ul.get-result-tabli a:hover span {color: #f67107;}
#tabs_new ul.get-result-tab li a:hover i {color: #f67107;}
#tabs_new ul.get-result-tab li.first{}
#tabs_new ul.get-result-tab li.last{border-radius: 0 5px 5px 0;}
#tabs_new .slide .box {text-align:center;}
#tabs_new .slide .box img{ text-align:center; width:auto; height:90px; margin-bottom:20px; } 
#tabs_new .slide .box a{ color:#f67107;} 
#tabs_new .bx-wrapper .bx-next {    right: -50px !important;}
#tabs_new .bx-wrapper .bx-prev { left: -50px !important; }

.cust-quote-popup { display:none;}
.fancybox-content p{ text-align: center; width: 80%; margin: 10px auto;}
.info_get_ruselt .cust-tabs .tab-content .resp_title {padding: 10px 20px; background-color:#fafafa; margin:5px 0px; border-radius:20px; border:1px solid #f3f2f2; }
.info_get_ruselt .gets-tabs .tab-content .resp_title {padding: 10px 20px; background-color:#fafafa; margin:5px 0px; border-radius:20px; border:1px solid #f3f2f2; }
.cust_saying_slider_wrap .cname { font-style: italic; color: #f67107; font-size: 14px; line-height: 130%; margin: 0; font-weight: 400; text-align: center; }
a.cust-more-btn-more { display:block;  text-align:center; margin: 50px auto 0;  background-color: transparent; border: 1px solid #f67107; width: 200px; padding: 13.5px 0; border-radius: 3px; color: #f67107; font-size: 18px;  }
a.cust-more-btn2 { display: inline-block; margin: 40px 0 0 0; background-color: transparent; border: 1px solid #f67107; width: 200px; padding: 13.5px 0; border-radius: 3px; color: #f67107; font-size: 18px; }

#header { z-index:1501; position:fixed; width:100%;  }
.overlay{ position:fixed; width:100%; height:100%; background-color:#333; opacity:0.5; z-index:1500;}  
.display-one{ display:block;}

.display-none{ display:none;}
.pull-left{ float:left !important;}
.pull-right{ float:right !important;}
.suppa_submenu { border-radius: 0px !important ; border-left:none !important; border-right:none !important; border-bottom:3px solid #f67107 !important; -webkit-box-shadow:inset 0 10px 10px -10px rgba(212, 212, 212, 0.8) !important; -moz-box-shadow: inset 0 10px 10px -10px rgba(212, 212, 212, 0.8) !important; box-shadow: inset 0 10px 10px -10px rgba(212, 212, 212, 0.8) !important; background:#fff !important; }
.suppa_submenu .col-md-6 {  box-shadow:0 0px 0px rgba(0, 0, 0, 0.055) !important; -webkit-box-shadow:0 0px 0px rgba(0, 0, 0, 0.055) !important; -moz-box-shadow:0 0px 0px rgba(0, 0, 0, 0.055) !important; -ms-box-shadow:0 0px 0px rgba(0, 0, 0, 0.055) !important; -o-box-shadow:0 0px 0px rgba(0, 0, 0, 0.055) !important; }
.suppa_menu_4 .suppa_submenu,  .suppa_menu_5 .suppa_submenu,  .suppa_menu_6 .suppa_submenu, { border-radius: 0px !important ; border-left:none !important; border-right:none !important; border-bottom:3px solid #f67107 !important; }
.suppa_menu_7 .suppa_submenu{border-radius: 10px 0 10px 10px !important;}
div.menu-left-buton{ width: 90%; height: 52px; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; background-color: #fff; border: solid 1px #dfdfdf; margin: 0px auto 15px; display: table; text-align: center; padding-top: 10px; }
div.menu-right-buton{ width: 280px; height: 52px; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; background-color: #f67107; font-size:14px; color:#fff; margin: 0px auto; border:none; display: table; text-align: center; line-height: 52px; }
div.menu-right-buton:hover{ opacity: 0.8; }
.button-a{ float:left; width:100%;}
div.menu-left-buton i{ font-size:32px; vertical-align:middle; margin-right:10px; color:#f67107; }
div.menu-left-buton span{ font-size:14px; vertical-align:middle; margin:0px; color:#000000; }
div.menu-right-buton span{ font-size:14px; vertical-align:middle; margin:10px; color:#fff; }

.menubg-service{ background: #f9f9f9 url(../img/menu-bg-service.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; border-right: 1px solid #e7e7e7 !important; height:305px; margin-top:4px;}
.menubg-tool-platform{ background: #f9f9f9 url(../img/menu-bg-tool-platform.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; border-right: 1px solid #e7e7e7 !important;  height:305px; margin-top:4px;}
.menubg-tool-customers{ background: #f9f9f9 url(../img/menu-bg-customers.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; border-right: 1px solid #e7e7e7 !important;  height:305px; margin-top:4px;}
.menubg-partners{ background: #f9f9f9 url(../img/menu-partner-bg.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; border-right: 1px solid #e7e7e7 !important;  height:305px; margin-top:4px;}
.menubg-resource{ background: #f9f9f9 url(../img/menu_resource-bg.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; border-right: 1px solid #e7e7e7 !important;  height:305px; margin-top:4px;}
.menubg-about{ background: #f9f9f9 url(../img/about-menu-bg.jpg) no-repeat 0px 0px;  background-position: center; background-size: 90%; margin-top:4px; border-right: 1px solid #e7e7e7 !important; height:305px; margin-top:4px; }
.left-menu-height{}
.right-menu-height{}
.menu_mobile { padding: 20px 10px !important; margin: 0 !important; border: 0 !important; width: 100%; float: left; /*box-shadow:1px 0px 0px 0px #ccc; -webkit-box-shadow:1px 0px 0px 0px #ccc; -moz-box-shadow:1px 0px 0px 0px #ccc; -ms-box-shadow:1px 0px 0px 0px #ccc; -o-box-shadow:1px 0px 0px 0px #ccc*/; }

.partner-divider{ background: url(../img/partner-div.jpg) repeat-x  0px 0px; height:2px; margin:25px 0px 15px; }
.about-contact-bg{ background-color:#f9f9f9; height:347px; }
.view-culture{height:347px;}
.suppa_menu{ line-height: 19px !important; } 
.suppa_menu a[title="getstarted"] { width: 146px; height: 42px; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; background-color: #f67107;  text-align:center; }
.suppa_menu a[title="getstarted"] span { font-size: 14px !important; text-transform: uppercase !important; color: #fff !important; padding-top:11px !important; }
.suppa_menu .suppa_top_level_link.suppa_menu_position_left{ line-height: 43px; -webkit-border-radius: 4px !important; -moz-border-radius: 4px !important; border-radius: 4px !important; }

.suppa_menu .suppa_top_level_link.suppa_menu_position_right { width: 136px; height: 42px !important; line-height: 18px; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; background-color: #f67107;  text-align:center; border:1px solid transparent; }
.suppa_menu .suppa_top_level_link.suppa_menu_position_right:hover { background:transparent !important; border:1px solid #f67107 !important; }
.suppa_menu .suppa_top_level_link.suppa_menu_position_right:hover span { color:#f67107 !important; }
.pull-right{ float:right !important;}

.suppa_menu.suppa_menu_7 .suppa_top_level_link.suppa_menu_position_right { width: 146px; height: 42px !important; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; background-color: #f67107;  text-align:center; border:1px solid transparent; } 
.suppa_menu.suppa_menu_7 .suppa_top_level_link.suppa_menu_position_right:hover { background:transparent !important; border:1px solid #f67107 !important; }
.suppa_menu.suppa_menu_7 .suppa_top_level_link.suppa_menu_position_right:hover span { color:#f67107 !important; }

#searchform .searchButton{ width:auto; padding: 0 15px; height: 42px !important; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px;  background-color: rgba(0, 0, 0, 0.5);  text-align:center; border:1px solid transparent; color: #fff;} 
#searchform .searchButton:hover { background:#f67107 !important; border:1px solid transparent !important; }

.row-fluid .my-searchlist:last-child{ border: none; }

.search-results .content, .search-results .search_newpg .content { padding: 0 0 30px; }
.search-results .search_newpg .my-searchlist { border-bottom: 1px solid #CECECE; padding-bottom: 10px; margin: 0 0 10px;font-size: 14px; }
.search-results .my-searchlist h4 { color: #ff7302; padding: 0 0 20px; margin: 0; font-size: 23px; text-transform: capitalize; font-weight: 300; }

.noresult_search input.input-inverse[type="text"] { border: 1px solid #dfdfdf; height: 42px !important; margin: 0; padding-left: 5px; color: #333; }

ul.page-numbers { list-style: none; margin: 0; border-top:1px solid #fff; }
ul.page-numbers li { display: block; float: left; margin: 0 4px 4px 0; text-align: center; }

.page-numbers a, .page-numbers span {border: 1px solid #ddd; color: #888; cursor: pointer; display: block; font-size: 18px; font-weight: 400; height: 35px; line-height: 35px; width: 35px; padding: 0; text-decoration: none; border-radius: 50%; color: #f67107; }
.page-numbers a i { color: #f67107 !important; display: block; font-size: 12px !important; margin-top: 11px; padding: 0 !important; text-align: center; }
.page-numbers a:hover i { color: #fff !important; }
.page-numbers a span { padding: 0; }
.page-numbers a:hover, .page-numbers.current, .page-numbers.current:hover { color: #fff;  text-decoration: none; background: #f67107; border-color: #f67107; }
.page-numbers:hover { text-decoration: none }
.page-numbers:after { content: "."; display: block; clear: both; visibility: hidden; line-height: 0; height: 0; }

.suppa_submenu i { color:#f67107; margin-right:10px; }
.menu_mobile a:hover { padding-left:20px; }
.menu_mobile .sub:hover { padding-left:35px; }
.left-menu-height-6 { height: 305px; }
.about-button-pos { position: absolute; bottom: 0px; left: 10%; }
.view-culture-button-pos{ position: absolute; bottom: 0px; left: 5%; }
.cust_slider_cont .bx-wrapper .bx-controls-direction a{ top:100%; margin-top: -35px;}
.cust_slider_cont .bx-controls { margin-top: 0px; float: left; width: 100%; position: relative; margin-top:0px;}
.cust_slider_cont .bx-controls .bx-pager { width: 100%; float: none; padding-top:10px; }
.cust_slider_cont blockquote:before { background: url("../img/quotes-sprite-gray.png") no-repeat; content: ""; left: -38px; overflow: hidden; position: absolute; top: -10px; width: 42px; height: 33px; background-size: 33px; }
.cust_slider_cont blockquote:after { background: url("../img/quotes-sprite-gray.png") no-repeat -10px -67px; content: ""; right: -31px; overflow: hidden; position: absolute; bottom: -10px; width: 50px; height: 33px; background-size: 32px; background-position: 10px -36px; }
.cust_slider_cont .cust-head-text { font-size: 20px; color: #666666; font-weight: 300; margin-top: 30px; text-align: left; }
.cust_slider_cont .cust-head-text a { color: #f67107; text-decoration: none; cursor:pointer; }
.cust_slider_cont blockquote { width: 75%; float: left; border: 0; padding: 15px 0 0 0; font-size: 18px; font-weight: 300; font-style: italic; color: #000; line-height: 25px; margin: 0 5% 20px 17%; }

.fbox-inline { max-width: 100%; padding: 10px; display: inline-block; }

.get_result_slider { text-align: center; }
.get_result_slider .bx-viewport { max-width: 980px !important; margin: 0 auto; }
.get_result_slider .slide { text-align: center; }
.get_result_slider .bx-wrapper img { display: inline-block; }
.get_result_slider .bx-wrapper .bx-controls-direction a { width: 38px; height: 38px; margin-top: -19px; background: url('../img/slider_nav_arrows.png') no-repeat -1px 0; }
.get_result_slider .bx-wrapper .bx-prev:hover { background-position: -1px -51px !important; }
.get_result_slider .bx-wrapper .bx-next { background-position: -52px -1px !important; }
.get_result_slider .bx-wrapper .bx-next:hover { background-position: -52px -51px !important; }
.get_result_slider .bx-wrapper .bx-pager { bottom: -40px; }
.get_result_slider .bx-wrapper .bx-pager .bx-pager-item a { background: #dfdfdf; }
.get_result_slider .bx-wrapper .bx-pager .bx-pager-item a.active { background: #f67107; }

.get_result_slider_home { text-align: center; }
.get_result_slider_home .bx-viewport { max-width: 980px !important; margin: 0 auto; }
.get_result_slider_home .slide { text-align: center; }
.get_result_slider_home .bx-wrapper img { display: inline-block; }
.get_result_slider_home .bx-wrapper .bx-controls-direction a { width: 38px; height: 38px; margin-top: -19px; background: url('../img/slider_nav_arrows.png') no-repeat -1px 0; }
.get_result_slider_home .bx-wrapper .bx-prev:hover { background-position: -1px -51px !important; }
.get_result_slider_home .bx-wrapper .bx-next { background-position: -52px -1px !important; }
.get_result_slider_home .bx-wrapper .bx-next:hover { background-position: -52px -51px !important; }
.get_result_slider_home .bx-wrapper .bx-pager { bottom: -48px; }
.get_result_slider_home .bx-wrapper .bx-pager .bx-pager-item a { background: #dfdfdf; }
.get_result_slider_home .bx-wrapper .bx-pager .bx-pager-item a.active { background: #f67107; }

.home-2-page .backgrounded.cust_sayings { background: url("http://demo.weborion.in/infostretch/wp-content/uploads/2015/08/what_our_customers_saying_img.jpg"); background-attachment: fixed !important; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover; } 
.cust_saying_slider_wrap { width:100%; float:left; }
.cust_sayings .cust-more-btn-new { display: inline-block; }

.homebanner_text { width:80%; max-width: 800px; margin:0 auto; text-align: center; }
.homebanner_text h2 { font-size:40px; line-height: 120% !important; margin: 0 0 10px 0 !important; color:#fff !important; font-weight: 700 !important; }
.homebanner_text p { font-size:22px; line-height: 120% !important; font-style: italic; color:#fff !important; }

.backgrounded.fastFadeFromTop.home_about { background: url("../img/home_about_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% -3000px; background-size: cover; }
.home_about h2 { color:#fff !important; }
.home_about .sub_title { color:#fff !important; }
.home_about p { color:#fff !important; }
.sub_title { font-size: 28px; line-height: 120%; }

/*.capabilitypg { text-align: center; background: url("../img/capability_bg.png"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% -2500px; background-size: cover; position: relative; }*/
.capabilitypg { text-align: center; background: url("../img/home_about_bg2.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover; position: relative; }
.capability_area { width:100%; float:left; }
.capability_area .img { max-width:519px; max-height: 519px; display: inline-block; position: relative; }
.capability_area .img img { width:100%; }
.capability_area .img .pin { position: absolute; width:28px; height: 28px; background: url(../img/capability_dot.png) no-repeat 50% 0; transition:all 0.0ms ease; -webkit-transition:all 0.0ms ease; -ms-transition:all 0.0ms ease; -moz-transition:all 0.0ms ease; }
.capability_area .img .pin:hover { background-position: 50% 100%; }
.capability_area .img .pin1 { top:15.5%; left:20.5%; }
.capability_area .img .pin2 { top:15%; left:72.5%; }
.capability_area .img .pin3 { top:60.5%; left:86.5%; }
.capability_area .img .pin4 { top:88.5%; left:46%; }
.capability_area .img .pin5 { top:60.5%; left:8.5%; }
.capability_area .img .pin .tooltip { display: block; }
.capabilitypg .dtitle { color:#fff; }
.capabilitypg .subtext { color:#fff; }

.bestpractice .box { margin-bottom: 30px; text-align: center; }
.bestpractice .box .img { margin-bottom: 10px; }
.bestpractice .box .title { font-weight: 400; color:#000; font-size: 22px; }
.bestpractice .box .text { text-align: center; }
.bestpractice .box .more { color:#F67107; }
.bestpractice .box .more:hover { color:#F67107; }

.innovators { width:100%; float:left; margin: 20px 0 40px 0; }
.innovators .box { width:100%; float:left; text-align: center; padding: 0 30px; }
.innovators .box .img { width:100%; float:left; display: table; height: 70px; margin: 0 0 20px 0; }
.innovators .box .img .t { width:100%; height: 100%; display: table-cell; vertical-align: middle; }
.innovators .box .desc { width:100%; float:left; }

.listt { width: 96%; float: left; list-style-position: inside; text-indent: -17px; padding: 0; }
.listt li { width: 100%; float: left; margin: 0 0 15px 0; }
.listt li span { color: #666; }

.isapproach { text-align: center; background: url("../img/is_approach_bg.jpg"); background-attachment: fixed; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover; position: relative; }
.isapproach .subtext { width:100%; float:left; text-align: left; font-size: 20px; line-height: 170%; }
.isapproach .img { margin-bottom: -30px; }


@media (min-width:768px) and (max-width:990px){
#frm_product { height: 690px; }
#frm_product_a { height: 720px; }

.frm_getInTouch { text-align: center; }
#frm_contact { max-width: 485px; }

}

@media (min-width:990px) and (max-width:1110px){
#getstarted { width:530px !important; height: 510px; }
#frm_contact { width:530px !important; height: 510px; }
#frm_product { width:530px !important; height: 430px; }
#frm_product_a { width:530px !important; height: 450px; }
}

@media (max-width:990px){
.o_locations .dtitle.t1 { display: none; }
.o_locations .dtitle.t2 { display: block; }
}

@media (min-width:1025px){
.sbanner .slide.slide4 { background-position: 50% 40px !important; }
.sbanner .slide.slide4 .desc { position: absolute; text-align: center; max-width: 1200px; width: 95%; top: 50%; left: 50%; z-index: 10; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); -moz-transform: translate(-50%, -50%); -o-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); }
.sbanner .slide.slide3 .desc { max-width: 1150px; }
.sbanner .slide.slide3 .desc h2 { max-width: 800px; margin:0 auto 10px auto !important; }
}

@media (max-width: 768px) and (min-width: 481px){
div#product_footerlink { text-align: center; width: 100% !important; }
/*.sbanner .slide.bx-clone { margin-top: -55px !important; }*/
}
</style>
</head>
<body>
<div class="container">
	<%@ include file = "Menu.jsp" %>
	</div>
	<br><br>
	<header role="banner">
  <h1>Admin Panel</h1>
 </header>
 <div class="circular_nav">
			<ul class="nav">
				<li class="center"><div class="to"><div class="t"><div class="sm">Current</div><div class="lg">Active</div><div class="sm">Schedule</div></div></div></li>
				<li data-placement="right" data-trigger="hover" data-toggle="popover" data-title="one-cont" id="one" class="node one" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinOneContent">
							<div>
								<h2 class="yellow">App Performance</h2>
								<ul>
									<li>CPU Usage Testing</li>
									<li>Network Usage</li>
									<li>Page Render Time or Activity Render Time</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="33px" height="33px" viewBox="0 0 33 33" enable-background="new 0 0 33 33" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M2.38,32.666c-0.552,0-1-0.447-1-1V1.334c0-0.552,0.448-1,1-1s1,0.448,1,1v30.332    C3.38,32.219,2.932,32.666,2.38,32.666z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M31.666,31.62H1.334c-0.552,0-1-0.447-1-1s0.448-1,1-1h30.332c0.553,0,1,0.447,1,1    S32.219,31.62,31.666,31.62z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.519,14.145H4.472c-0.414,0-0.75-0.336-0.75-0.75s0.336-0.75,0.75-0.75h1.047    c0.414,0,0.75,0.336,0.75,0.75S5.933,14.145,5.519,14.145z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.519,11.511H4.472c-0.414,0-0.75-0.336-0.75-0.75s0.336-0.75,0.75-0.75h1.047    c0.414,0,0.75,0.336,0.75,0.75S5.933,11.511,5.519,11.511z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.519,8.919H4.472c-0.414,0-0.75-0.336-0.75-0.75s0.336-0.75,0.75-0.75h1.047    c0.414,0,0.75,0.336,0.75,0.75S5.933,8.919,5.519,8.919z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.519,6.286H4.472c-0.414,0-0.75-0.336-0.75-0.75s0.336-0.75,0.75-0.75h1.047    c0.414,0,0.75,0.336,0.75,0.75S5.933,6.286,5.519,6.286z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.519,3.652H4.472c-0.414,0-0.75-0.336-0.75-0.75s0.336-0.75,0.75-0.75h1.047    c0.414,0,0.75,0.336,0.75,0.75S5.933,3.652,5.519,3.652z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M8.354,26.852c-1.819,0-3.299-1.48-3.299-3.3c0-1.818,1.48-3.298,3.299-3.298    c1.818,0,3.297,1.479,3.297,3.298C11.652,25.371,10.173,26.852,8.354,26.852z M8.354,22.055c-0.827,0-1.5,0.671-1.5,1.497    c0,0.827,0.673,1.499,1.5,1.499c0.826,0,1.498-0.672,1.498-1.499C9.852,22.726,9.18,22.055,8.354,22.055z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M14.104,21.101c-1.819,0-3.298-1.48-3.298-3.299s1.479-3.297,3.298-3.297s3.299,1.479,3.299,3.297    S15.923,21.101,14.104,21.101z M14.104,16.304c-0.826,0-1.499,0.671-1.499,1.498s0.672,1.498,1.499,1.498s1.499-0.672,1.499-1.498    S14.931,16.304,14.104,16.304z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M28.977,19.661c-1.82,0-3.301-1.48-3.301-3.299c0-1.819,1.48-3.298,3.301-3.298    c1.817,0,3.297,1.479,3.297,3.298C32.273,18.181,30.794,19.661,28.977,19.661z M28.977,14.864c-0.827,0-1.5,0.672-1.5,1.499    s0.673,1.498,1.5,1.498c0.825,0,1.496-0.672,1.496-1.498S29.802,14.864,28.977,14.864z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M20.34,27.337c-1.818,0-3.298-1.48-3.298-3.299s1.479-3.299,3.298-3.299c1.82,0,3.301,1.48,3.301,3.299    S22.16,27.337,20.34,27.337z M20.34,22.54c-0.826,0-1.497,0.672-1.497,1.498s0.671,1.498,1.497,1.498c0.827,0,1.5-0.672,1.5-1.498    S21.167,22.54,20.34,22.54z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M9.787,22.54c-0.23,0-0.46-0.088-0.636-0.264c-0.352-0.352-0.352-0.922,0-1.273l2.404-2.404    c0.352-0.352,0.921-0.352,1.272,0s0.352,0.922,0,1.273l-2.404,2.404C10.248,22.452,10.018,22.54,9.787,22.54z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M18.907,23.025c-0.23,0-0.461-0.088-0.637-0.264l-2.889-2.89c-0.352-0.352-0.352-0.922,0-1.273    s0.921-0.352,1.272,0l2.89,2.89c0.352,0.352,0.352,0.922,0,1.273C19.368,22.938,19.138,23.025,18.907,23.025z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M22.259,23.499c-0.23,0-0.461-0.088-0.637-0.264c-0.352-0.352-0.352-0.922,0-1.273l4.799-4.797    c0.352-0.352,0.922-0.352,1.273,0s0.352,0.922,0,1.273l-4.799,4.797C22.72,23.411,22.489,23.499,22.259,23.499z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">App<br>Performance</div></div></div></div>
				</li>
				<li data-placement="right" data-trigger="hover" data-toggle="popover" data-title="two-cont" id="two" class="node two" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinTwoContent">
							<div>
								<h2 class="yellow">Usability</h2>
								<ul>
									<li>User Experience</li>
									<li>Competitive Analysis</li>
									<li>Expert Review</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="19.73px" height="30.207px" viewBox="0 0 19.73 30.207" enable-background="new 0 0 19.73 30.207" xml:space="preserve" class="svg replaced-svg">
<g>
	<path fill="#BBBBBB" d="M16.021,5.363H0.75C0.336,5.363,0,5.027,0,4.613s0.336-0.75,0.75-0.75h15.271c0.414,0,0.75,0.336,0.75,0.75   S16.435,5.363,16.021,5.363z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M8.385,3.266H6.476c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h1.909c0.276,0,0.5,0.224,0.5,0.5   S8.661,3.266,8.385,3.266z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M10.294,3.266H9.816c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h0.478c0.276,0,0.5,0.224,0.5,0.5   S10.57,3.266,10.294,3.266z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M9.129,29.73L8.65,28.676H2.375c-0.481,0-0.875-0.392-0.875-0.874V24.45h5.236l-0.675-1.492l0.002-0.008   H1.5V2.374C1.5,1.892,1.894,1.5,2.375,1.5h12.02c0.482,0,0.876,0.392,0.876,0.874V15.81l0.646,1.063l0.854,0.631V2.374   C16.771,1.065,15.704,0,14.395,0H2.375C1.065,0,0,1.065,0,2.374v25.428c0,1.309,1.065,2.374,2.375,2.374h7.388L9.129,29.73z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M18.266,30.165l-1.329-0.387l0.468-1.581c1.223-2.363,0.844-5.686,0.84-5.719l-0.006-0.102   c0.035-0.396-0.031-0.659-0.2-0.861c-0.351-0.419-1.043-0.498-1.05-0.499l-0.458-0.043l-0.14-0.43   c-0.103-0.297-0.243-0.485-0.414-0.55c-0.164-0.059-0.461-0.018-0.718,0.113l-0.651,0.38l-0.311-0.704   c-0.09-0.197-0.242-0.448-0.451-0.5c-0.234-0.056-0.598,0.098-0.808,0.247l-0.196,0.139l-0.41-0.033   c-0.547-0.163-0.553-0.229-0.843-3.735c-0.061-0.734-0.158-1.903-0.224-2.405l-0.07-0.277c-0.015-0.056-0.075-0.144-0.14-0.215   c-0.036,0.117-0.074,0.295-0.098,0.552c0.002,4.923-0.151,8.196-0.153,8.218l-0.02,0.491l-0.488,0.132   c-0.094,0.025-0.331,0.218-0.473,0.384c-0.747,0.826-0.521,1.311-0.511,1.33c0.876,1.534,2.659,4.514,2.861,4.849l0.258,0.43   l-1.144,0.744l-0.552-0.889c-0.562-0.94-1.897-3.179-2.624-4.453c-0.08-0.141-0.717-1.387,0.677-2.927   c0.106-0.119,0.351-0.376,0.653-0.572c0.043-1.122,0.139-4.006,0.139-7.798c0.138-1.588,0.791-1.949,1.314-1.98   c0.001,0,0.003,0,0.004,0c0.809,0,1.423,0.717,1.605,1.266c0.12,0.246,0.167,0.672,0.359,3.008l0.018,0.214   c0.055,0.647,0.117,1.402,0.175,1.965c0.312-0.083,0.687-0.105,1.022-0.022c0.407,0.102,0.762,0.345,1.044,0.712   c0.36-0.091,0.845-0.098,1.238,0.047c0.464,0.176,0.823,0.516,1.074,1.014c0.427,0.104,1.086,0.347,1.562,0.911   c0.399,0.483,0.576,1.073,0.526,1.755c0.079,0.734,0.325,3.906-0.947,6.333L18.266,30.165z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M18.283,30.207l-1.388-0.409l0.478-1.61c1.215-2.347,0.853-5.578,0.836-5.714l-0.004-0.037l0.001-0.084   c0.033-0.364-0.03-0.621-0.194-0.816c-0.284-0.342-0.841-0.468-1.031-0.487l-0.468-0.038l-0.152-0.45   c-0.069-0.2-0.194-0.458-0.391-0.528c-0.259-0.102-0.578,0.042-0.694,0.104l-0.683,0.397l-0.329-0.735   c-0.086-0.194-0.231-0.437-0.427-0.484c-0.305-0.073-0.669,0.16-0.765,0.232l-0.294,0.225l-0.354-0.104   c-0.574-0.176-0.585-0.311-0.871-3.766l-0.012-0.141c-0.067-0.814-0.149-1.804-0.211-2.255l-0.068-0.284   c-0.012-0.04-0.049-0.097-0.094-0.152c-0.031,0.114-0.062,0.275-0.083,0.493c0.005,4.603-0.132,7.837-0.147,8.192l-0.026,0.539   l-0.511,0.134c-0.087,0.024-0.317,0.212-0.454,0.371c-0.731,0.811-0.515,1.279-0.506,1.299c0.879,1.538,2.692,4.566,2.859,4.843   l0.259,0.429l-0.385,0.329l-0.804,0.485l-0.397-0.644c-0.398-0.665-1.976-3.304-2.792-4.732l0,0c0,0-0.812-1.312,0.683-2.964   c0.104-0.117,0.345-0.371,0.645-0.569c0.035-0.928,0.135-3.875,0.135-7.781c0.145-1.612,0.812-1.979,1.348-2.012   c0.002,0,0.003,0,0.004,0c0.827,0,1.454,0.732,1.641,1.289c0.119,0.252,0.166,0.687,0.358,3.014   c0.062,0.759,0.13,1.556,0.191,2.141c0.312-0.079,0.696-0.094,1.008-0.011c0.408,0.103,0.759,0.339,1.043,0.704   c0.357-0.085,0.828-0.095,1.235,0.057c0.466,0.173,0.829,0.513,1.085,1.012c0.456,0.112,1.096,0.363,1.563,0.919   c0.406,0.492,0.584,1.089,0.532,1.778c0.066,0.571,0.368,3.831-0.946,6.345L18.283,30.207z"/>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Usability</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="three-cont" id="three" class="node three" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinThreeContent">
							<div>
								<h2 class="yellow">Installation</h2>
								<ul>
									<li>New App Install</li>
									<li>Uninstall and Reinstall</li>
									<li>Upgrade Testing</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="35px" height="35px" viewBox="0 0 35 35" enable-background="new 0 0 35 35" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M11.584,16.709L8.84,13.968c-0.435,0.104-0.918,0.159-1.41,0.159c-1.777,0-3.446-0.692-4.702-1.949    c-1.989-1.986-2.51-5.031-1.297-7.575c0.178-0.378,0.534-0.648,0.951-0.72l0.218-0.019c0.343,0,0.678,0.14,0.919,0.384l3.57,3.568    c0.167,0.167,0.528,0.168,0.693,0.003C7.88,7.721,7.93,7.602,7.93,7.47c0-0.133-0.05-0.253-0.145-0.347L4.213,3.548    C3.915,3.25,3.781,2.824,3.854,2.409C3.919,2.005,4.188,1.646,4.57,1.464c0.891-0.426,1.886-0.65,2.877-0.65    c1.774,0,3.443,0.691,4.7,1.946c1.643,1.644,2.276,4.03,1.691,6.22l2.736,2.74L11.584,16.709z M9.315,11.897l2.269,2.267    l2.446-2.445l-2.258-2.262l0.201-0.541c0.622-1.677,0.191-3.594-1.098-4.884c-1.255-1.253-3.149-1.721-4.841-1.21l3.025,3.026    C9.491,6.28,9.73,6.856,9.73,7.47S9.49,8.659,9.055,9.092c-0.824,0.83-2.399,0.837-3.238-0.003L2.791,6.064    c-0.512,1.697-0.064,3.567,1.211,4.841c0.916,0.917,2.133,1.422,3.428,1.422c0.499,0,0.986-0.078,1.337-0.216L9.315,11.897z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M27.553,34.187c-1.775,0-3.444-0.692-4.699-1.948c-1.637-1.636-2.294-3.969-1.777-6.202l-3.1-3.099    l4.993-4.991l3.099,3.098c2.233-0.517,4.59,0.163,6.204,1.775c1.988,1.989,2.51,5.034,1.297,7.577    c-0.174,0.373-0.528,0.644-0.944,0.718l-0.223,0.02c-0.343,0-0.666-0.133-0.912-0.372l-3.58-3.579    c-0.166-0.168-0.527-0.166-0.691-0.002c-0.098,0.097-0.146,0.217-0.146,0.35c0,0.131,0.05,0.253,0.142,0.344l3.575,3.577    c0.299,0.302,0.432,0.727,0.359,1.14c-0.07,0.411-0.341,0.768-0.723,0.947C29.534,33.962,28.54,34.187,27.553,34.187z     M20.522,22.938l2.584,2.584l-0.167,0.522c-0.551,1.719-0.085,3.651,1.187,4.922c1.253,1.254,3.137,1.727,4.842,1.21l-3.025-3.027    c-0.432-0.429-0.672-1.004-0.672-1.618s0.24-1.191,0.676-1.623c0.828-0.832,2.4-0.835,3.236,0.003l3.025,3.024    c0.513-1.698,0.064-3.567-1.21-4.842c-1.272-1.273-3.186-1.743-4.924-1.186l-0.522,0.167l-2.583-2.583L20.522,22.938z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M17.166,20.842l-0.597-1.003c-0.041-0.068-0.079-0.121-0.114-0.155l-1.468-1.467    c-0.037-0.037-0.09-0.076-0.163-0.12l-0.976-0.589l7.432-7.562c-0.236-0.511-0.267-1.118,0.116-1.634    c0.158-0.214,0.227-0.656,0.021-1.17c-0.227-0.571-1.109-1.961-4.387-2.533c-0.385-0.068-1.283-0.226-1.347-1.051    c-0.063-0.813,0.781-1.102,1.059-1.196c0.623-0.215,1.3-0.323,2.011-0.323c2.898,0,6.115,1.746,9.561,5.19    c0.742,0.857,2.288,2.818,2.159,4.187c0.01,0.02,0.021,0.041,0.035,0.067c0.69-0.364,1.612-0.236,2.179,0.331    c0.721,0.722,0.722,1.898,0.001,2.623l-2.255,2.252c-0.705,0.701-1.919,0.699-2.622,0.001c-0.353-0.35-0.547-0.817-0.546-1.315    c0-0.294,0.068-0.578,0.198-0.833c-0.369-0.31-0.97-0.798-1.28-0.933c-0.157,0.052-0.322,0.077-0.492,0.077l0,0    c-0.463,0-0.87-0.194-1.134-0.361L17.166,20.842z M16.597,17.28l0.78,0.779l7.13-7.253l0.984,0.986    c0.02,0.013,0.111,0.062,0.174,0.084c0.148-0.062,0.312-0.094,0.486-0.094c0.781,0,1.631,0.668,2.66,1.54    c0.15,0.128,0.281,0.24,0.38,0.317l0.965,0.482l-0.561-0.769c-0.736-1.011-1.06-1.593-0.903-2.166    c0.018-0.361-0.788-1.682-1.697-2.735c-2.189-2.188-4.038-3.385-5.529-4.008c0.95,0.712,1.406,1.481,1.625,2.03    c0.384,0.965,0.327,1.999-0.142,2.75l0.141,0.167l0.638,0.631L16.597,17.28z M30.212,14.198l-1.125,1.137l0.035,0.097l2.293-2.267    l-0.04-0.096l-1.158,1.135L30.212,14.198z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M5.714,33.148L5.714,33.148c-0.444,0-0.865-0.176-1.184-0.494l-2.641-2.64    c-0.33-0.329-0.51-0.782-0.494-1.242c0.017-0.461,0.23-0.9,0.584-1.206l9.683-8.682c0.696-0.607,1.823-0.552,2.453,0.078    l1.468,1.466c0.659,0.661,0.698,1.73,0.09,2.437l-8.71,9.714C6.657,32.937,6.197,33.148,5.714,33.148z M3.259,28.838l2.449,2.447    l8.616-9.607l-1.479-1.442L3.259,28.838z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Installation</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="four-cont" id="four" class="node four" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinFourContent">
							<div>
								<h2 class="yellow">Vulnerability</h2>
								<ul>
									<li>OWASP Vulnerabilities</li>
									<li>Dynamic Testing</li>
									<li>Static Code Analysis</li>
									<li>Data Encryption</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32" enable-background="new 0 0 32 32" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M24.379,31.75H7.619c-2.5,0-4.533-2.033-4.533-4.533V16.13c0-2.5,2.033-4.534,4.533-4.534h16.76    c2.501,0,4.535,2.034,4.535,4.534v11.087C28.914,29.717,26.88,31.75,24.379,31.75z M7.619,13.596    c-1.396,0-2.533,1.137-2.533,2.534v11.087c0,1.396,1.137,2.533,2.533,2.533h16.76c1.397,0,2.535-1.137,2.535-2.533V16.13    c0-1.397-1.138-2.534-2.535-2.534H7.619z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M24.51,13.596H7.489c-0.552,0-1-0.448-1-1V8.908c0-4.774,4.267-8.658,9.51-8.658    c5.244,0,9.511,3.884,9.511,8.658v3.688C25.51,13.148,25.062,13.596,24.51,13.596z M8.489,11.596H23.51V8.908    c0-3.671-3.369-6.658-7.511-6.658c-4.141,0-7.51,2.987-7.51,6.658V11.596z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M15.999,24.942c-1.489,0-2.702-1.212-2.702-2.702v-3.403c0-1.49,1.213-2.702,2.702-2.702    c1.49,0,2.702,1.212,2.702,2.702v3.403C18.701,23.73,17.489,24.942,15.999,24.942z M15.999,18.135    c-0.387,0-0.702,0.315-0.702,0.702v3.403c0,0.387,0.315,0.702,0.702,0.702c0.388,0,0.702-0.315,0.702-0.702v-3.403    C16.701,18.45,16.387,18.135,15.999,18.135z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Vulnerability</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="five-cont" id="five" class="node five" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinFiveContent">
							<div>
								<h2 class="yellow">Language</h2>
								<ul>
									<li>Validation for Locales</li>
									<li>Images and Text</li>
									<li>Currencies, Time Zones Etc.</li>
									<li>Context</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="31.622px" height="32.17px" viewBox="1.189 0.915 31.622 32.17" enable-background="new 1.189 0.915 31.622 32.17" xml:space="preserve" class="svg replaced-svg">
<rect x="7.594" y="8.594" fill="#BBBBBB" width="19.499" height="1.996"/>
<rect x="7.594" y="12.981" fill="#BBBBBB" width="19.499" height="1.999"/>
<g>
	<path fill="#BBBBBB" d="M1.79,1.516v21.14h5.872l-0.003,8.982l9.005-8.982h15.547V1.516H1.79z M8.456,29.719l0.002-7.861H2.585   V2.312h28.829v19.545H16.333L8.456,29.719z"/>
</g>
<path fill="#BBBBBB" d="M7.058,33.085l0.003-9.83H1.189V0.915h31.622v22.34H16.912L7.058,33.085z M3.186,21.257h5.872l-0.001,7.015  l7.029-7.015h14.729V2.911H3.186V21.257z"/>
</svg><div class="name">Language</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="six-cont" id="six" class="node six" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinSixContent">
							<div>
								<h2 class="yellow">Security</h2>
								<ul>
									<li>Security Auditing</li>
									<li>Vulnerability &ndash; Scanning</li>
									<li>Security Scanning</li>
									<li>Penetrating Testing</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="26px" height="33px" viewBox="0 0 26 33" enable-background="new 0 0 26 33" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M13,32.502c-0.096,0-0.191-0.014-0.284-0.041c-1.911-0.567-3.734-1.526-5.42-2.852    c-4.18-3.283-6.675-8.554-6.675-14.098V5.64c0-0.552,0.448-1,1-1c7.312,0,10.482-3.627,10.614-3.782    c0.191-0.225,0.447-0.393,0.769-0.354c0.295,0.001,0.576,0.131,0.765,0.358c0.128,0.15,3.299,3.778,10.61,3.778    c0.553,0,1,0.448,1,1v9.872c0,5.544-2.494,10.814-6.673,14.098c-1.687,1.325-3.51,2.284-5.421,2.852    C13.192,32.488,13.096,32.502,13,32.502z M2.621,6.618v8.894c0,4.936,2.21,9.617,5.91,12.525c1.401,1.102,2.903,1.914,4.469,2.418    c1.565-0.504,3.068-1.316,4.47-2.418c3.7-2.907,5.909-7.59,5.909-12.525V6.618C17.724,6.375,14.395,4.114,13,2.899    C11.605,4.114,8.276,6.375,2.621,6.618z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M13,29.223c-0.124,0-0.247-0.023-0.365-0.069c-1.189-0.467-2.341-1.134-3.422-1.984    c-3.437-2.701-5.488-7.06-5.488-11.658V8.552c0-0.503,0.374-0.928,0.873-0.992c3.737-0.478,6.326-1.805,7.84-2.835    c0.34-0.231,0.786-0.231,1.125,0c1.514,1.03,4.102,2.357,7.841,2.835c0.499,0.063,0.873,0.488,0.873,0.992v6.959    c0,4.598-2.052,8.956-5.488,11.658c-1.08,0.85-2.231,1.518-3.423,1.984C13.248,29.199,13.124,29.223,13,29.223z M5.725,9.415    v6.096c0,3.99,1.766,7.761,4.725,10.086c0.815,0.642,1.672,1.159,2.551,1.544c0.881-0.385,1.737-0.903,2.552-1.544    c2.958-2.326,4.725-6.097,4.725-10.086V9.415c-3.26-0.543-5.676-1.674-7.276-2.67C11.399,7.741,8.983,8.872,5.725,9.415z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Security</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="seven-cont" id="seven" class="node seven" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinSevenContent">
							<div>
								<h2 class="yellow">Memory</h2>
								<ul>
									<li>Review of Cache</li>
									<li>Data Storage Mechanism</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="26.648px" height="31.153px" viewBox="0 0 26.648 31.153" enable-background="new 0 0 26.648 31.153" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M4.348,20.543c0.307,0,0.557,0.248,0.557,0.559v2.438c0,0.309-0.241,0.613-0.54,0.688l-1.229,0.295    c-0.188,0.047-0.316,0.215-0.316,0.408v3.283c0,1.346,1.093,2.439,2.438,2.439h18.451c1.344,0,2.44-1.094,2.44-2.439V2.94    c0-1.346-1.097-2.44-2.44-2.44H5.257c-1.346,0-2.438,1.094-2.438,2.44v9.788c0,0.307-0.186,0.725-0.413,0.931l-1.021,0.928    c-0.496,0.453-0.884,1.33-0.884,2v2.531c0,0.787,0.649,1.426,1.449,1.426H4.348z M1.944,15.206l1.57-1.428    c0.087-0.078,0.137-0.189,0.137-0.309V2.94c0-0.888,0.722-1.607,1.605-1.607h18.451c0.885,0,1.604,0.719,1.604,1.607v25.277    c0,0.885-0.72,1.604-1.604,1.604H5.257c-0.884,0-1.605-0.719-1.605-1.604v-2.406c0-0.307,0.24-0.613,0.54-0.686l1.227-0.297    c0.188-0.045,0.319-0.211,0.319-0.402v-4.297c0-0.23-0.187-0.418-0.417-0.418H1.928c-0.329,0-0.595-0.266-0.595-0.594V16.59    C1.333,16.148,1.618,15.502,1.944,15.206"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M23.708,31.153H5.257c-1.62,0-2.938-1.318-2.938-2.939V24.93c0-0.422,0.285-0.789,0.693-0.893l1.235-0.297    c0.074-0.018,0.157-0.123,0.157-0.201v-2.438l-2.455-0.059C0.874,21.043,0,20.18,0,19.118v-2.531c0-0.805,0.45-1.824,1.047-2.369    l1.021-0.929c0.124-0.112,0.25-0.395,0.25-0.561V2.94C2.318,1.319,3.637,0,5.257,0h18.451c1.621,0,2.94,1.319,2.94,2.94v25.273    C26.648,29.834,25.329,31.153,23.708,31.153z M5.257,1.833c-0.609,0-1.105,0.497-1.105,1.107v10.529    c0,0.26-0.11,0.508-0.302,0.681L2.28,15.576c-0.222,0.201-0.447,0.713-0.447,1.014v2.527c0,0.053,0.042,0.094,0.095,0.094H5.32    c0.506,0,0.917,0.412,0.917,0.918v4.297c0,0.422-0.288,0.787-0.7,0.889l-1.229,0.297c-0.073,0.018-0.157,0.123-0.157,0.199v2.406    c0,0.607,0.496,1.104,1.105,1.104h18.451c0.609,0,1.104-0.496,1.104-1.104V2.94c0-0.61-0.495-1.107-1.104-1.107H5.257z"/>
	</g>
	<g>
		<rect x="6.314" y="3.892" fill="#BBBBBB" width="1.104" height="6.187"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M7.918,10.579H5.814V3.392h2.104V10.579z M6.814,9.579h0.104V4.392H6.814V9.579z"/>
	</g>
	<g>
		<rect x="9.377" y="3.844" fill="#BBBBBB" width="1.104" height="6.187"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M10.981,10.531H8.877V3.344h2.104V10.531z M9.877,9.531h0.104V4.344H9.877V9.531z"/>
	</g>
	<g>
		<rect x="12.539" y="3.863" fill="#BBBBBB" width="1.104" height="6.187"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M14.144,10.55h-2.104V3.363h2.104V10.55z M13.039,9.55h0.104V4.363h-0.104V9.55z"/>
	</g>
	<g>
		<rect x="15.577" y="3.843" fill="#BBBBBB" width="1.104" height="6.187"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M17.181,10.53h-2.104V3.343h2.104V10.53z M16.077,9.53h0.104V4.343h-0.104V9.53z"/>
	</g>
	<g>
		<rect x="18.557" y="3.82" fill="#BBBBBB" width="1.104" height="6.187"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M20.161,10.507h-2.104V3.32h2.104V10.507z M19.057,9.507h0.104V4.32h-0.104V9.507z"/>
	</g>
	<g>
		<rect x="21.529" y="3.799" fill="#BBBBBB" width="1.104" height="6.188"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M23.134,10.486h-2.104V3.299h2.104V10.486z M22.029,9.486h0.104V4.299h-0.104V9.486z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Memory</div></div></div></div>
				</li>
				<li data-placement="left" data-trigger="hover" data-toggle="popover" data-title="eight-cont" id="eight" class="node eight" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinEightContent">
							<div>
								<h2 class="yellow">Functional</h2>
								<ul>
									<li>Validation of Functionality</li>
									<li>Smoke / Regressions Testing</li>
									<li>Offline Access Testing</li>
									<li>Negative Testing</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32" enable-background="new 0 0 32 32" xml:space="preserve" class="svg replaced-svg">
<g>
	<path fill="#BBBBBB" d="M18.019,32h-3.461c-0.479,0-0.891-0.34-0.982-0.811l-0.347-1.803c-0.279-1.449-1.558-2.207-2.677-2.207   c-0.571,0-1.122,0.183-1.594,0.529l-1.546,1.133c-0.398,0.292-0.951,0.248-1.298-0.1l-2.447-2.447   c-0.339-0.339-0.39-0.87-0.121-1.268l1.03-1.522c0.526-0.775,0.616-1.75,0.243-2.607c-0.374-0.857-1.15-1.455-2.076-1.598   l-1.894-0.292C0.36,18.932,0,18.512,0,18.019v-3.462c0-0.479,0.34-0.891,0.811-0.982l1.804-0.347   c0.919-0.177,1.672-0.802,2.014-1.673c0.342-0.871,0.216-1.842-0.337-2.597L3.158,7.413c-0.292-0.398-0.25-0.95,0.1-1.299   l2.449-2.447c0.34-0.337,0.872-0.389,1.269-0.12l1.964,1.332c0.453,0.307,0.976,0.469,1.512,0.469c1.12,0,2.398-0.757,2.676-2.205   l0.448-2.332C13.666,0.34,14.078,0,14.557,0h3.461c0.493,0,0.913,0.36,0.988,0.847L19.3,2.741c0.232,1.514,1.53,2.306,2.691,2.306   c0.534,0,1.057-0.163,1.511-0.471l1.524-1.031c0.398-0.269,0.929-0.218,1.268,0.121l2.448,2.447c0.349,0.349,0.392,0.9,0.1,1.298   l-1.134,1.546c-0.554,0.755-0.681,1.725-0.339,2.596s1.095,1.497,2.014,1.673l1.806,0.347C31.66,13.666,32,14.078,32,14.557v3.462   c0,0.493-0.36,0.913-0.848,0.988l-1.896,0.292c-0.925,0.143-1.701,0.739-2.074,1.598c-0.374,0.857-0.284,1.832,0.241,2.606   l1.03,1.523c0.269,0.397,0.218,0.929-0.121,1.268l-2.447,2.447c-0.35,0.349-0.902,0.391-1.298,0.1l-1.087-0.797   c-0.473-0.346-1.023-0.529-1.594-0.529c-1.163,0-2.463,0.792-2.695,2.305l-0.205,1.332C18.932,31.639,18.512,32,18.019,32z    M15.383,30h1.778l0.074-0.484c0.356-2.317,2.321-4,4.672-4c0.998,0,1.958,0.317,2.775,0.916l0.396,0.29l1.257-1.257l-0.567-0.839   c-0.912-1.346-1.068-3.038-0.419-4.528s1.997-2.527,3.604-2.774L30,17.162v-1.778l-0.994-0.191   c-1.597-0.307-2.904-1.394-3.498-2.907s-0.374-3.199,0.587-4.51l0.627-0.854l-1.258-1.257l-0.84,0.568   c-0.786,0.533-1.696,0.815-2.633,0.815c-2.349,0-4.312-1.683-4.668-4.001L17.161,2h-1.778l-0.292,1.52   c-0.425,2.217-2.376,3.828-4.64,3.828c-0.937,0-1.847-0.281-2.634-0.813L6.537,5.666L5.279,6.922l0.626,0.854   c0.961,1.311,1.18,2.998,0.586,4.51c-0.594,1.513-1.902,2.599-3.499,2.906L2,15.383v1.779l1.046,0.161   c1.607,0.247,2.955,1.285,3.604,2.775s0.493,3.183-0.42,4.528l-0.567,0.838l1.257,1.257l0.854-0.626   c0.817-0.6,1.777-0.916,2.777-0.916c2.262,0,4.213,1.61,4.641,3.828L15.383,30z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M16,22c-3.309,0-6-2.691-6-6c0-3.309,2.691-6,6-6s6,2.691,6,6C22,19.308,19.309,22,16,22z M16,12   c-2.206,0-4,1.794-4,4s1.794,4,4,4c2.206,0,4-1.794,4-4S18.206,12,16,12z"/>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Functional</div></div></div></div>
				</li>
				<li data-placement="right" data-trigger="hover" data-toggle="popover" data-title="nine-cont" id="nine" class="node nine" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinNineContent">
							<div>
								<h2 class="yellow">Non Functional</h2>
								<ul>
									<li>Network Strength / Outage / Recovery</li>
									<li>Different NW Types</li>
									<li>Peripheral Testing</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="25px" height="33px" viewBox="0 0 25 33" enable-background="new 0 0 25 33" xml:space="preserve" class="svg replaced-svg">
<g>
	<path fill="#BBBBBB" d="M21.133,32.833H3.867c-1.921,0-3.484-1.562-3.484-3.483v-5.709c0-0.44,0.289-0.83,0.711-0.957   c0.423-0.13,0.878,0.036,1.122,0.403C2.888,24.097,4.01,24.7,5.217,24.7c1.985,0,3.601-1.615,3.601-3.601   c0-1.984-1.615-3.6-3.601-3.6c-1.207,0-2.329,0.603-3.001,1.612c-0.245,0.367-0.702,0.531-1.122,0.403   c-0.422-0.127-0.711-0.517-0.711-0.957v-6.476c0-1.92,1.563-3.483,3.484-3.483h4.186c-0.497-0.846-0.77-1.82-0.77-2.833   c0-3.088,2.512-5.6,5.6-5.6c3.089,0,5.602,2.512,5.602,5.6c0,1.013-0.272,1.987-0.771,2.833h3.419c1.921,0,3.484,1.562,3.484,3.483   v5.595c0,0.395-0.231,0.752-0.592,0.913c-0.359,0.162-0.782,0.095-1.075-0.168c-0.664-0.595-1.517-0.923-2.4-0.923   c-1.984,0-3.6,1.615-3.6,3.6c0,1.985,1.615,3.601,3.6,3.601c0.884,0,1.736-0.328,2.399-0.923c0.294-0.264,0.715-0.33,1.075-0.169   s0.593,0.519,0.593,0.913v4.828C24.617,31.271,23.054,32.833,21.133,32.833z M2.383,25.93v3.42c0,0.818,0.666,1.483,1.484,1.483   h17.266c0.818,0,1.484-0.665,1.484-1.483v-3.047c-0.652,0.261-1.354,0.397-2.067,0.397c-3.088,0-5.6-2.513-5.6-5.601   s2.512-5.6,5.6-5.6c0.714,0,1.414,0.137,2.067,0.397v-3.814c0-0.818-0.666-1.483-1.484-1.483h-5.708   c-0.44,0-0.829-0.289-0.957-0.71s0.036-0.877,0.402-1.122c1.011-0.673,1.614-1.794,1.614-3c0-1.985-1.615-3.6-3.602-3.6   c-1.984,0-3.6,1.615-3.6,3.6c0,1.206,0.603,2.328,1.613,3.001c0.367,0.244,0.53,0.7,0.402,1.122   c-0.127,0.422-0.516,0.71-0.957,0.71H3.867c-0.818,0-1.484,0.665-1.484,1.483v4.187c0.847-0.497,1.821-0.77,2.834-0.77   c3.088,0,5.601,2.512,5.601,5.6S8.305,26.7,5.217,26.7C4.204,26.7,3.229,26.428,2.383,25.93z"/>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Non<br>Functional</div></div></div></div>
				</li>
				<li data-placement="right" data-trigger="hover" data-toggle="popover" data-title="ten-cont" id="ten" class="node ten" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinTenContent">
							<div>
								<h2 class="yellow">Interrupt</h2>
								<ul>
									<li>Voice / SMS interrupts</li>
									<li>Notifications</li>
									<li>Battery / Cable Removal</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="33px" height="33px" viewBox="0 0 33 33" enable-background="new 0 0 33 33" xml:space="preserve" class="svg replaced-svg">
<g>
	<g>
		<path fill="#BBBBBB" d="M16.588,31.785c-2.135,0-3.981-1.947-4.564-4.768H2.276c-0.244,0-0.466-0.146-0.562-0.371    c-0.098-0.229-0.05-0.486,0.12-0.666c0.628-0.656,1.228-1.167,1.755-1.616c1.299-1.106,2.084-1.774,2.084-3.503v-5.707    C5.7,10.242,8.968,5.872,13.509,4.598c0.22-0.998,1.065-3.383,3.039-3.383c1.953,0,2.713,2.431,2.94,3.447    c4.562,1.28,7.849,5.623,7.872,10.49v5.899c0,1.674,0.694,2.24,1.952,3.267c0.554,0.451,1.182,0.965,1.854,1.665    c0.167,0.178,0.217,0.436,0.121,0.664c-0.098,0.225-0.317,0.371-0.564,0.371h-9.568C20.57,29.838,18.722,31.785,16.588,31.785     M13.334,27.236c0.546,1.963,1.845,3.324,3.254,3.324c1.408,0,2.708-1.361,3.254-3.324H13.334z M3.805,25.793h25.374    c-0.222-0.189-0.435-0.363-0.641-0.528c-1.34-1.095-2.401-1.96-2.401-4.214v-5.896c-0.02-4.448-3.104-8.405-7.332-9.405    c-0.262-0.062-0.451-0.287-0.472-0.554c-0.012-0.172-0.136-2.606-1.785-2.606c-1.696,0-1.872,2.362-1.88,2.532    c-0.015,0.271-0.207,0.5-0.471,0.56c-4.206,0.996-7.276,4.98-7.298,9.475v5.707c0,2.289-1.164,3.282-2.515,4.432    C4.199,25.451,4.006,25.619,3.805,25.793"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M16.587,32.186c-2.253,0-4.186-1.902-4.884-4.768H2.276c-0.406,0-0.771-0.241-0.93-0.614    c-0.159-0.372-0.081-0.803,0.198-1.098c0.644-0.673,1.25-1.189,1.786-1.646c1.295-1.104,1.944-1.656,1.944-3.199v-5.707    c0.027-5.027,3.263-9.463,7.9-10.875c0.423-1.648,1.531-3.464,3.374-3.464c2.105,0,2.967,2.307,3.276,3.528    c4.661,1.417,7.913,5.827,7.938,10.807v5.901c0,1.483,0.565,1.945,1.805,2.956c0.53,0.433,1.191,0.972,1.89,1.698    c0.278,0.297,0.356,0.726,0.201,1.096c-0.164,0.377-0.529,0.617-0.934,0.617h-9.249C20.774,30.283,18.841,32.186,16.587,32.186z     M16.547,1.614c-1.917,0-2.579,2.755-2.648,3.069l-0.052,0.234l-0.231,0.065c-4.416,1.239-7.518,5.422-7.543,10.173v5.705    c0,1.912-0.884,2.666-2.223,3.806c-0.523,0.446-1.113,0.949-1.727,1.59c-0.06,0.063-0.076,0.151-0.042,0.232    c0.033,0.078,0.109,0.128,0.194,0.128h10.073l0.066,0.319c0.542,2.619,2.257,4.448,4.173,4.448c1.917,0,3.633-1.829,4.175-4.448    l0.066-0.319h9.894c0.087,0,0.163-0.05,0.197-0.13c0.032-0.076,0.016-0.166-0.046-0.231c-0.66-0.688-1.3-1.21-1.814-1.628    c-1.265-1.032-2.1-1.714-2.1-3.577v-5.899c-0.022-4.703-3.14-8.859-7.58-10.104L19.15,4.982l-0.053-0.233    C18.934,4.014,18.263,1.614,16.547,1.614z M16.587,30.961c-1.575,0-3.038-1.454-3.639-3.617l-0.141-0.508h7.561l-0.141,0.508    C19.626,29.507,18.163,30.961,16.587,30.961z M13.882,27.637c0.563,1.529,1.61,2.523,2.705,2.523c1.095,0,2.142-0.994,2.706-2.523    H13.882z M30.263,26.193H2.729l1.397-1.204c1.325-1.128,2.373-2.02,2.373-4.126v-5.707c0.022-4.678,3.221-8.826,7.605-9.864    c0.093-0.021,0.159-0.1,0.164-0.192c0.046-1.005,0.582-2.911,2.279-2.911c1.469,0,2.091,1.533,2.184,2.968    c0.008,0.103,0.074,0.182,0.165,0.203c4.407,1.042,7.62,5.16,7.641,9.792v5.898c0,2.062,0.943,2.833,2.25,3.901    c0.21,0.168,0.427,0.345,0.651,0.537L30.263,26.193z M4.886,25.393h23.178c-1.273-1.047-2.327-2.034-2.327-4.342v-5.896    c-0.019-4.265-2.973-8.058-7.023-9.016c-0.432-0.102-0.745-0.469-0.778-0.913c-0.025-0.388-0.204-2.237-1.387-2.237    c-1.366,0-1.479,2.129-1.48,2.151c-0.024,0.45-0.345,0.832-0.781,0.932c-4.026,0.953-6.966,4.775-6.987,9.086v5.705    C7.299,23.192,6.158,24.302,4.886,25.393z"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M19.654,5.996c-0.057,0-0.116-0.008-0.177-0.025c-3.244-0.99-5.922-0.16-5.949-0.152    c-0.32,0.102-0.662-0.075-0.767-0.396c-0.103-0.322,0.074-0.663,0.393-0.768c0.125-0.04,3.053-0.958,6.681,0.144    c0.321,0.099,0.504,0.442,0.406,0.763C20.162,5.826,19.918,5.996,19.654,5.996"/>
	</g>
	<g>
		<path fill="#BBBBBB" d="M19.653,6.396c-0.096,0-0.191-0.013-0.285-0.04c-1.025-0.312-2.092-0.47-3.176-0.47    c-1.497,0-2.504,0.303-2.546,0.315c-0.502,0.158-1.096-0.136-1.265-0.654c-0.168-0.529,0.123-1.099,0.647-1.272    c0.136-0.043,1.353-0.417,3.155-0.417c1.281,0,2.549,0.188,3.767,0.558c0.533,0.165,0.835,0.73,0.673,1.262    C20.497,6.1,20.098,6.396,19.653,6.396z M16.192,5.086c1.164,0,2.308,0.169,3.402,0.502l0.06,0.008    c0.094,0,0.178-0.062,0.204-0.149c0.033-0.111-0.031-0.232-0.142-0.266c-1.141-0.347-2.33-0.523-3.532-0.523    c-1.71,0-2.86,0.362-2.908,0.377c-0.109,0.036-0.169,0.153-0.133,0.266c0.028,0.086,0.109,0.146,0.201,0.146    C13.529,5.401,14.604,5.086,16.192,5.086z"/>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Interrupt</div></div></div></div>
				</li>
				<li data-placement="right" data-trigger="hover" data-toggle="popover" data-title="eleven-cont" id="eleven" class="node eleven" data-original-title="" title="">
					<a href="javascript:void(0)">
						<div style="display:none;" class="popovercontent" id="pinElevenContent">
							<div>
								<h2 class="yellow">Memory Leak</h2>
								<ul>
									<li>Memory Usage</li>
									<li>Memory Leaks</li>
									<li>Garbage Collection</li>
								</ul>
							</div>
						</div>
					</a>
					<div class="cnav active"><div class="to"><div class="t"><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="27.477px" height="30.373px" viewBox="0 0 27.477 30.373" enable-background="new 0 0 27.477 30.373" xml:space="preserve" class="svg replaced-svg">
<g>
	<path fill="#BBBBBB" d="M13.916,25.203H2.896c-0.494,0-0.896-0.4-0.896-0.893v-5.483c0.611-0.257,0.611-1.091,0.611-1.528v-0.425   c0-0.432,0-1.251-0.611-1.519v-4.8c0.611-0.257,0.611-1.091,0.611-1.528V7.583c0-0.431,0-1.248-0.611-1.515V2.892   C2,2.4,2.401,2,2.896,2h16.812c0.494,0,0.896,0.4,0.896,0.892v3.092c-0.729,0.049-1.29,0.734-1.29,1.599v1.444   c0,0.866,0.561,1.552,1.29,1.602V12.1h2.001v-1.931c0-0.762-0.56-1.397-1.291-1.517V7.96c0.731-0.119,1.291-0.755,1.291-1.519   V2.892C22.604,1.297,21.306,0,19.708,0H2.896C1.3,0,0,1.297,0,2.892v3.549c0,0.497,0.236,0.941,0.611,1.222v1.28   C0.24,9.224,0,9.669,0,10.169v5.56c0,0.498,0.236,0.94,0.611,1.223v0.264C0.24,17.496,0,17.941,0,18.441v5.869   c0,1.596,1.3,2.893,2.896,2.893h11.021V25.203z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M21.164,30.373c-3.48,0-6.312-2.832-6.312-6.312c0-3.353,5.545-10.531,5.602-10.604   c0.31-0.419,1.088-0.433,1.423,0.001c0.229,0.297,5.6,7.31,5.6,10.603C27.477,27.541,24.645,30.373,21.164,30.373z M21.164,15.521   c-2.251,3.119-4.512,6.847-4.512,8.539c0,2.487,2.024,4.512,4.512,4.512c2.49,0,4.517-2.024,4.517-4.512   C25.681,22.365,23.418,18.639,21.164,15.521z"/>
</g>
<g>
	<path fill="#BBBBBB" d="M20.852,27.808c-0.282,0-0.531-0.18-0.62-0.447c-0.108-0.35,0.083-0.716,0.425-0.822   c1.517-0.485,2.688-1.691,3.132-3.226c0.09-0.339,0.467-0.55,0.805-0.446c0.339,0.096,0.541,0.455,0.445,0.802   c-0.563,1.96-2.055,3.495-3.99,4.107C21.007,27.794,20.935,27.808,20.852,27.808z M24.428,23.346c-0.093,0-0.143,0.042-0.158,0.101   c-0.49,1.699-1.785,3.032-3.463,3.569c-0.079,0.024-0.124,0.112-0.099,0.191c0.019,0.058,0.078,0.101,0.144,0.101   c0.02,0,0.026-0.002,0.026-0.002c1.794-0.569,3.162-1.978,3.679-3.774c0.021-0.078-0.024-0.163-0.104-0.186   C24.443,23.346,24.436,23.346,24.428,23.346z"/>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg><div class="name">Memory<br>Leak</div></div></div></div>
				</li>
			</ul>
			<div class="nac_content">
				<div id="one-cont" class="cont" style="display: none;">
					<h2 class="yellow">App Performance</h2>
					<ul>
						<li>CPU Usage Testing</li>
						<li>Network Usage</li>
						<li>Page Render Time or Activity Render Time</li>
					</ul>
				</div>
				<div id="two-cont" class="cont" style="display: none;">
					<h2 class="yellow">Usability</h2>
					<ul>
						<li>User Experience</li>
						<li>Competitive Analysis</li>
						<li>Expert Review</li>
					</ul>	
				</div>
				<div id="three-cont" class="cont" style="display: none;">
					<h2 class="yellow">Installation</h2>
					<ul>
						<li>New App Install</li>
						<li>Uninstall and Reinstall</li>
						<li>Upgrade Testing</li>
					</ul>
				</div>
				<div id="four-cont" class="cont" style="display: none;">
					<h2 class="yellow">Vulnerability</h2>
					<ul>
						<li>OWASP Vulnerabilities</li>
						<li>Dynamic Testing</li>
						<li>Static Code Analysis</li>
						<li>Data Encryption</li>
					</ul>
				</div>
				<div id="five-cont" class="cont" style="display: none;">
					<h2 class="yellow">Language</h2>
					<ul>
						<li>Validation for Locales</li>
						<li>Images and Text</li>
						<li>Currencies, Time Zones Etc.</li>
						<li>Context</li>
					</ul>
				</div>
				<div id="six-cont" class="cont" style="display: none;">
					<h2 class="yellow">Security</h2>
					<ul>
						<li>Security Auditing</li>
						<li>Vulnerability &ndash; Scanning</li>
						<li>Security Scanning</li>
						<li>Penetrating Testing</li>
					</ul>
				</div>
				<div id="seven-cont" class="cont" style="display: none;">
					<h2 class="yellow">Memory</h2>
					<ul>
						<li>Review of Cache</li>
						<li>Data Storage Mechanism</li>
					</ul>
				</div>
				<div id="eight-cont" class="cont" style="display: none;">
					<h2 class="yellow">Functional</h2>
					<ul>
						<li>Validation of Functionality</li>
						<li>Smoke / Regressions Testing</li>
						<li>Offline Access Testing</li>
						<li>Negative Testing</li>
					</ul>
				</div>
				<div id="nine-cont" class="cont" style="display: none;">
					<h2 class="yellow">Non Functional</h2>
					<ul>
						<li>Network Strength / Outage / Recovery</li>
						<li>Different NW Types</li>
						<li>Peripheral Testing</li>
					</ul>
				</div>
				<div id="ten-cont" class="cont" style="display: none;">
					<h2 class="yellow">Interrupt</h2>
					<ul>
						<li>Voice / SMS Interrupts</li>
						<li>Notifications</li>
						<li>Battery / Cable Removal</li>
					</ul>
				</div>
				<div id="eleven-cont" class="cont" style="display: block;">
					<h2 class="yellow">Memory Leak</h2>
					<ul>
						<li>Memory Usage</li>
						<li>Memory Leaks</li>
						<li>Garbage Collection</li>
					</ul>
				</div>
			</div>
		</div>
</body>
</html>