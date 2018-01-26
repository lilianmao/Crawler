addEvent(window, "load",
function() {

	var regVeri = /^(http:\/\/[a-z]{0,3}\.)([^.\/]+\.)?[^.\/]+\.[a-z]{2,5}[\/]?$/i;
	var route = _sys_idcorp % 50;
	var oDateTie = new Date();
	var t = "";

	var loginAutom = "http://m.liming9309.quickapp.cn/CorpSvc/Temp/T/CheckLogon.aspx?idCorp=" + _sys_idcorp + "&Menu=2&Page=5&Class=1&text_decoration=Yes&FormID=1&client=m";
	if (/[?&]from=(app)\b/gi.test(document.location.href) == true) {
		document.addEventListener("deviceready",
		function() {
			var values = getDB("userPass");
			if (values) {
				values = values.split("-");

				if (parseInt(oDateTie.getTime()) > parseInt(values[2])) {
					DeleteTo("userPass");
				}
				if (getDB("userPass") && typeof true_index != 'undefined' && !loginUser) {
					$.post(loginAutom, {
						"loginusername": values[0],
						"loginpassword": values[1]
					},
					function(result) {})
				}

			}
		},
		false);
	} else {

		if (localStorage.getItem("userPass")) {
			var login = localStorage.getItem("userPass").split("-");

			if (parseInt(oDateTie.getTime()) > parseInt(login[2])) {
				localStorage.removeItem("userPass");
			}

			if (localStorage.getItem("userPass") && (typeof true_index != 'undefined' || regVeri.test(document.location.href)) && !loginUser) {

				$.post(loginAutom, {
					"loginusername": login[0],
					"loginpassword": login[1]
				},
				function(result) {})
			}
		}
	}

	//取消事件
	$("#loginOk").unbind("click");
	$(".logout-script").unbind("click").attr("href","http://m.liming9309.quickapp.cn/customer/reg/logoutother.aspx");
	var str_t = "http://m.liming9309.quickapp.cn/[idcorp]_10000061_5.html";

	// 会员中心退出按钮
	$(".logout-script").click(function() {
		if (/[?&]from=(app)\b/gi.test(document.location.href) == false) {
			localStorage.removeItem("userPass");
		} else {
			DeleteTo("userPass");
		}
		$.get($(this).attr("href"), {},
		function() {
			cutAuchor(str_t.replace("[idcorp]", _sys_idcorp), $(".logout-script"));
		},
		"html");
	});

	//登陆页面登陆脚本

	$("#loginOk").click(function() {
		loading($("#loginOk"));
		sound($("#loginOk"));
		onoff = false;
		var loginUri = "http://m.liming9309.quickapp.cn/CorpSvc/Temp/T/CheckLogon.aspx?idCorp=" + _sys_idcorp + "&Menu=2&Page=5&Class=1&text_decoration=Yes&FormID=1&client=m";
		var userName = $("#loginusername").val();
		if (typeof userName == "undefined" || userName.length == 0) {
			alert("用户名不能为空");
			return;
		}
		var password = $("#loginpassword").val();
		if (typeof password == "undefined" || password.length == 0) {
			alert("密码不能为空");
			return;
		}
		$.post(loginUri + "&url=" + escape(location.href), {
			"loginusername": userName,
			"loginpassword": password
		},
		function(result) {
			if (typeof result != "undefined" && result.indexOf("登录成功") != -1) {

				var time = 60000 * 60 * 60 * 24 * 10;

				var oDateTime = new Date();

				if (/[?&]from=(app)\b/gi.test(document.location.href) == false) {
					localStorage.setItem("userPass", userName + "-" + password + "-" + (parseInt(oDateTime.getTime()) + time));
				} else {

					setDB("userPass", userName + "-" + password + "-" + (parseInt(oDateTime.getTime()) + time));

				};

				location.href = location.href;
				return;
			}
			alert("用户名或密码错误");
		},
		"text");
	});
});

function setCookie(name, value, Days) {
	if (Days) {
		var exp = new Date(); //new Date("December 31, 9998");  
		exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
		document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
	} else {
		document.cookie = name + "=" + value;
	}
};

function getCookie(name) {
	var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
	if (arr = document.cookie.match(reg)) return (arr[2]);
	else return null;
};

function delCookie(name) { //为了删除指定名称的cookie，可以将其过期时间设定为一个过去的时间 
	var date = new Date();
	date.setTime(date.getTime() - 10000);
	document.cookie = name + "=a; expires=" + date.toGMTString();
};