$(function () {
    //iscroll初始高度（兼容firefox）
    var body_height = /firefox/gi.test(navigator.userAgent) == true
        ? $(document).height() : $(document.body).height();

    $("#wrapper").css("height", body_height + "px");
    $("#allmenu").css({ "position": "fixed" });
    $("#header").css({ "position": "fixed", "top": "0px" });
    $("#footer").css({
        "position": "absolute",
        "bottom": "0px"
    });

    //尝试解决连击
    $(document.body).on("click", function (e) {
        e.preventDefault();
    });

    //重算scroll
    var jScroll = $('#scroller'),
        oHeight = jScroll.height();
    (function setScroll() {
        if (typeof myScroll != 'undefined') {
            var sHeight = jScroll.height();
            if (oHeight != sHeight) {
                oHeight = sHeight;
                myScroll.refresh();
            }
        }

        setTimeout(setScroll, 2000);
    })();
});

/*
	share
*/
function cutAuchor1(href) {
    if (/[?&]from=app\b/gi.test(location.href) == false) {
        location.href = href;
        return;
    }
    if (/[?&]from=app\b/gi.test(href) == false)
        href += href.indexOf("?") == -1 ? "?from=app" : "&from=app";

    return;
};

//新浪—
function sina_t() {

    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.content;
    var pic = window.top._sys_share_json.img;
    var new_url = "";
    new_url = "http://v.t.sina.com.cn/share/share.php?url=" + encodeURIComponent(url);
    new_url += "&title=" + encodeURIComponent(txt);
    new_url += "&pic=" + encodeURIComponent(pic) + "";
    //alert(document.location.href);
    cutAuchor1(document.location.href);
    goToBrowser(new_url);
};


//腾讯微博
function tengxun_t() {
    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.content;
    var pic = window.top._sys_share_json.img;

    new_url = "http://v.t.qq.com/share/share.php?title=" + encodeURIComponent(txt);
    new_url += "&url=" + encodeURIComponent(url);
    new_url += "&pic=" + encodeURIComponent(pic) + "";
    cutAuchor1(document.location.href);
    goToBrowser(new_url);
};

//QQ空间
function qqkj() {
    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.title;
    var pic = window.top._sys_share_json.img;
    var cent = window.top._sys_share_json.content;

    new_url = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + url;
    new_url += "&title=" + encodeURIComponent(txt);
    // new_url +="&summary="+biaoti;
    new_url += "&pics=" + encodeURIComponent(pic) + "";
    new_url += "&summary=" + encodeURIComponent(cent) + "";
    cutAuchor1(document.location.href);
    goToBrowser(new_url);
};

//  分享到微信
function weixin() {

    //var url=window.top._sys_share_json.url;
    //var txt=window.top._sys_share_json.title;


    //    goToBrowser("http://m.liming9309.quickapp.cn/common/qm/http/redirectApp.html?url=" + encodeURIComponent('http://s.jiathis.com/?webid=weixin&uid=1&jtss=0&appkey=&ralateuid=&url=' + url + '&title=' + txt + '&isexit=false'));

    share.go("weixin");

};

//  邮件
function mail_to(url, title, txt) {
    new_url = "Mailto: ?Subject=" + encodeURIComponent(title);
    new_url += "&Body=" + encodeURIComponent(txt);
    new_url += url
    window.open(new_url);
};

//  短信
function sms_to() {
    var txt = window.top._sys_share_json.content;
    var url = window.top._sys_share_json.url;
    var phone = window.top._sys_share_json.phone
    var new_url = "";
    if (navigator.userAgent.match(/micromessenger/gi) == null) {
        new_url = "sms:" + phone;
        new_url += "?body=" + EncodeUtf8(txt);
        new_url += url
        window.open(new_url);
    } else {
        //    window.top.location.href=("/mnt/sdcard/bbaaabddhc/c47973e4dddf9183855714af6cdcb7b8.html"+_sys_idcorp+"_"+_sys_idinfo+"_8.html#mp.weixin.qq.com");
    }
};

