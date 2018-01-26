$(function () {
    if (navigator.userAgent.match(/micromessenger/gi) == null)
        return false;

    //微信中浏览时隐藏微信页脚+网站页头
    $("#header").hide();
    $("#wrapper").css("margin-top", 0);
    $("#update").css("top", -2);
    $("#autoupdate").css("top", -2);
    $("#allmenu").hide();
    $("#scroller").css("margin-top", 0);
    var onBridgeReady = function () {
        //隐藏微信底部导航栏
        WeixinJSBridge.call('hideToolbar');

        //内容高度兼容微信  修改日期2014-1-24
        setTimeout(function () {
            $("#wrapper").css("height", $(document).height());
        }, 1000);

        if (typeof top._sys_share_json == "undefined")
            top._sys_share_json = {
                "img": "",
                "title": top.document.title,
                "url": top.location,
                "content": ""
            };

        var dataForWeixin = {
            appId: "",
            img: top._sys_share_json.img,
            url: top._sys_share_json.url,
            title: top._sys_share_json.title,
            desc: top._sys_share_json.content,
            callback: function () {
                alert("操作成功！");
            }
        };

        // 发送给好友
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
            WeixinJSBridge.invoke('sendAppMessage', {
                "appid": dataForWeixin.appId,
                "img_url": dataForWeixin.img,
                "img_width": "120",
                "img_height": "120",
                "link": dataForWeixin.url,
                "desc": dataForWeixin.desc,
                "title": dataForWeixin.title
            }, function (res) {
                dataForWeixin.callback();
            });
        });

        // 分享到朋友圈
        WeixinJSBridge.on('menu:share:timeline', function (argv) {
            WeixinJSBridge.invoke('shareTimeline', {
                "img_url": dataForWeixin.img,
                "img_width": "120",
                "img_height": "120",
                "link": dataForWeixin.url,
                "desc": dataForWeixin.desc,
                "title": dataForWeixin.title
            }, function (res) {
                dataForWeixin.callback();
            });
        });

        // 分享到微博
        WeixinJSBridge.on('menu:share:weibo', function (argv) {
            WeixinJSBridge.invoke('shareWeibo', {
                "content": dataForWeixin.title + ' ' + dataForWeixin.url,
                "url": dataForWeixin.url
            }, function (res) {
                dataForWeixin.callback();
            });
        });

        // 分享到Facebook
        WeixinJSBridge.on('menu:share:facebook', function (argv) {
            WeixinJSBridge.invoke('shareFB', {
                "img_url": dataForWeixin.img,
                "img_width": "120",
                "img_height": "120",
                "link": dataForWeixin.url,
                "desc": dataForWeixin.desc,
                "title": dataForWeixin.title
            }, function (res) {
                dataForWeixin.callback();
            });
        });
    };

    //将所有微信事件注册
    if (document.addEventListener)
        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);

});