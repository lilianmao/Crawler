$(function () {
    if (navigator.userAgent.match(/micromessenger/gi) == null)
        return false;

    //΢�������ʱ����΢��ҳ��+��վҳͷ
    $("#header").hide();
    $("#wrapper").css("margin-top", 0);
    $("#update").css("top", -2);
    $("#autoupdate").css("top", -2);
    $("#allmenu").hide();
    $("#scroller").css("margin-top", 0);
    var onBridgeReady = function () {
        //����΢�ŵײ�������
        WeixinJSBridge.call('hideToolbar');

        //���ݸ߶ȼ���΢��  �޸�����2014-1-24
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
                alert("�����ɹ���");
            }
        };

        // ���͸�����
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

        // ��������Ȧ
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

        // ����΢��
        WeixinJSBridge.on('menu:share:weibo', function (argv) {
            WeixinJSBridge.invoke('shareWeibo', {
                "content": dataForWeixin.title + ' ' + dataForWeixin.url,
                "url": dataForWeixin.url
            }, function (res) {
                dataForWeixin.callback();
            });
        });

        // ����Facebook
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

    //������΢���¼�ע��
    if (document.addEventListener)
        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);

});