// 豆瓣
function douban_t() {
    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.title;
    var pic = window.top._sys_share_json.img;
    url = "http://" + window.location.host + "/mnt/sdcard/bbaaaaaach/56023fe79b9697b451df3bb411eeedce.html" + url;
    new_url = "http://www.douban.com/recommend/?url=" + encodeURIComponent(url) + "&title=" + encodeURIComponent(txt) + "&image=" + pic;

    cutAuchor1(document.location.href);
    goToBrowser(new_url);
};

//开心网
function kaixin_t() {
    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.content;
    var pic = window.top._sys_share_json.img;
    url = "http://" + window.location.host + "/mnt/sdcard/bbaaaaaach/56023fe79b9697b451df3bb411eeedce.html" + url;
    new_url = "http://www.kaixin001.com/rest/records.php?content=" + encodeURIComponent(txt);
    new_url += "&url=" + url;
    new_url += "&style=" + 18;
    new_url += "&pic=" + pic;

    goToBrowser(new_url);
};

//人人网
function renren_t() {
    var url = window.top._sys_share_json.url;
    var txt = window.top._sys_share_json.title;
    var pic = window.top._sys_share_json.img;

    new_url = "http://widget.renren.com/dialog/share?resourceUrl=" + encodeURIComponent(url);
    new_url += "&title=" + encodeURIComponent(txt);
    new_url += "&pic=" + pic;

    goToBrowser(new_url);
};

//复制地址
function copythis(url, txt) {
    window.clipboardData.setData("Text", txt + "http://" + window.location.host + "/mnt/sdcard/bbaaaaaach/56023fe79b9697b451df3bb411eeedce.html" + url);
    alert('地址已经复制到您的剪贴板，您可以发送给您的朋友啦！');
};

//qq聊天
function qqlt(url) {

    if (document.location.href.indexOf("from=app") != -1) {
        goToBrowser(url);
        return;
    } else {
        window.open(url);
        return;
    }
};

//转码
function EncodeUtf8(s1) {
    var s = escape(s1);
    var sa = s.split("%");
    var retV = "";
    if (sa[0] != "") {
        retV = sa[0];
    }
    for (var i = 1; i < sa.length; i++) {
        if (sa[i].substring(0, 1) == "u") {
            retV += Hex2Utf8(Str2Hex(sa[i].substring(1, 5)));
        }
        else retV += "%" + sa[i];
    }

    return retV;
};

function Str2Hex(s) {
    var c = "";
    var n;
    var ss = "0123456789ABCDEF";
    var digS = "";
    for (var i = 0; i < s.length; i++) {
        c = s.charAt(i);
        n = ss.indexOf(c);
        digS += Dec2Dig(eval(n));
    }
    return digS;
};

function Dec2Dig(n1) {
    var s = "";
    var n2 = 0;
    for (var i = 0; i < 4; i++) {
        n2 = Math.pow(2, 3 - i);
        if (n1 >= n2) {
            s += '1';
            n1 = n1 - n2;
        }
        else
            s += '0';

    }
    return s;
};

function Dig2Dec(s) {
    var retV = 0;
    if (s.length == 4) {
        for (var i = 0; i < 4; i++) {
            retV += eval(s.charAt(i)) * Math.pow(2, 3 - i);
        }
        return retV;
    }
    return -1;
};

function Hex2Utf8(s) {
    var retS = "";
    var tempS = "";
    var ss = "";
    if (s.length == 16) {
        tempS = "1110" + s.substring(0, 4);
        tempS += "10" + s.substring(4, 10);
        tempS += "10" + s.substring(10, 16);
        var sss = "0123456789ABCDEF";
        for (var i = 0; i < 3; i++) {
            retS += "%";
            ss = tempS.substring(i * 8, (eval(i) + 1) * 8);
            retS += sss.charAt(Dig2Dec(ss.substring(0, 4)));
            retS += sss.charAt(Dig2Dec(ss.substring(4, 8)));
        }
        return retS;

    }
    return "";
};

