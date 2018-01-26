jQuery(function () {
    /*
        �������ļ�
    */
    var config = [
        {
            "class": "w1",      //class��a ��ǩ��class
            "Position": 5,
            "Slide": true,
            "Width": "100px",
            "Height": "300px",
            "MaskOpacity": "0.5",
            "NeedClose": false,
            "NeedTitle": false,
            "BorderStyle": "od-border-default"
        },
        {
            "class": "fenxiang",// ����
            "Position": "5",
            "Width": "290px",
            "Height": "350px",
            "MaskOpacity": 0.5,
            "NeedClose": false,
            "NeedTitle": false,
            "BorderStyle": "",
            "Parent": "default",
            "Z": 210000
        },
        {
            "class": "fx_code", // �����ά��
            "Position": "5",
            "Width": "290px",
            "Height": "440px",
            "MaskOpacity": 0.5,
            "NeedClose": false,
            "NeedTitle": false,
            "BorderStyle": "",
            "Parent": "top",
            "Z": 210001
        },
        {
            "class": "msg-answer", // ���Իظ�
            "Position": "5",
            "Slide": false,
            "Width": "290px",
            "Height": "310px",
            "MaskOpacity": 0.5,
            "NeedClose": false,
            "NeedTitle": false,
            "BorderStyle": "",
            "Parent": "top",
            "Z": 210001
        }
    ];

    var android = /[?&]from=app\b/gi.test(location.href), ios = /[?&]from=ios\b/gi.test(location.href);
    (function open() {
        var mydl = getDownloader("top");
        if (android == true && (typeof mydl.cordova == "undefined" || typeof mydl.cordova.exec == "undefined")) {
            setTimeout(open, 200);
            return false;
        }

        //ע���¼���Ԥ����dialog
        for (var i = 0; i < config.length; i++) {
            var c = config[i];
            jQuery('.' + c["class"]).each(function () {
                var jQueryThis = jQuery(this), href = jQueryThis.attr("href");

                //iosʱ��from=ios
                if (ios == true && /[?&]from=ios\b/gi.test(href) == false)
                    href += href.indexOf("?") == -1 ? "?from=ios" : "&from=ios";

                //androidʱ�����ص�ַ��from=app
                if (android == true && /[?&]from=app\b/gi.test(href) == false)
                    href += href.indexOf("?") == -1 ? "?from=app" : "&from=app";

                var dialog = jQueryThis.get(0).OpenDialog = new OpenDialog(href, c);

                var titleContent = typeof jQueryThis.attr("title") == 'undefined' ? '' : jQueryThis.attr("title");
                dialog.setTitleContent(titleContent);

                //androidʱ����������ַ���ɱ��ص�ַ
                if (android == true && href.toLowerCase().indexOf("/mnt/sdcard/") == -1) {
                    delete jQueryThis.get(0).OpenDialog;
                    try {
                        mydl.cordova.exec(function (res) {
                            jQueryThis.get(0).OpenDialog = dialog;
                            jQueryThis.get(0).OpenDialog.setUri(res.sdURL);
                        }, function (error) { }, "Downloader", "downloadFile", [href, { "overwrite": true }, "", 0]);
                    } catch (e)
                    { alert(e); }
                }
            });
        }

        //�����dialog�¼�
        var open_switch = false;
        jQuery('.opendialog').click(function (e) {
            //����300���룬hack�ֻ���
            if (open_switch == true)
                return false;

            open_switch = true;
            setTimeout(function () {
                open_switch = false;
            }, 300);
            if (typeof this.OpenDialog != "undefined")
                this.OpenDialog.Show();
            e.preventDefault();
        });
    })();

    //�õ�appdownloader����
    function getDownloader(c) {
        var _parent = c.Parent;
        if (typeof _parent == "undefined")
            _parent = "window";
        var cross_domain = false;
        switch (_parent) {
            case 'top':
                _parent = window;
                do {
                    if (_parent === top.window)
                        break;
                    try {
                        var test = _parent.parent.document.body;
                        _parent = _parent.parent;
                    }
                    catch (e) { cross_domain = true; }
                }
                while (cross_domain == false)
                break;
            case 'parent':
                _parent = window;
                try {
                    var test = _parent.parent.document.body;
                    _parent = _parent.parent;
                }
                catch (e) { }
                break;
            default: _parent = window;
                break;
        }
        return _parent;
    };
});