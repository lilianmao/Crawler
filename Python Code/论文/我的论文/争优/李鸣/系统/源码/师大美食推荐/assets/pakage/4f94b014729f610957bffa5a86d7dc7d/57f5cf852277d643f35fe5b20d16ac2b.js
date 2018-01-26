//�������
var Share = function () {
    //������б�
    this.BROWSER_INFO = [
        {
            "id": "ucbrowser",
            "name": "UC�����",
            "pattern": "\\bucbrowser\\b"
        },
        {
            "id": "360browser",
            "name": "360�����",
            "pattern": "\\b360browser\\b"
        },
        {
            "id": "micromessenger",
            "name": "΢�����������",
            "pattern": "\\bmicromessenger\\b"
        },
        {
            "id": "qqbrowser",
            "name": "QQ�����",
            "pattern": "\\bmqqbrowser\\b"
        },
        {
            "id": "baidubrowser",
            "name": "�ٶ������",
            "pattern": "\\bbaidubrowser\\b"
        }
    ];

    this.env = this.getEnvironment();
};

Share.prototype = {
    //����
    "go": function (platform) {
        if (typeof (this[platform]) != "undefined")
            this[platform]();
    },
    //����΢�ţ����ѡ�����Ȧ��
    "weixin": function (json) {
        this.env.id == "android" || this.env.id == "ios new" ? this.app("weixin") : this.popup();
    },
    //app��
    "app": function (platform) {
        //��֤phonegap����״̬
        if (typeof top.cordova.exec == 'undefined') {
            setTimeout(function () {
                share.app(platform);
            }, 100);
            return;
        }

        var href = top._sys_share_json.url, symble = href.indexOf("?") == -1 ? "?" : "&";
        href += symble + "shareto=" + platform;


        this.env.id == "android"
        ? goToBrowser(href)//android
        : top.open(href, '_blank', 'location=yes');//ios new
    },
    //��������е�����ʾ
    "popup": function () {
        var href = "/app/plugins/share/" + this.env.id + ".html",
            config = {
                "Position": "5",
                "Slide": false,
                "Width": "90%",
                "Height": "auto",
                "MaskOpacity": 0.5,
                "NeedClose": false,
                "NeedTitle": false,
                "BorderStyle": "",
                "Parent": "top",
                "Z": 210011
            };

        var share_dialog = top.share_dialog = new OpenDialog(href, config);
        share_dialog.Show();
    },
    //���ڷ���
    "on": function () {
        //��app�н���
        if (this.env.id.indexOf(" app") != -1)
            return;

        if (/[?&]shareto=[^&=]+/gi.test(location.href) == true) {
            location.href = location.href.replace(/&?shareto=[^&=]+/gi, "").replace(/\?\&/, "?").replace(/\?$/, "");
            return;
        }

        jQuery(function () {
            if (/[?&]shareto=([^&=]+)/gi.test(document.referrer) == true)
                share.go(RegExp.$1);
        });
    },
    //������л���
    "getEnvironment": function () {
        //android app
        if (/from=app/gi.test(top.location.href) == true)
            return {
                "id": "android",
                "name": "��׿ App"
            };

        //ios app
        if (/from=ios/gi.test(top.location.href) == true) {
            return /ios=cache/gi.test(top.location.href) == true
            ? {//ios new
                "id": "ios new",
                "name": "iOS App"
            }
            : {//ios old
                "id": "ios",
                "name": "iOS App"
            };
        }

        //��֧�������
        var env = false;
        jQuery.each(this.BROWSER_INFO, function (i, browser) {
            if (new RegExp(browser.pattern, "gi").test(navigator.userAgent) == true) {
                env = browser;
                return false;
            }
        });

        //δʶ�������
        if (env == false)
            return {
                "id": "unkown",
                "name": navigator.userAgent
            };

        return env;
    }
};

var share = window.share = new Share();
share.on();

jQuery(function () {
    jQuery(document.body).delegate(".share", clickEvent, function () {
        if (clicking == true)
            return false;
        clicking = true;
        setTimeout(function () {
            clicking = false;
        }, 500);
        share.go(jQuery(this).attr("to"));
    });
});