/*
	function-app
*/
function loading(_this) {

    if (_this) {

        try {
            if (_this.attr("class").indexOf("cannot") == -1) {
                $("#loading").css("display", "block");
                setTimeout(function () {
                    $("#loading").css("display", "none");
                }, 1000)
            }
        } catch (e) {
        }
    } else {

        $("#loading").css("display", "none");


    }
};

$(function () {

    $("#loading").css("display", "none");
});

window.onload = function () {

    var clientHeight = $(window).height();

    window.onresize = function () {
        onoff = false;
        setTimeout(function () {
            onoff = true;
            //reset_sound(_this);
        }, 100);

        if (clientHeight <= $(window).height()) {
            $("#footer").css("display", "block");
            $("#footer").css("display", "");
            $("#wrapper").css("top", 0);
        } else {
            $("#wrapper").css("top", 0);
            $("#footer").css("display", "none");

        }
    }
    return false;
};

// 重置样式函数
function reset_sound(_this) {
    _this.removeClass("abox-active");
};

// 重置页面状态
function reset() {
    onoff = true;
    $("#loading").css("display", "none");
}

$(function () {
    $("#renovation,.home-function-2").on(ClickEvent, function () {
        if (CLICK_HAVE_SLIDE == true)
            return;

        pullDownAction();
    });

    $("#return").on(ClickEvent, function () { // 后退
        if (CLICK_HAVE_SLIDE == true)
            return;

        //微店宝内编辑子页返回，秦密，2015-1-30
        if (/\b(?:mini|mini_login)=1\b/gi.test(location.href) == true) {
            history.back();
            return;
        }

        if (location.href.indexOf('from2=editview') != -1 && location.href.indexOf('return=1') == -1) {
            alert('已经到第一页了');
            return;
        }

        loading($(this));

        try {
            if (reNum == 0) {
                window.history.go(-1);
            } else {
                reNum = parseInt(getUrlStr('reNum'));
                window.history.go(-reNum - 1);
            }
        } catch (e) {
            window.history.go(-1);
        }

    });
});

/*
	function-app-1
*/
//购物车商品数提示、新订单数量提示
$(function () {
    //管理员登录检查
    var url = "http://m.liming9309.quickapp.cn/CorpSvc/Temp/StandardPage/Admini.aspx?idCorp=[idcorp]&type=dl&t=" + new Date().getTime();
    $.get(url.replace("[idcorp]", _sys_idcorp), {}, function (data) {
        //管理员未登录时刷新购物车计数
        if (data.toLowerCase() == "false") {
            FreshShopCart();
            return;
        }

        //刷新新订单计数
        FreshNewOrder();
    }, "text");
});
function FreshNewOrder() {
    $.getJSON("http://m.liming9309.quickapp.cn/Trade/MobileProcess/json/GetUnread.ashx?t=" + new Date().getTime(), function (data) {
        if (typeof data == "undefined" || typeof data.qty == "undefined")
            return;

        if (data.qty > 0) {
            $(".service-cart").hide();
            $(".service-order").show().find(".service-order-number").html(data.qty).show();
            $("#new-msg-order").html(data.qty).show();
        }
        else {
            $(".service-order").hide();
            $("#new-msg-order").hide();
        }
    });
};

function FreshShopCart() {
    $.getJSON("http://m.liming9309.quickapp.cn/common/getCustomer.ashx?t=" + new Date().getTime(), function (data) {
        var idCustomer = data['status'] == 'NLI' ? 0 : data['idCustomer'];
        cartDb = new CartDB(_sys_idcorp, idCustomer),
        shoppingList = cartDb.getCartItmeList(true);

        var ware_number = 0;
        $.each(shoppingList, function (idx, cartitem) {
            if (cartitem.checked == true) {
                ware_number += parseInt(cartitem.qty);
            }
        });

        if (ware_number > 0)
            $(".service-cart-number").html(ware_number).show();
    });
};

//新消息提示
$(function () {
    var iproject = 1;//留言板编号
    var read_field = "field11";//"已阅"字段
    var qf = "field6";//条件字段

    //在线客服及在线客服留言
    getNewMsgCount("#new-msg-kefu,#new-msg-liuyan", "", "", liuyan_click);
    function liuyan_click() {
        $("#new-msg-liuyan").parent().one(ClickEvent, function () {
            $("#new-msg-kefu,#new-msg-liuyan").empty().hide();
        });
    };

    //管理页
    getNewMsgCount("#new-msg-glydg", qf, "订购|预定|预约|挂号|预订|报名", glydg_click);//订购
    function glydg_click() {
        $("#new-msg-glydg").parent().one(ClickEvent, function () {
            $("#new-msg-glydg").empty().hide();
        });
    };

    getNewMsgCount("#new-msg-glyzx", qf, "留言|咨询", glyzx_click);//咨询
    function glyzx_click() {
        $("#new-msg-glyzx").parent().one(ClickEvent, function () {
            $("#new-msg-glyzx").empty().hide();
        });
    };

    //会员中心
    getNewMsgCount("#new-msg-hydg", qf, "订购|预定|预约|挂号|预订|报名", hydg_click);//订购
    function hydg_click() {
        $("#new-msg-hydg").parent().one(ClickEvent, function () {
            $("#new-msg-hydg").empty().hide();
        });
    };

    getNewMsgCount("#new-msg-hyzx", qf, "留言|咨询", hyzx_click);//咨询
    function hyzx_click() {
        $("#new-msg-hyzx").parent().one(ClickEvent, function () {
            $("#new-msg-hyzx").empty().hide();
        });
    };

    //新消息核心函数
    function getNewMsgCount(className, qf, qv, function_callback) {
        var $target = $(className);
        if ($target.length > 0) {
            $.getJSON("http://m.liming9309.quickapp.cn/common/lyb/api/NewMessage.aspx", { "idcorp": _sys_idcorp, "p": iproject, "rf": read_field, "qf": qf, "qv": encodeURI(escape(qv)), "v": Math.random() }, function (data) {
                if (typeof data != 'object' || typeof data["new"] == 'undefined' || data["new"] == '0')
                    return;
                var count = data["new"] < 100 ? data["new"] : "99+";
                $target.html(count).show();
                if (typeof function_callback == "function")
                    function_callback();
            });
        }
    };
});

/*
	imgbox
*/
$(function () {
    $('.imgbox').each(function () {
        var src = this.tagName == "IMG" ? $(this).prop("src") : $(this).css("background-image").replace(/^url\(|\)|\s+$/gi, "");
        if (src == "" || /\/blank\.|\/format_orgin\.|\/nopic\./gi.test(src) == true)
            $(this).hide().parents(".imgtopbox").css({ "width": "0px", "padding": "0px", "margin": "0px", "border": "0px", "height": "0px" });
    });
});

/*
	pulldown_up
*/
var myScroll,
 pullDownEl, pullDownOffset, pullUpEl,
 generatedCount = 0;
function pullDownAction() {

    try {
        clearTimeout(t);
    } catch (e) {
    }
    function checkConnectionn() {
        if (typeof navigator.network == 'undefined' || typeof navigator.network.connection == 'undefined')
            return true;
        var networkState = navigator.network.connection.type;
        if (networkState == Connection.NONE) {
            if (/[?&]from=app\b/gi.test(location.href) == true) {
                showToast("请检查网络连接");
            } else if (/[?&]from=ios\b/gi.test(location.href) == true) {
                alert('请检查网络连接');
            }
            return true;
        } else {
            return true;
        }
    }
    if (/[?&]from=(app|ios)\b/gi.test(document.location.href) == true) {
        if (!checkConnectionn()) {
            return;
        }
    }

    loading($(this))
    var href = document.location.href;//下拉刷新时的url

    //删除url参数
    href = delUrlStr(href, 'flag');

    checkPageURL(href);

    $("#update").css("display", "none");
    $("#autoupdate").css("display", "block");
};

function loaded() {

    var iSpeed = 0;
    var timer = null;
    var iSpeedm = 0;

    pullUpEl = document.getElementById('pullUp');

    if (pullUpEl) {
        pullUpOffset = pullUpEl.offsetHeight;
    }

    if (!document.getElementById("wrapper")) return;
    myScroll = new iScroll('wrapper', {
        useTransition: true,
        bounce: true,
        onBeforeScrollStart: function (e) {
            var target = e.target;
            while (target.nodeType != 1) target = target.parentNode;

            if (target.tagName == 'img' || target.tagName == 'IMG') {
                e.preventDefault();
            }

            // 下拉
            if (pullUpEl) {
                if (pullUpEl.className.match('loading')) {
                    pullUpEl.className = '';
                    pullUpEl.querySelector('.pullUpLabel').innerHTML = '下拉刷新';

                }
            }

        },
        topOffset: pullDownOffset,

        onScrollMove: function () {


            if (this.y > 60 && $("#update").find("span").attr("class") != "ispn") {
                setTimeout(function () { pullDownAction(); }, 3000);
                $("#update").css("display", "block");
                $("#update").find("p").remove();
                $("#update").find("div").append("<p>松开更新..</p>");
                $("#update").find("span").attr("class", "ispn");

                timer = setInterval(function () {
                    if (iSpeed >= 180) {
                        clearInterval(timer);
                    } else {
                        iSpeed += 14;
                    }

                    $("#update").find("span").css("-webkit-transform", "rotate(" + (iSpeed) + "deg)translateZ(0)");
                    $("#update").find("span").css("-o-transform", "rotate(" + (iSpeed) + "deg) translateZ(0)");
                    $("#update").find("span").css("-moz-transform", "rotate(" + (iSpeed) + "deg) translateZ(0)");
                }, 30)
            } else if (this.y >= 50 && this.y <= 50) {

                $("#update").find("p").remove();
                $("#update").css("display", "block");
                $("#update").find("div").append("<p>松开更新..</p>");
            }


            //下拉
            if (pullUpEl) {
                if (this.y < (this.maxScrollY - 5) && !pullUpEl.className.match('flip')) {
                    pullUpEl.className = 'flip';
                    pullUpEl.querySelector('.pullUpLabel').innerHTML = '松开刷新';

                    this.maxScrollY = this.maxScrollY;

                } else if (this.y > (this.maxScrollY + 5) && pullUpEl.className.match('flip')) {
                    pullUpEl.className = '';
                    pullUpEl.querySelector('.pullUpLabel').innerHTML = '请稍等......';
                    this.maxScrollY = pullUpOffset;

                }
            }


        },
        onScrollEnd: function () {

            $("#update").css("display", "none");

            if ($("#update").find("span").attr("class") == "ispn") {
                $("#update").find("span").attr("class", "");
                $("#update").find("span").css("backgroundPosition", "0 -48px");
                $("#update").find("span").css("backgroundSize", "48px");
                setInterval(function () {
                    iSpeedm += 4;
                    $("#update").find("span").css("-webkit-transform", "rotate(" + (iSpeedm) + "deg)");
                    $("#update").find("span").css("-moz-transform", "rotate(" + (iSpeedm) + "deg)");
                    $("#update").find("span").css("-o-transform", "rotate(" + (iSpeedm) + "deg)");

                }, 10);

                pullDownAction();
            }


            //下拉

            if (pullUpEl) {

                if (pullUpEl.className.match('flip')) {
                    pullUpEl.className = 'loading';
                    pullUpEl.querySelector('.pullUpLabel').innerHTML = '请稍等......';
                    if (pullUpAction) {
                        pullUpAction();	// Execute custom function (ajax call?)
                    }

                }
            }
        }
    });
    setTimeout(function () { document.getElementById('wrapper').style.left = '0'; }, 800);

};

if (document.addEventListener) {
    document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
    document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);
}

/*
	front_page_news
*/
$(function () {
    //链接
    var title = "";
    var iZyjjUrl = "http://m.liming9309.quickapp.cn/corpsvc/temp/standardpage/infojs.aspx?idcorp=" + _sys_idcorp + "&type=tsxx&dname=yes&time=" + Math.random();
    var akng = 0;
    var title = "";
    if (/[?&]from=(app)\b/gi.test(document.location.href) == true) {
        //  document.addEventListener("deviceready",onDeviceReady3, false);
        setTimeout(onDeviceReady3, 1000)
    } else {
        onDeviceReady4()
    }
    function onDeviceReady3() {
        $.get(iZyjjUrl, {}, function (str) {
            if (str != "") {
                var idInfo = str.split(",");
                var reg = /A/g;
                if (getDB("nameyidu" + _sys_idcorp)) {
                    var string = getDB("nameyidu" + _sys_idcorp).split(reg);
                    var temp = "";
                    for (var i = 0; i < string.length; i++) {
                        if (temp.indexOf(string[i]) == -1) {
                            temp += string[i] + ",";
                        }

                    }
                    var strTemp = temp.split(",")
                    for (var i = 0; i < strTemp.length - 1; i++) {
                        if (str.indexOf(strTemp[i]) != -1) {
                            akng++;
                        }
                    }
                }

                $("#pushmsg").html(idInfo.length - akng);  //取有几条未读
                if (akng >= idInfo.length) {
                    $("#pushmsg").css("display", "none");
                } else {
                    $("#pushmsg").css("display", "block");
                }
            }
        }, "text")
    };

    function onDeviceReady4() {
        $.get(iZyjjUrl, {}, function (str) {
            if (str != "") {
                var idInfo = str.split(",");
                var reg = /A/g;

                if (localStorage.getItem("nameyidu" + _sys_idcorp)) {
                    var string = localStorage.getItem("nameyidu" + _sys_idcorp).split(reg);
                    var temp = "";
                    for (var i = 0; i < string.length; i++) {
                        if (temp.indexOf(string[i]) == -1) {
                            temp += string[i] + ",";
                        }

                    }
                    var strTemp = temp.split(",")
                    for (var i = 0; i < strTemp.length - 1; i++) {

                        if (str.indexOf(strTemp[i]) != -1) {
                            ++akng;
                        }
                    }
                }

                $("#pushmsg").html(idInfo.length - akng);  //取有几条未读
                if (akng >= idInfo.length) {
                    $("#pushmsg").css("display", "none");
                } else {
                    $("#pushmsg").css("display", "block");
                }
            }
        }, "text")
    };
});

$(function () {

    if (typeof push_message_main != "undefined" && $(".pushmsg-list-new").length == 0) {
        if (/[?&]from=(app)\b/gi.test(document.location.href) == true) {
            setTimeout(onDeviceReady, 1000);
        } else {
            onDeviceReady1();
        }
        function onDeviceReady() {
            var name_yidu_idcorp = "nameyidu" + _sys_idcorp;
            var name_irecord = "A" + news_irecord;
            if (getDB(name_yidu_idcorp) == null) {
                setDB(name_yidu_idcorp, news_irecord);
            } else {
                if (getDB(name_yidu_idcorp).indexOf(name_irecord) == -1) {
                    setDB(name_yidu_idcorp, getDB(name_yidu_idcorp) + name_irecord);
                }
            }
        }

    }
    function onDeviceReady1() {
        var name_yidu_idcorp = "nameyidu" + _sys_idcorp;
        var name_irecord = "A" + news_irecord;
        if (localStorage.getItem(name_yidu_idcorp) == null) {
            localStorage.setItem(name_yidu_idcorp, news_irecord);
        } else {
            if (localStorage.getItem(name_yidu_idcorp).indexOf(name_irecord) == -1) {
                localStorage.setItem(name_yidu_idcorp, localStorage.getItem(name_yidu_idcorp) + name_irecord);
            }
        }
    }


})
$(function () {
    if (typeof push_message_main != "undefined" && $(".pushmsg-list-new").length > 0) {


        var name_yidu_idcorp = "nameyidu" + _sys_idcorp;
        var pageList = "";
        var pageReg = /[0-9]+/g;
        if ($(".pushmsg-list-new").length) {
            for (var i = 0; i < $(".pushmsg-list-new").length; i++) {
                pageList += $(".pushmsg-list-new").eq(i).attr("id").match(pageReg) + ",";
            }
        }

        if (/[?&]from=(app)\b/gi.test(document.location.href) == true) {
            setTimeout(applid, 1000);
        } else {
            if (pageList != "") {
                var idInfo = pageList.split(",");
                var reg = /A/g;
                if (localStorage.getItem(name_yidu_idcorp)) {
                    var string = localStorage.getItem(name_yidu_idcorp).split(reg);
                    for (var i = 0; i < string.length; i++) {
                        if (pageList.indexOf(string[i]) != -1) {
                            for (var j = 0; j < idInfo.length - 1; j++) {
                                if (idInfo[j] == string[i]) {
                                    $(".pushmsg-list-new").eq(j).css("display", "none");
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        function applid() {
            if (pageList != "") {
                var idInfo = pageList.split(",");
                var reg = /A/g;
                if (getDB(name_yidu_idcorp) != "") {
                    var string = getDB(name_yidu_idcorp).split(reg);
                    for (var i = 0; i < string.length; i++) {
                        if (pageList.indexOf(string[i]) != -1) {
                            for (var j = 0; j < idInfo.length - 1; j++) {
                                if (idInfo[j] == string[i]) {
                                    $(".pushmsg-list-new").eq(j).css("display", "none");
                                }
                            }
                        }
                    }
                }
            }
        }

    }

})

var onoff = true;

//浮窗
$(function () {
    /*
        主配置文件
    */
    var config = [
        {
            "CoreType": "div",
            "class": "fuchuang", // 页脚菜单浮窗
            "Position": "custom",
            "Slide": true,
            "SlideFixed": true,
            "SlideDirection": "vertical",
            "PositionXName": "left",
            "PositionYName": "bottom",
            "PositionXOffset": "center",
            "PositionYOffset": "top",
            "Width": "auto",
            "Height": "auto",
            "MaskOpacity": "1",
            "MaskBackgroundColor": "transparent",
            "NeedClose": false,
            "NeedTitle": false,
            "BorderStyle": "",
            "FollowIn": false
        }
    ];

    $(".openfloat").each(function () {
        var $this = $(this), c, menu_id = /openfloat-([^ "']+)/gi.test(this.className) == true ? RegExp.$1 : "";

        if (menu_id == "")
            return true;

        for (var i = 0; i < config.length; i++)
            if ($this.filter("." + config[i]["class"]).length > 0) {
                c = config[i];
                break;
            }
        if (typeof c != "object")
            return true;

        c.PositionFollow = this;
        this.OpenDialog = new OpenDialog(menu_id, c);
    });

    $(".openfloat").click(function (e) {
        if (typeof this.OpenDialog != "undefined")
            this.OpenDialog.Show();
        e.preventDefault();
    });
});

/*
   设置图片不失真
   */
function SetThePicture(addClass) {

    addClass.css({
        "background-size": "cover",
        "background-position": "top center"

    });
    /* var img_elements = addClass.css("background-image");
 
     if (img_elements == 'none' || img_elements == '') return;
 
     var img_url = img_elements.substring(3).replace(/\(|\)|\"/gi, "");
     var element_child_img = addClass;
     var img = new Image();
 
     var img_w = 0;
     var img_h = 0;
     var img_proportion = 0;
     var t = 1;
 
     img.src = img_url;
 
     addEvent(img, "load", function () {
         var chinld_img_w = element_child_img[0].offsetWidth;
         var chinld_img_h = element_child_img[0].offsetHeight;
 
         img_w = img.width;
         img_h = img.height;
 
         var scaling_w = 0;
         var scaling_h = 0;
         if (chinld_img_h / img_h < chinld_img_w / img_w) {
             scaling_w = img_w * (chinld_img_w / img_w) * t + "px";
             scaling_h = img_h * (chinld_img_w / img_w) * t + "px";
         }
         else if (chinld_img_h / img_h == chinld_img_w / img_w) {
             scaling_h = "100%";
             scaling_w = "100%";
         }
         else {
             scaling_h = img_h * (chinld_img_h / img_h) * t + "px";
             scaling_w = img_w * (chinld_img_h / img_h) * t + "px";
         }
 
         addClass.css(
           {
               "background-image": "url(" + img_url + ")",
               "background-repeat": "no-repeat",
               "background-size": (scaling_w + " " + scaling_h),
               "background-position": "top center"
           })
 
         window.myScroll.refresh();
     })*/
}

function addEvent(obj, type, fn) {

    if (obj.attachEvent) {
        obj.attachEvent("on" + type, fn);
    }
    else if (obj.addEventListener) {
        obj.addEventListener(type, fn, false);
    }
}

$(function () {
    var img_box = $(".img-distortion");
    for (var i = 0; i < img_box.length; i++) {
        SetThePicture(img_box.eq(i));
    }
})

/******
      相册代码
*****/
addEvent(window, "load",
function () {
    if (document.getElementById("album_url") == null || $("#album_url").text().length < 20) return;
    var oDocumentHeight = parseInt($(document).height());
    var aRrayImgUrl = $("#album_url").text().split(",");
    var aImgLength = [aRrayImgUrl[0], aRrayImgUrl[1], aRrayImgUrl[2], aRrayImgUrl[3], aRrayImgUrl[4]]; // 获取元素
    var re = /^(http:\/\/([^.\/]{3}\.)[^.\/]+\/)?(.+)[^\/]+\.(jpg|png|gif)$/i;
    var inum = 0;
    var ibg = "100%";
    for (var i = 0; i < aImgLength.length; i++) {
        if (re.test(aImgLength[i])) {
            $(".album_list").append("<td style='background:url(" + aImgLength[i] + ") no-repeat center center;background-size:100% auto;'></td>");
            if ($("#nav_box")) {
                $("#nav_box").append("<div class='abbr'></div>");
            }
            if ($("#prompt_box")) {
                $("#prompt_box").append("<div class='prompt'></div>");
            }
            inum++;
        }
    }

    $(".num_zong").html(inum);
    if ($("#nav_box")) {
        $("#nav_box").find("div").eq(0).attr("class", "abbr nav");
    }
    if ($("#prompt_box")) {
        $("#prompt_box").find("div").eq(0).attr("class", "prompt prompt_acitve");
    }
    /*****参数说明****/
    //1. maskId  遮罩层Id
    //2. iheight  遮罩层Id
    //3. id  显示层ID
    //4. total_width 总宽度
    //5. each_screen每屏幕显示的宽度
    //6. in_total 一共几屏幕
    //7. abbr 切换按钮的class
    //8. nav 切换按钮高亮样式
    //9. ispeed 播放速度（单位秒）
    //10. prompt_ic 提示按钮的class
    //11. prompt_acitve 提示按钮的高亮样式
    new Switching({
        maskId: "maskId_box",
        iheight: 400,
        id: "switching_box",
        total_width: inum + "00%",
        each_screen: ibg,
        in_total: inum,
        abbr: "abbr",
        nav: "nav",
        ispeed: 0.5,
        prompt_ic: "prompt",
        prompt_acitve: "prompt_acitve",
        fn: function (i) {
            $(".act").html(i);
        }
    });
    $(".album_list").find("td").css("width", $("#maskId_box").css("width"));
    $(".album_list").find("td").css("height", $("#maskId_box").css("height"));
    $(".album_list").find("td").css("backgroundSize", "100% auto");

    $("#maskId_box").css("height", oDocumentHeight);
    $(".album_list").find("td").css("height", oDocumentHeight);
    $("#nav_box").css("margin-left", -($(".abbr").length * (parseInt($(".abbr").eq(0).width()) + 4)) / 2)
});
