var isFirst;// �Ƿ��ǵ�һ�η���
var isIndex;// �Ƿ�����ҳ
var is2G = false;// �Ƿ���2G����
var reNum = 0;// ҳ��ˢ�´���

//�˴ε���Ƿ񻬶�
var CLICK_HAVE_SLIDE = false;

//ҳ����ʱ����
var PAGE_TEMPORARY_PARAMETERS = "";

// ��ȡurl����
function getUrlStr(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return unescape(r[2]);
    return 0;
};
reNum = parseInt(getUrlStr('reNum'));

// ɾ��url����
function delUrlStr(url, ref) {
    return url.replace(new RegExp("\\b" + ref + "=[^&]*", "gi"), "").replace(/\?+|\?+\&+/gi, "?").replace(/\&+/gi, "&").replace(/(?:\?+|\&+)$/gi, "");
};

// �ȴ�����PhoneGap
if (document.addEventListener)
    document.addEventListener("deviceready", onDeviceReady, false);

// PhoneGap�������
function onDeviceReady() {
    //���˼�
    document.addEventListener("backbutton", eventBackButton, false);
    // ���ؼ�
    document.addEventListener("menubutton", eventMenuButton, false);
    // �˵���
    document.addEventListener("searchbutton", eventSearchButton, false);

    // ������
    if (true_index) {
        isIndex = true;
    } else {
        isINdex = false;
    }
    if (isIndex) {
        isFirst = getDB("index");
    }
};

//��ť�¼�
function eventBackButton() {
    //΢�걦�ڱ༭��ҳ���أ����ܣ�2015-1-30
    if (/\b(?:mini|mini_login)=1\b/gi.test(location.href) == true) {
        history.back();
        return false;
    }

    if (isIndex && /from2=weidbview/gi.test(location.href) == false) {
        exitApp();
    } else if (window.location.href.indexOf('http://m.liming9309.quickapp.cn/js/push.html') != -1) {
        // back_index();
        navigator.app.exitApp();
    } else {
        if (reNum == 0) {
            window.history.go(-1);
        } else {
            reNum = parseInt(getUrlStr('reNum'));
            try {
                window.history.go(-reNum - 1);
            } catch (e) {
                window.history.go(-1);
            }
        }
    }
};
function exitApp() {
    localStorage.removeItem("bar");
    navigator.notification.confirm('ȷ���˳�������', function (button) {
        if (button == '1') {
            //navigator.app.exitApp();
            close_app();
        }
    }, '�˳�', 'ȷ��,ȡ��');
};

function removeBack() {
    document.removeEventListener("backbutton", exitApp, false);
    document.removeEventListener("backbutton", eventBackButton, false);

    // ע�����ؼ�
};

// �˵���
function eventMenuButton() { };

// ������
function eventSearchButton() { };

//md5���
function successMd(msg) {
    //����md5���ַ���
    alert(msg);
}
function failMd() {
    alert('md5ʧ��');
}
var StringMd5 = {
    strToMd5: function (str) {
        cordova.exec(successMd, failMd, "CDVMd5", "StrMd5", [str]);
    }
}
//����
function toMd5(str) {
    StringMd5.strToMd5(str);
}

// ������Ƶ
var my_media = null;
var mediaTimer = null;
function playAudio(src) {
    // ��Ŀ���ļ�����Media����
    my_media = new Media(src, onSuccess, onError);
    // ������Ƶ
    my_media.play();
    // ÿ�����һ��ý�岥�ŵ���λ��
    if (mediaTimer == null) {
        mediaTimer = setInterval(function () {
            // ��ȡý�岥�ŵ���λ��
            my_media.getCurrentPosition(
			// ��ȡ�ɹ�����õĻص�����
			function (position) {
			    if (position > -1) {
			        setAudioPosition((position / 1000) + "sec");
			    }
			},
			// �����������õĻص�����
			function (e) {
			    setAudioPosition("Error: " + e);
			});
        }, 1000);
    }
};

// ��ͣ��Ƶ����
function pauseAudio() {
    if (my_media)
        my_media.pause();
};

// ֹͣ��Ƶ����
function stopAudio() {
    if (my_media)
        my_media.stop();
    clearInterval(mediaTimer);
    mediaTimer = null;
};

// ����Media����ɹ�����õĻص�����
function onSuccess() {
};

// ����Media����������õĻص�����
function onError(error) { };

// toast������ʾ�����÷�����showToast(content);
var toast = function () { };
toast.prototype = {
    ShowToast: function (content, length) {
        return cordova.exec(null, null, "ToastPlugin", "toast", [content, length]);
    }
};

if (typeof cordova != "undefined")
    cordova.addConstructor(function () {
        if (!window.plugins)
            window.plugins = {};
        window.plugins.ToastPlugin = new toast();
    });

function showToast(content) {
    window.plugins.ToastPlugin.ShowToast(content, 1000);
};

function OutSide() {
};
OutSide.prototype.outSide = function (url, win, fail) {
    top.cordova.exec(win, fail, "OutSidePlugin", "outSide", [url]);
};
window.OutSide = new OutSide();
//������
function open_outSide(url) {
    window.OutSide.outSide(url, function (res) {
    }, function (error) {
        showToast(error);
    });
};

// ����������
function checkConnection() {
    if (typeof navigator.network == 'undefined' || typeof navigator.network.connection == 'undefined')
        return true;
    var networkState = navigator.network.connection.type;
    if (networkState == Connection.NONE)
        return false;
    is2G = networkState == Connection.CELL_2G;
    return true;
};

var istimeout;
var isStop;
var t;
var url_open;
try { clearTimeout(t); } catch (e) { }
// ���sdcard���ļ��Ƿ����
function CheckFile() { };

CheckFile.prototype.checkFile = function (url, win, fail) {
    top.cordova.exec(win, fail, "CheckSdFile", "checkFile", [url]);
};
window.checkfile = new CheckFile();

function checkSdFile(url, localUrl, bool) {
    if (bool == 0) {
        window.checkfile.checkFile(url, function (res) {
            setTimeout(function () {
                res.sdURL += "?from=app";

                if (PAGE_TEMPORARY_PARAMETERS != "")
                    res.sdURL += "&" + PAGE_TEMPORARY_PARAMETERS;

                window.location = res.sdURL;
            }, 120);
        }, function (error) {
            var netWork = checkConnection();
            if (!netWork) {
                showToast("������������");
                return;
            }
        });
    } else {

        try { clearTimeout(t); } catch (e) { }
        if (bool == 3) {
            reNum = reNum + 1;
            bool = 1;
        } else {
            reNum = 0;
        }
        isStop = false;
        var h = document.location.href;
        var netWork = checkConnection();
        if (!netWork) {
            showToast("������������");
            return;
        }

        window.downloader.downloadFile(url, h, localUrl, bool, function (res) {
            clearTimeout(t);

            if (isStop) return;

            url_open = delUrlStr(res.sdURL, 'reNum');

            if (url_open.indexOf('&re=n') == -1
                    && url_open.indexOf('/temp/') != -1) {
                url_open = url_open + '&re=n' + '&reNum=' + reNum;
            }

            if (url.indexOf('/mnt/sdcard') != -1) {
                setTimeout(openUrl, 100);
            } else {
                window.location = url_open + '&reNum=' + reNum;
            }
        }, function (error) {
            timeOut();
        });
    }

}



// ���ػ��浽���� ���÷�����loadPageURL(url,localUrl,bool);
function Downloader() { };

Downloader.prototype.downloadFile = function (fileUrl, params, localUrl, bool, win, fail) {
    if (!fail)
        win = params;
    try {
        top.cordova.exec(win, fail, "Downloader", "downloadFile", [fileUrl, params, localUrl, bool]);
    }
    catch (e) { }
};
window.downloader = new Downloader();

function loadPageURL(url, localUrl, bool) {
    checkSdFile(url, localUrl, bool);
};

// ��sd��ҳ��
function openUrl() {
    window.location = url_open + '&reNum=' + reNum;
};

// ���س�ʱʱ����
function timeOut() {
    showToast("���粻����������ʧ��");
    isStop = true;
    $("#update").css("display", "none");
    $("#autoupdate").css("display", "none");
};

function showError() {
    $("#loading").css("display", "none");
    showToast("���ݼ���ʧ�ܣ����Ժ�����");
};

var gotoBrowser = function () { };
gotoBrowser.prototype.goBrowser = function (url) {
    cordova.exec(null, null, "Downloader", "downloadFile", [url]);
};
window.OpenBrowser = new gotoBrowser();

function goToBrowser(url) {
    var localUrl = window.location.href;
    var isApp = localUrl.indexOf("from=app") != -1;
    var isIos = localUrl.indexOf("from=ios") != -1;
    if (isApp) {
        try {
            top.cordova.exec(null, null, "OpenBrowser", "openBrowser",

[url]);
        } catch (e) {
            setTimeout(showError, 1000);
        }
    } else if (isIos) {
        top.open(url, '_blank', 'location=yes');
    } else {
        top.location.href = url;
    }
};

/**
 * ���汾���� ���÷�����updateApp();
 */
function alertUpdate(url, name, time, size) {
    navigator.notification.confirm('�������°汾:\n����:' + name + '\n����ʱ��:' + time + '\n��С:' + size + '\n�Ƿ���£�', function (button) {

        if (button == '1') {
            // goToBrowser(url);
            Down_App(url, name);
        }
    }, '�汾����', '��������,�Ժ����');
}
function UpdateVersion() {
}
UpdateVersion.prototype.CheckUpdate = function (win, fail) {
    top.cordova.exec(win, fail, "Update", "update", []);
}
window.checkUpdate = new UpdateVersion();
function updateApp() {
    window.checkUpdate.CheckUpdate(function (res) {
        alertUpdate(res.url, res.name, res.time, res.size);
    }, function (error) {
    });
}


//ios�汾����
function download_ios() {
    top.open('http://www.quickapp.cn/common/qm/download/getApp.html?idcorp=' + _sys_idcorp + '&platform=ios&dname=yes', '_blank',
            'location=yes');
}
function ios_update(name, time, size) {

    navigator.notification.confirm('�������°汾:\n����: ' + name + '\n����ʱ��: '
            + time + '\n��С: ' + size + '\n�Ƿ���£�', function (button) {
                if (button == '1') {
                    download_ios();
                }
            }, '�汾����', '��������,�Ժ����');
}

function alert_ios(name, time, size) {


    if (/[?&](ios=cache)\b/gi.test(window.location) == true) {
        //�°�
        var dataroot = "../version.json";
        $.getJSON(dataroot, function (data) {

            if (data.time == time) {
                return;
            } else {
                time = time.substr(0, 10);
                ios_update(name, time, size);
            }

        });
    }
    else {
        //�ɰ�
        var time_old = getUrlStr('time');
        if (time == time_old) {
            return;
        } else {
            time = time.substr(0, 10);
            ios_update(name, time, size);
        }
    }

};

function getVersion() {

    $.ajax({
        type: "get",
        async: false,
        url: "http://114.113.153.74:8080/Version/getVersion?n_idcrop=" + _sys_idcorp,
        dataType: "jsonp",
        jsonp: "callbackparam",//��������ڽ���callback���õ�function���Ĳ���
        jsonpCallback: "success_jsonpCallback",//callback��function����
        success: function (json) {
            var time1 = json[0].time;
            alert_ios(json[0].name, json[0].time, json[0].size);
        },
        error: function () {
            // alert('fail');
        }
    });
}


// �Զ�ˢ��
var href = window.location.href;
setTimeout(auto_reload, 1300);

function auto_reload() {
    if (href.indexOf("flag=appload") != -1 && href.indexOf("from=app") != -1) {
        updateApp();
    } else if (window.true_index && href.indexOf("from=ios") != -1) {
        getVersion();
    }


    var isRe;
    var timestamp_now = (new Date()).valueOf();


    if (window.ireload == "undefined") {


        if (isFirst && isIndex) {
            var diff_time = (timestamp_now - isFirst) / 1000 / 60;
            isRe = diff_time >= 120;
        } else if (href.indexOf('&re=n') == -1 && href.indexOf('/temp/') == -1) {
            isRe = true;
        } else {
            isRe = false;
        }

    } else {
        if (isFirst && isIndex) {
            var diff_time = (timestamp_now - isFirst) / 1000 / 60;
            isRe = diff_time >= 120;
        } else if (href.indexOf('&re=n') == -1 && href.indexOf('/temp/') == -1 && window.ireload) {
            isRe = true;

        } else {
            isRe = false;
        }

    }


    if (isRe) {
        document.addEventListener("deviceready", onDeviceReady_shua, false);
    }
    function onDeviceReady_shua() {
        if (isIndex) {
            var timestamp = (new Date()).valueOf();
            setDB("index", timestamp);
        }
        if (/[?&](from=app)\b/gi.test(href) == true) {
            //  pullDownAction();
        }
    }
};


//���а�
function success() { }

function fail() { }

var Pasteboard = {
    paste: function (success, fail, str) {
        top.cordova.exec(success, fail, "Pasteboard", "paste", [str]);
    }

};
//���ü��а巽��
function pasteStr(str, func_success, func_fail) {
    Pasteboard.paste(
      func_success,
      func_fail, str);
}


//����app�°汾
function DownApp() {
}
DownApp.prototype.downApp = function (loadUrl, name, win, fail) {
    top.cordova.exec(win, fail, "DownApp", "downApp", [loadUrl, name]);
}
window.DownApp = new DownApp();
function Down_App(loadUrl, name) {
    window.DownApp.downApp(loadUrl, name, function (res) {
    }, function (error) {
        //alert('error');
    });
}

//������ҳ
function ToIndex() {
}
ToIndex.prototype.backToIndex = function (win, fail) {
    top.cordova.exec(win, fail, "ToIndexPlugin", "toIndex", []);
}
window.toIndex = new ToIndex();
function back_index() {
    window.toIndex.backToIndex(function (res) {
    }, function (error) {
        //alert('error');
    });
}

//�ر�app
function CloseApp() {
}
CloseApp.prototype.closeApp = function (win, fail) {
    top.cordova.exec(win, fail, "CloseAppPlugin", "closeApp", []);
}
window.closeapp = new CloseApp();
function close_app() {
    window.closeapp.closeApp(function (res) {
    }, function (error) { });
}

/**
*ios
*/
/*��ø�Ŀ¼*/
var href_ios = window.location.href;
var downFolder;
if (/[?&](from=ios)\b/gi.test(href_ios) == true) {
    href_ios = href_ios.substring(0, href_ios.indexOf('sdcard') + 7);
    downFolder = href_ios.substring(href_ios.indexOf('file://') + 7, href_ios.length);
    dwonFolder = encodeURI(downFolder);
}

/* ��¼��ʱ����*/
var cacheName = '';
function saveCacheFile(fileName) {
    cacheName = fileName;
    window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, gotFS, fail);

}

function gotFS(fileSystem) {
    newFile = fileSystem.root.getDirectory("tem", { create: true, exclusive: false }, writerFile, fail);
}

function writerFile(newFile) {
    newFile.getFile(cacheName, { create: true, exclusive: false }, gotFileEntry, fail);
}
function gotFileEntry(fileEntry) {

}
function gotFileWriter(writer) { }
function fail(error) { };


// ios ����������� ����ʾ
function checkConIosCache(url) {

    if (checkConnection() == false) {

        var name = url.substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.')) + '.html';

        window.location.href = downFolder + name + "?from=ios&ios=cache";
        setTimeout(function () {
            alert('���粻����,������������');
        }, 3000);

        return;
    }
};

//��ȡ���ص�ַ����ȡ����ļ������ص�ַ��
function getResponseText(url) {
    // ios��������
    checkConIosCache(url);


    var page_request = false;
    if (window.XMLHttpRequest) {
        page_request = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        try {
            page_request = new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e) {
            try {
                page_request = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e) { }
        }

    } else {
        return false
    }
    page_request.open('GET', url, false);
    page_request.send(null);
    return page_request.responseText;
}

//�ļ�����
function loadPageURL_ios(url, localUrl, bool) {
    //ȥ��ios��ʶ��ĳ���г�ͻ��������ټӻأ�
    url = url.replace(/from=ios|ios=cache|renum=\d+|loadurl=[^&]+/gi, "");

    //ȥ��ios����ʱ��δ֪�ַ�(%25u2006)
    url = url.replace(/%25u2006/gi, "");

    //��������?��&����??��?&��&&��
    url = url.replace(/\?+|\?+\&+/gi, "?").replace(/\&+/gi, "&").replace(/(?:\?+|\&+)$/gi, "");

    if (bool != 0) {
        reNum = reNum + 1;
        bool = 1;
    } else {
        reNum = 0;
    }

    var param = '';
    var tar;
    var uri;
    var loadUrl = '';
    var param = '';

    if (bool == 0) {

        if (url.indexOf("../sdcard") != -1) {
            //  alert('�򿪱���');
            tar = decodeURI(url);
            tar += tar.indexOf("?") == -1 ? "?from=ios&ios=cache" : "&from=ios&ios=cache";

            if (PAGE_TEMPORARY_PARAMETERS != "")
                tar += "&" + PAGE_TEMPORARY_PARAMETERS;

            window.location.href = tar;
            return;
        } else {

            //alert('��Զ��');
            url += url.indexOf("?") == -1 ? "?from=ios&ios=cache" : "&from=ios&ios=cache";

            uri = getResponseText(url);

            loadUrl = "&loadUrl=" + encodeURIComponent(url);

            var name = url.substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.')) + '.html';

            tar = decodeURI(downFolder + name);

            //��¼��ʱ�ļ�
            saveCacheFile(name);
        }

    } else {

        // ǿ��ˢ��
        if (window.location.href.indexOf("&loadUrl") == -1) {

            // alert('ˢ�±���');

            var name = url.substring(url.lastIndexOf('sdcard') + 7, url.length);

            tar = decodeURI(downFolder + name);

            uri = getResponseText(localUrl + '&ios=cache');

        } else {

            //  alert('ˢ��Զ��');
            //var url1=getUrlStr("loadUrl");
            //	url1=url1.replace(/\?from=ios/g,'');
            loadUrl = "&loadUrl=" + encodeURIComponent(url);


            if (url.indexOf('?') != -1) {
                url += '&from=ios&ios=cache';
            } else { url += '?from=ios&ios=cache' }

            uri = getResponseText(url);

            var name1 = url.substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.')) + '.html';

            tar = decodeURIComponent(downFolder + name1);
        }


    }

    var fileTransfer = new FileTransfer();

    //ȥ��˫�ʺ�
    tar = tar.replace(/\?$/gi, "");

    fileTransfer.download(uri, tar, function (entry) {
        tar = tar + "?from=ios" + '&reNum=' + reNum + loadUrl + "&ios=cache";

        if (PAGE_TEMPORARY_PARAMETERS != "")
            tar += "&" + PAGE_TEMPORARY_PARAMETERS;

        window.location.href = tar;
    }, function (error) {
        alert("����ʧ�ܣ�");
    });
}

/**
 * ahref
 */
var clickEvent, ClickStartEvent, ClickMoveEvent, ClickEndEvent;
function getClickEvent() {
    var system = {
        win: false,//windows
        mac: false,//mac
        xll: false,//linux
        android_app: false,//android app
        android_micro_messenger: false,//android micro messenger
        android_any_browser: false //android any browser
    };

    var platform = navigator.platform;
    system.win = platform.indexOf("Win") == 0;
    system.mac = platform.indexOf("Mac") == 0;
    system.x11 = (platform == "X11") || (platform.indexOf("Linux") == 0);

    system.android_app = /from=app/gi.test(location.href) == true;
    system.android_any_browser = /android/gi.test(navigator.userAgent) == true;
    system.android_micro_messenger = system.android_any_browser && /micromessenger/gi.test(navigator.userAgent) == true;

    if (system.win || system.mac || system.xll
        || system.android_app
        || system.android_micro_messenger || system.android_any_browser) {
        ClickEvent = "click";
        ClickStartEvent = "mousedown";
        ClickMoveEvent = "mousemove";
        ClickEndEvent = "mouseup";
    }
    else {
        ClickEvent = "touchend";
        ClickStartEvent = "touchstart";
        ClickMoveEvent = "touchmove";
        ClickEndEvent = "touchend";
    }
};
getClickEvent();


function loadSound() {
    var player = document.createElement("audio");
    player.preload = "auto";

    if (/ios|iphone|ipad|ipod/gi.test(navigator.userAgent) == true) {
        var mp3 = {
            prefix: "data:audio/wav;base64,",
            sound: "UklGRm8BAABXQVZFZm10IBAAAAABAAEAIlYAACJWAAABAAgAZGF0YUsBAABAQEBAQFp6lLLAwMDAwMDAwMC+o4VrTUBAQEBAQEBAQEJce5WxwMDAwMDAwMDArZF4W0RAQEBAQEBAQEZgfJWvwMDAwMDAwMC4n4dvVkFAQEBAQEBARl92jKK3wMDAwMDAvquXgm1ZR0BAQEBAQERXan+QorG8wMDAwLaomYh4ZldKQUBAQERQXWx8ipmlr7W4t7OroJSHe21hV1BMS01UXGdzf4mUnaSoqqiknpWLgHdtZF1YV1daYGdweYGKkpicnp2blpCIgHlwamRgYGBiZ2x0eoCHjJCTlJOQjIaAfHdwbGpoaGpscHV7gISIi4yMjImFgH14c25raWhqbHB0en+ChomMjIuIhIB9eHRvbGpqamxwdHl+gISIiYmJh4SAfXh0cG1ramxtcHR5fYCDhoeHhoSBgHx3dHBtbGxtb3F1eX2AgYOEhIOA"
        };
        player.src = mp3.prefix + mp3.sound;
    }
    else {
        player.src = "http://img.quickapp.cn/" + (_sys_idcorp % 50) + "/" + _sys_idcorp + "http://m.liming9309.quickapp.cn/sys/key_sound.wav";
    }

    return player;
};
var sound_player = loadSound();

$(function () {
    //�ж��Ƿ񻬶�
    var coordinate = { x: 0, y: 0 }, offset = { x: 0, y: 0 };

    var $body = $(document.body);

    //������ʼ
    //��¼��ʼ���꣬���û���״̬
    $body.on(ClickStartEvent, function (e) {
        CLICK_HAVE_SLIDE = false;
        if (ClickStartEvent == 'touchstart')
            e = e.originalEvent.targetTouches[0];
        coordinate.x = e.clientX;
        coordinate.y = e.clientY;
        offset.x = 0;
        offset.y = 0;
    });

    //������
    //�ƶ����볬��5px������״̬����Ϊ�ѻ���
    //����״̬Ϊ�ѻ����󣬻����д���ʱ�޲���
    $body.on(ClickMoveEvent, function (e) {
        if (CLICK_HAVE_SLIDE == true)
            return;

        if (ClickMoveEvent == 'touchmove')
            e = e.originalEvent.targetTouches[0];

        offset.x = Math.abs(e.clientX - coordinate.x);
        offset.y = Math.abs(e.clientY - coordinate.y);
        if (offset.x > 5 || offset.y > 5)
            CLICK_HAVE_SLIDE = true;
    });

    //��������
    //���û���״̬
    $body.on(ClickEndEvent, function (e) {
        CLICK_HAVE_SLIDE = false;
    });

    //ios ��绰
    $(".service-phone").parent().on(clickEvent, function (e) {
        if (/[?&]from=ios\b/gi.test(location.href) == true)
            location.href = $(this).attr("href");
    });

    //ͼƬ�������ʾ��ͼ
    $body.delegate('img:not(.notbig)', clickEvent, function () {
        var $this = $(this), a = $this.parents("a,.cutauchor,.opendialog,.cutJump,.cutjump");

        //�༭ģʽʱ���Ŵ�
        if (/from2=(?:editview|weidbview)/gi.test(location.href) == true)
            return true;

        if (a.length == 0)
            ImgLarge($this);
    });

    //Ŀ����Ч����abox��
    $body.delegate('.abox', ClickEvent, function (e) {
        e.preventDefault();

        if (CLICK_HAVE_SLIDE == true)
            return;

        var jTMP = $(this).removeClass("abox-active").addClass("abox-active");

        //if (/from=app/gi.test(location.href) == false) {
        //    sound_player.play();
        //}
        //else {
        //    sound($(this));
        //}

        //300ms��������Ч��
        setTimeout(function () {
            jTMP.removeClass("abox-active");
        }, 300);
    });

    //�󲿷ֵ����ת�¼��ڴ˴���
    $body.delegate('.cutauchor,a:not(".notcut,.opendialog,openfloat,.openslide,.cutJump,.cutjump,.video")',
        ClickEvent, function (e) {
            if (CLICK_HAVE_SLIDE == true)
                return;

            //�ڵ����Чʱ�Ž���Ĭ��
            e.preventDefault();

            cutAuchor(encodeURI($(this).attr("href")), $(this));
        });

    //��ת��App
    $body.delegate('.cutjump,.cutJump', clickEvent, function (e) {
        var href = encodeURI($(this).attr("href"));
        var url = "http://m.liming9309.quickapp.cn/common/qm/http/redirectApp.html?title=" + encodeURI(escape(document.title)) + "&url=" + href;
        goToBrowser(url);
        e.preventDefault();
    });

    //��Ƶ
    $body.delegate('.video', clickEvent, function (e) {
        if (typeof this.VideoPanel != "undefined") {
            this.VideoPanel.show();
            e.preventDefault();
        }

        var href = $(this).attr("href");
        var $html = $('<div class="video-panel">'
                        + '<div class="video">'
                            + '<video controls="controls" src="' + href + '">�����������֧�� video ��ǩ��</video>'
                        + '</div>'
                        + '<div class="back">����</div>'
                      + '</div>');

        $html.css({
            "width": "100%",
            "height": "100%",
            "position": "fixed",
            "top": "50px",
            "left": "0px",
            "background-color": "#dcdcdc"
        }).find(".video").css({
            "position": "relative",
            "width": "90%",
            "height": "auto",
            "top": "50px",
            "left": "5%"
        }).find("video").css({
            "width": "100%",
            "height": "auto"
        }).end().end().find(".back").css({
            "position": "relative",
            "width": "88%",
            "top": "55px",
            "left": "6%",
            "background-color": "gray",
            "color": "white",
            "height": "40px",
            "line-height": "40px",
            "text-align": "center",
            "vertical-align": "middle",
            "border": "1px solid gray",
            "box-shadow": "0px 1px 3px rgba(0, 0, 0, 0.2)",
            "background-clip": "padding-box",
            "border-radius": "8px",
            "font-weight": "600",
            "cursor": "pointer"
        });

        var $video = $html.find("video");
        $html.delegate(".back", clickEvent, function () {
            $video.get(0).pause();
            $html.hide();
        }).appendTo($(document.body)).show();

        $video.get(0).play();

        //ios
        if (/[?&]from=ios\b/gi.test(location.href) == true)
            url += "&from=ios";
        //ios�°�
        if (/[?&]ios=cache\b/gi.test(location.href) == true)
            url += "&ios=cache";

        //android
        if (/[?&]from=app\b/gi.test(location.href) == true)
            url += "&from=app";

        location.href = url;

        e.preventDefault();
    });

    //���ػ�
    $body.delegate('.notcut', ClickEvent, reset);
});

function cutAuchor(href, jTarget, flag, _target) {
    //app���п��ܳ��� href = undefined ʱ���������
    if (typeof href == "undefined")
        return false;

    href = href.replace(/&flag=appload/gi, "");

    href = doubleDomain(href);

    if (typeof _target == "undefined")
        _target = window;

    //���ʱ������ʽ
    if (typeof flag == "undefined"
        && typeof jTarget != "undefined"
        && jTarget.length > 0
        && /from2=(editview|weidbview)/gi.test(location.href) == false) {
        //sound(jTarget);
        loading(jTarget);
        onoff = false;
        setTimeout(function () {
            cutAuchor(href, jTarget, true);
        }, 300);
        return;
    }

    //���ӻ��༭ʱ
    try {
        if (/from2=(editview|weidbview)/gi.test(location.href) == true) {
            var from2_type = RegExp.$1;
            //��class=this-editʱ������ת
            if (typeof jTarget != "undefined") {
                var jumpTarget = jTarget, editor = false;
                if (jumpTarget.find(".this-edit").length > 0)
                    return false;
                do {
                    if (/this-edit/gi.test(jumpTarget.prop("class")) == true) {
                        editor = true
                        break;
                    }
                    jumpTarget = jumpTarget.parent();
                }
                while (jumpTarget.get(0) != jumpTarget.parent().get(0));
                if (editor == true)
                    return false;
            }

            if (from2_type == "editview") {
                //����href
                href = href.replace(/(?:^http:\/\/m\.[^.]+\.quickapp\.cn)|(?:dname=yes)|(?:from2=editview)|(?:client=m)|(?:return=1)/gi, "").replace(/\&+/gi, "&").replace(/\?\&+/gi, "?");

                //��ҳʱ
                if (href == "/" || href == "" || href.indexOf("?") == 0) {
                    if (typeof top._sys_admin_idcorp != "undefined") {
                        href = "http://m.liming9309.quickapp.cn/corpsvc/temp/t/mdefault.aspx?idcorp=" + top._sys_admin_idcorp + "&dname=yes&from2=" + from2_type + "&client=m&return=1";
                    }
                }
                else {//��ҳʱ
                    href = href.indexOf("?") == -1 ? href + "?dname=yes&from2=" + from2_type + "&client=m&return=1" : href + "&dname=yes&from2=" + from2_type + "&client=m&return=1";
                }
            }
        }
    } catch (e) { alert(e) };

    //��������
    if (/[?&](from=app|ios=cache)\b/gi.test(location.href) == false) {
        checkConnectionIos();
        _target.location.href = href;
        return false;
    }

    //app���п��ܳ��� href = undefined ʱ���������
    if (typeof href == "undefined")
        return false;

    PAGE_TEMPORARY_PARAMETERS = /\?(.+)$/gi.test(href) == true ? RegExp.$1 : "";

    //ios app�ڷ���
    if (/[?&]ios=cache\b/gi.test(href) == false && /[?&]ios=cache\b/gi.test(location.href) == true) {
        try {
            //�����ô��ڷ����
            if (isOutLink(href) == true) {
                if (href.indexOf('http://') == -1) {
                    href = "http://" + href;
                }
                top.open(href, '_blank', 'location=yes');
                reset();
                return false;
            }
        } catch (e) { reset(); }

        top.window.loadPageURL_ios(href, '', 0);
        return;
    }

    //android app�ڷ���
    if (/[?&]from=app\b/gi.test(href) == false && /[?&]from=app\b/gi.test(location.href) == true) {
        try {
            //�����ô��ڷ����
            if (isOutLink(href) == true) {
                open_outSide(href);
                reset();
                return false;
            }
        }
        catch (e) { reset(); }

        href += href.indexOf("?") == -1 ? "?from=app" : "&from=app";

        try {
            href.indexOf("/mnt/sdcard") != -1 ? top.window.loadPageURL(href, '', 0) : top.window.loadPageURL(href, href, 1);
        } catch (e) { reset(); }
        return false;
    }
};

// ����ˢ��ajax����
function getPakageInfo(result) {// ȡ�ô����Ϣ
    var href = location.href;
    href = href.replace(/&flag=appload/gi, "");
    var platform = /from=(app|ios)/gi.test(location.href) == true ? RegExp.$1 : "";
    if (typeof result != "undefined" && result.uri.indexOf("http://") == 0) {
        if (/[?&]from=(?:app|ios)\b/gi.test(result.uri) == false) {
            if (/^http:\/\/m\.[^./]+\.quickapp\.cn\/?$/gi.test(result.uri) == true)
                result.uri += "http://m.liming9309.quickapp.cn/corpsvc/temp/t/mdefault.aspx?idcorp=" + _sys_idcorp + "&client=m";
            result.uri += result.uri.indexOf("?") == -1 ? "?from=" + platform : "&from=" + platform;
        }
        try {
            platform == "app"
            ? top.window.loadPageURL(doubleDomain(href), doubleDomain(result.uri), 3)
            : top.window.loadPageURL_ios(doubleDomain(href), doubleDomain(result.uri), 3);
        } catch (e) { }
    }
    else {
        setTimeout(showError, 3000);
    }
};

// ˫����hack
function doubleDomain(href) {
    return /^(http:\/\/m\.[^./]+\.quickapp\.cn){2,}/gi.test(href) == true ? href = RegExp.$1 + href.replace(/http:\/\/m\.[^./]+\.quickapp\.cn/gi, "") : href;
};

// �ж��Ƿ�Ϊ����
function isOutLink(href) {
    //�������Ҳ���quickapp��
    return /^(?:http:\/\/)?(?:[^./&?]+\.)+(?:cn|com|net|me|co|org|gov)/gi.test(href) == true && href.toLowerCase().indexOf(".quickapp.cn") == -1;
};

// ����������ˢ�µ���
function checkPageURL(href) {

    if (checkConnection() == false) {
        alert('���粻����,������������');
        return;
    }

    href = href.replace(/&flag=appload/gi, "");


    if (href.toLowerCase().indexOf("/mnt/sdcard/") != -1 && /[?&]loadurl=([^&?=]+)/gi.test(href) == true)
        href = decodeURIComponent(RegExp.$1);

    if (/[?&]from=app\b/gi.test(location.href) == false && /[?&]ios=cache\b/gi.test(location.href) == false) {
        location.href = href;
        return;
    }


    if (href.toLowerCase().indexOf("/mnt/sdcard/") != -1) {
        // ����"/mnt/sdcard"ʱȡ��������url�����loadpageURL

        if (typeof _sys_idcorp == 'undefined')
            return;
        $.getScript("http://www.quickapp.cn/app/gen/options/api/getPakageInfo.aspx?idcorp=" + _sys_idcorp + "&href=" + escape(href), function () { });
    } else if (href.indexOf('/Library/Caches/') != -1) {
        if (href.indexOf('loadUrl') != -1) {
            var down = getUrlStr('loadUrl');
            top.window.loadPageURL_ios(down, '', 1);
            return;
        }
        if (typeof _sys_idcorp == 'undefined')
            return;
        href = href.replace(/^.*(?=\/sdcard\/)/gi, "..");
        $.getScript("http://www.quickapp.cn/app/gen/options/api/getPakageInfo.aspx?idcorp=" + _sys_idcorp + "&href=" + escape(href), function () { });
    }
    else {
        if (/[?&]from=app\b/gi.test(href) == false)
            href += href.indexOf("?") == -1 ? "?from=app" : "&from=app";
        top.window.loadPageURL(href, href, 1);
        // ������"/mnt/sdcard"ʱֱ�ӵ���loadpageURL
    }
};

/* ios ����������� ����ʾ*/
function checkConnectionIos() {
    if (/[?&]from=ios\b/gi.test(location.href) == true &&

checkConnection() == false) {
        alert('���粻����,������������');
        return false;
    }
};

/*
 * app_DB
 */

// �������ݿ�
function createdb() {
    var db = top.window.openDatabase("Database_app", "1.0",

"quickapp_db", 1000000);
    db.transaction(createDB, errorcreate, successcreate);
};

function createDB(tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS cookie (id integer primary key autoincrement, key , value)');
    // tx.executeSql('INSERT INTO DEMO (name, age) VALUES ("a", 10)');
    // tx.executeSql('INSERT INTO DEMO (name, age) VALUES ("b", 11)');
};

function successcreate() { };
function errorcreate(err) { };

// ������޸�
var key_txt;
var value_txt;
function setDB(key, value) {
    createdb();
    key_txt = key;
    value_txt = value;
    var db = top.window.openDatabase("Database_app", "1.0", "quickapp_db", 1000000);
    db.transaction(insertDB, errorinsert, successinsert);
};

function insertDB(tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS cookie (id integer primary key autoincrement, key , value)');
    // alert(" 'INSERT INTO DEMO (name,age) VALUES('+name_txt+','+age_txt+')'
    // ");
    // tx.executeSql('INSERT INTO cookie (key,value) VALUES
    // ('+'"'+key_txt+'"'+',"'+value_txt+'")');

    tx.executeSql("SELECT value FROM cookie where key='" + key_txt + "'", [], querySuccess1, errorselectabcerrorCB);
};
function querySuccess1(tx, results) {
    var len = results.rows.length;
    if (len == 0) {
        tx.executeSql('INSERT INTO cookie (key,value) VALUES (' + '"' + key_txt + '"' + ',"' + value_txt + '")');

    } else {
        tx.executeSql('UPDATE cookie SET value=' + '"' + value_txt + '"' + ' where key="' + key_txt + '"');
    }
};

function successinsert() {
    name_txt = "";
    age_txt = "";
};
function errorinsert(err) { };

// ɾ���ֶ�
var num;
function DeleteTo(key) {
    num = key;
    var db = top.window.openDatabase("Database_app", "1.0", "quickapp_db", 1000000);
    db.transaction(DeleteDB, errorDelete, successDelete);
};
function DeleteDB(tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS cookie (id integer primary key autoincrement, key , value)');
    tx.executeSql('DELETE FROM cookie where key="' + num + '"');
};
function errorDelete(err) { };
function successDelete() { };

// �޸��ֶ�
function Update(key, value) {
    key_txt = key;
    value_txt = value;
    var db = top.window.openDatabase("Database_app", "1.0", "quickapp_db", 1000000);
    db.transaction(ModifyDB, errorModify, successModify);
};

function ModifyDB(tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS cookie (id integer primary key autoincrement, key , value)');

    // tx.executeSql('UPDATE cookie SET key =' + '"'+key_txt+'"' + ',' +'value
    // ="' + age_txt + '" where id=' + _id_txt);
    tx.executeSql('UPDATE cookie SET value=' + '"' + value_txt + '"' + ' where key="' + key_txt + '"');
};
function errorModify(err) { };
function successModify() { };

// ��ѯ
var v;
var key;
function getDB(key1) {
    key = key1;
    var db = top.window.openDatabase("Database_app", "1.0", "quickapp_db", 1000000);
    db.transaction(selectDB, errorselect, successselect);
    return v;
};

function selectDB(tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS cookie (id integer primary key autoincrement, key , value)');
};

function errorselect(err) { };
function errorselectabc(err) { };
function errorselectabcerrorCB(err) { };

function successselect() {
    var db = top.window.openDatabase("Database_app", "1.0", "quickapp_db", 200000);
    db.transaction(queryDB, errorselectabc);
};

function queryDB(tx) {
    tx.executeSql("SELECT value FROM cookie where key='" + key + "'", [], querySuccess, errorselectabcerrorCB);
};

function querySuccess(tx, results) {
    var len = results.rows.length;
    if (len == 0) {
        v = null;
        return v;
    }
    console.log("DEMO table: " + len + " rows found.");
    for (var i = 0; i < len; i++) {
        v = results.rows.item(i).value;
    }
};

/** Ԥ�ȼ���ҳ��ͼƬ**/
$(function () {
    (function (elements) {
        var aUrl = [];
        var aImg = [];
        for (var i = 0; i < elements.length; i++) {
            aUrl.push(elements[i].src);
            aImg.push(new Image());
            aImg[i].src = aUrl[i];
            aImg[i].onload = function () { };
        }
    })(document.getElementsByTagName('img'));

})

/*
    ���ͼƬ�Ŵ�
*/

function ImgLarge(obj) {
    if (typeof obj == "undefined" || obj.attr("class").indexOf("no_img") != -1) return;

    var bClose = false;

    var sUrl = obj.attr("src");
    var oTopElement = $(window.top.document);

    oTopElement.find("#popup").remove();
    oTopElement.find("#popup-img").remove();

    var ispeed = 200;

    if (document.location.href.indexOf("from=app") != -1) {
        ispeed = 600;
    } else {
        ispeed = 200;
    }

    var clientHeight = window.top.document.documentElement.clientHeight || window.top.document.body.clientHeight;
    var clientWidth = window.top.document.documentElement.clientWidth || window.top.document.body.clientWidth;
    var sRes = '';

    sRes = '<style type="text/css" id="popup-img">';

    sRes += "#popup{width:100%;height:auto;background:#000;position:absolute;top:0;left:0; overflow:hidden; opacity:0}"
    sRes += "#down-load{color:#fff;padding-top:30px;text-align:center;background-image:url(/mnt/sdcard/bbaaabddhc/netdisk/2f31646077ef5bcd3b82505c946250aa/bd114db17d719126e03522b2d9075272.png);background-position:-30px -10px;cursor:pointer;width:30px;height:30px;font-size:12px;position:absolute;z-index:221001;top:30px;left:30px;display:none}";
    sRes += "#close{background-image:url(/mnt/sdcard/bbaaabddhc/8a440f14a8c6bed29d0e6d1d6f64af6e/1ba842a5bf3b416908dec9bc8519c22b.png);background-position:-10px -10px;cursor:pointer;width:30px;height:30px;position:absolute;z-index:220001;top:30px;right:30px;}";
    sRes += "#content{display:table-cell;vertical-align:middle;opacity:0}";

    sRes += "</style>";




    var aPosition = [(clientHeight - clientHeight * 0.6) / 2, (clientWidth - clientWidth * 0.6) / 2, clientHeight * 0.6, clientWidth * 0.6];



    oTopElement.find("body").eq(0).append(sRes + '<div id="popup" style="z-index:210000000;position:absolute;left:' + aPosition[1] + 'px;top:' + aPosition[0] + 'px;width:' + clientWidth * 0.6 + 'px;height:' + clientHeight * 0.6 + 'px;"><div id="down-load">����</div><div id="close"></div><div id="content" style="width:' + aPosition[3] + 'px;height:' + aPosition[2] + 'px"><img id="poImg" src="' + sUrl + '" width="100%" /></div></div>');

    oTopElement.find("#content").animate({
        width: clientWidth,
        height: clientHeight,
        opacity: 1
    }, { queue: true, duration: ispeed });

    oTopElement.find("#popup").animate({
        width: clientWidth,
        height: clientHeight,
        zIndex: 221000000,
        left: 0,
        top: 0,
        opacity: 1
    }, ispeed, function () {

        new ImageAmplification({ iMgObj: oTopElement.find('#poImg'), expandNumber: 2, animationSpeed: 150 });
        bClose = true;

    })

    oTopElement.find("body").eq(0).on(clickEvent, '#close', function () {
        if (bClose) {
            oTopElement.find("#content").animate({
                width: aPosition[3],
                height: aPosition[2],
                opacity: 0
            }, { queue: true, duration: ispeed });

            oTopElement.find("#popup").animate({
                width: aPosition[3],
                height: aPosition[2],
                zIndex: 22100,
                left: aPosition[1],
                top: aPosition[0],
                opacity: 0
            }, ispeed, function () {
                oTopElement.find("#popup").remove();
                oTopElement.find("#popup-img").remove();
            })
        }
    })

    var imgSplit = obj.attr("src").split(".");
    var downImgt = new Date().getTime() + "." + imgSplit[imgSplit.length - 1];
    if (document.location.href.indexOf("from=app") != -1) {
        oTopElement.find("#down-load").css("display", "block");

        oTopElement.find("#down-load").on(clickEvent, function () {

            down_file(obj.attr("src"), "/mnt/sdcard/DCIM/CAMERA/" + downImgt);

        });
    }

}
/*******ͼƬ����******/
var down = function () { };
down.prototype = {
    downFile: function (uri, tar, win, fail) {
        return cordova.exec(win, fail, "DownFile", "downFile", [uri, tar]);
    }
};
window.DownFile = new down();
function down_file(uri, tar) {
    window.DownFile.downFile(uri, tar,
	function (res) {
	    showToast("�ļ�������:" + res);
	},
	function (error) {
	    showToast(error + "����ʧ�ܣ�������");
	});

}
/***��㴥��***/

function ImageAmplification(configure) {
    this.iMgObj = configure.iMgObj;   // 
    /**************
    *�Ŵ���С���ܱ�������*
    ***************/
    this.nMagnification = configure.nMagnification;  // 
    this.pageOne = null;
    this.pageTow = null;
    this.nTheStartingPoint = 6;
    this.clientHeight = window.top.document.documentElement.clientHeight || window.top.document.body.clientHeight;
    this.clientWidth = window.top.document.documentElement.clientWidth || window.top.document.body.clientWidth;
    this.elementWidth = 0;
    this.ispeed = 3;
    this.elementWidth = 0;
    this.elementHeight = 0;
    this.elementLeft = 0;
    this.elementTop = 0;
    this.nNumMoveOne = 0;
    this.nNumMoveTow = 0;
    this.defaultImgHeight = this.iMgObj[0].offsetHeight;
    this.calculationHeight = 0;
    this.elementWidthDynamic = 0;
    this.iHeight = this.iMgObj[0].offsetHeight;
    this.iWidth = this.iMgObj[0].offsetWidth;
    this.tDisY1 = 0;
    this.tDisY2 = 0;
    this.firstY = 0;
    this.lastY = 0;
    this.bigImgW = 0;
    this.bigImgH = 0;
    this.ltImg = 0;
    this.animationSpeed = configure.animationSpeed;
    this.expandNumber = configure.expandNumber;
    this.tlg = this.clientHeight * this.expandNumber;;
    this.i = 0;
    this.strops = false;
    this.release = false;
    var __this__ = this;

    this.imgSetStyle()

    this.iMgObj.on('touchstart', function (event) {

        __this__.touchDown(event);
        __this__.touchEnd();
        return false;
    })



    this.sTop = false;
    /**************
    *����ͼƬ���ܱ���*
    ***************/

    this.maskLeft = 0;
    this.maskTop = 0;
    this.maskHeight = 0;
    this.maskWidth = 0;
    this.touch = 0;
    this.startX = 0;
    this.startY = 0;
    this.imgX = 0;
    this.imgY = 0;
    this.specifications = 10;
    this.l = null;
    this.t = null;
    this.p = null;
    this.res = 0;


};

ImageAmplification.prototype = {
    bileImg: function (event) {
        var oEvent = event.originalEvent;
        this.touch = oEvent.touches[0];

        this.imgX = Number(this.touch.pageX);
        this.imgY = Number(this.touch.pageY);


        /******���»���******/
        if (this.imgSlideT()) {
            this.imgGoTop();

        }
        else if (this.imgSlideT() == 0) {
            this.imgGoBottom();

        }

        /******���һ���******/
        if (this.imgSlideL()) {
            this.imgGoRight();

        }
        else if (this.imgSlideL() == 0) {
            this.imgGoLeft();

        }

    },
    imgSetStyle: function () {

        this.iMgObj.css({ top: this.iMgObj[0].offsetTop, position: 'absolute' });

    },
    imgSlideT: function () {
        if (this.maskHeight > this.clientHeight) {
            if (this.startY - this.imgY > this.specifications) //�ϻ���
            {
                return 1;
            }
            else if (this.imgY - this.startY > this.specifications)  // �»���
            {
                return 0;
            }
        }
    },
    imgSlideL: function () {
        if (Math.abs(this.imgX - this.startX) > this.specifications) {
            if (this.imgX - this.startX > this.specifications)    //  �һ���
            {
                return 1;
            }
            else if (this.startX - this.imgX > this.specifications)  // �󻬶�
            {
                return 0;
            }
        }
    },
    imgGoLeft: function () {
        this.iMgObj.css("left", (this.maskLeft - (this.startX - this.imgX)));
    },
    imgGoRight: function () {
        this.iMgObj.css("left", this.maskLeft + (this.imgX - this.startX));
    },
    imgGoTop: function () {
        this.iMgObj.css("top", (this.maskTop - (this.startY - this.imgY)));
    },
    imgGoBottom: function () {
        this.iMgObj.css("top", this.maskTop + (this.imgY - this.startY));
    },
    touchDown: function (event)  //
    {
        var __this__ = this;
        var oEvent = event.originalEvent;  // 

        this.elementWidth = __this__.iMgObj[0].offsetWidth;
        __this__.elementHeight = __this__.iMgObj[0].offsetHeight;
        __this__.elementLeft = this.iMgObj[0].offsetLeft;
        __this__.elementTop = this.iMgObj[0].offsetTop;

        if (this.touchNumber(oEvent)) {
            $(document).on('touchmove', function (event) {

                __this__.operationImg(event);
            })
        }
        else if (this.touchNumber(oEvent) == 0) {
            $(document).on('touchmove', function (event) {
                if (__this__.sTop) {
                    __this__.bileImg(event);
                }
            })

        };
    },
    touchEnd: function () {
        var __this__ = this;

        $(document).on('touchend', function (event) {

            if (__this__.strops) {
                __this__.imgUp();
            }

            if (__this__.release) {
                __this__.upSmall();

            }

            if (__this__.sTop) {
                __this__.aSingle();
            }
            $(this).unbind('touchmove');
            $(this).unbind('touchend');

        })
    },
    aSingle: function () {
        var thisElementWidth = this.iMgObj[0].offsetWidth;
        var thisElementHeight = this.iMgObj[0].offsetHeight;
        var thisElementTop = this.iMgObj[0].offsetTop;
        var thisElementLeft = this.iMgObj[0].offsetLeft;

        if (thisElementWidth >= this.clientWidth) {
            if (thisElementLeft >= 0) {
                this.iMgObj.animate({ left: 0 }, { queue: false, duration: this.animationSpeed });
            } else if (thisElementLeft <= this.clientWidth - thisElementWidth) {
                this.iMgObj.animate({ left: this.clientWidth - thisElementWidth }, { queue: false, duration: this.animationSpeed });
            }
        }

        if (thisElementHeight >= this.clientHeight) {
            if (thisElementTop >= 0) {
                this.iMgObj.animate({ top: 0 }, { queue: false, duration: this.animationSpeed });
            }
            else if (thisElementTop <= this.clientHeight - thisElementHeight) {
                this.iMgObj.animate({ top: this.clientHeight - thisElementHeight }, { queue: false, duration: this.animationSpeed });
            }
        }
    },
    touchNumber: function (evt)   //
    {
        switch (evt.touches.length) {
            case 1:  // 
                this.sTop = true;
                this.maskLeft = this.iMgObj[0].offsetLeft;
                this.maskTop = this.iMgObj[0].offsetTop;
                this.maskHeight = this.iMgObj[0].offsetHeight;
                this.maskWidth = this.iMgObj[0].offsetWidth;
                this.touch = evt.targetTouches[0];
                this.startX = Number(this.touch.pageX);
                this.startY = Number(this.touch.pageY);
                this.strops = false;
                this.release = false;
                return 0;
                break;
            case 2:	// 
                this.sTop = false;
                this.strops = true;
                this.release = true;
                this.updateTouchValue(evt);
                return 1;
                break;
            default:
                return false;
        }
    },
    updateTouchValue: function (evt) {
        this.pageOne = evt.touches[0].clientY; // ��¼��ָ����ʱ�ĵ�1����
        this.pageTow = evt.touches[1].clientY; // ��¼��ָ����ʱ�ĵ�2����
        this.firstY = evt.touches[0].clientY; //��¼��ָ����ʱ�ĵ�1����
        this.lastY = evt.touches[1].clientY;   //��¼��ָ����ʱ�ĵ�2����
    },
    imgUp: function () {

        var thisLeft = this.iMgObj[0].offsetLeft;
        var thisWidth = this.iMgObj[0].offsetWidth;
        var thisTop = this.iMgObj[0].offsetTop;
        var thisHeight = this.iMgObj[0].offsetHeight;

        if (thisWidth >= this.clientWidth || thisHeight >= this.clientHeight) {
            this.aSingle();
        }

        if (thisWidth < this.iWidth) {
            this.iMgObj.animate({ width: this.iWidth, left: 0 }, { queue: false, duration: this.animationSpeed });
        }

        if (thisHeight < this.iHeight) {
            this.iMgObj.animate({ height: this.iHeight, top: (this.clientHeight - this.iHeight) / 2 }, { queue: false, duration: this.animationSpeed });
        }
        else {
            if (thisHeight < this.clientHeight) {
                this.iMgObj.animate({ top: (this.clientHeight - thisHeight) / 2 }, { queue: false, duration: this.animationSpeed });
            }
        }

    },
    operationImg: function (event) {
        var __this__ = this;
        var oEvent = event.originalEvent;  // 
        this.nNumMoveOne = oEvent.touches[0].clientY; // 
        this.nNumMoveTow = oEvent.touches[1].clientY; //

        //  �ж��ĸ���ָ�Ȱ���
        if (__this__.priority()) {
            if (__this__.amplificationA() == 1)  // �Ŵ�
            {
                this.release = true;
                this.strops = false;

                __this__.amplificationOperationA(0, oEvent);
            }
            else if (__this__.amplificationA() == 0)   // ��С
            {
                this.release = false;
                this.strops = true;

                __this__.narrowImgA(0, oEvent);
            }
            else if (__this__.amplificationA() == -1) {
                __this__.updateTouchValue(oEvent);
            }
        }
        else {
            if (__this__.amplificationB() == 1)  // �Ŵ�
            {
                this.release = true;
                this.strops = false;
                __this__.amplificationOperationA(1, oEvent);

            }
            else if (__this__.amplificationB() == 0)  //��С
            {
                this.release = false;
                this.strops = true;

                __this__.narrowImgA(1, oEvent);

            }
        }
    },
    priority: function ()   //
    {
        if (this.pageOne > this.pageTow) {
            return true;
        }
        else {
            return false;
        }
    },
    amplificationA: function ()  // �Ŵ���С
    {
        if (this.nNumMoveOne - this.nTheStartingPoint > this.pageOne || this.nNumMoveTow + this.nTheStartingPoint < this.pageTow)  //�Ŵ�
        {
            return 1;
        }
        else if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne || this.nNumMoveTow - this.nTheStartingPoint > this.pageTow)  //��С 
        {
            return 0;
        }
        else if (this.nNumMoveOne + this.nTheStartingPoint > this.pageOne && this.nNumMoveTow - this.nTheStartingPoint > this.pageTow) {
            return -1;   // ���»���
        } else if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne && this.nNumMoveTow + this.nTheStartingPoint < this.pageTow) {
            return -1; // �ϻ���
        }
    },
    amplificationB: function ()  // �жϷŴ���С
    {
        if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne || this.nNumMoveTow - this.nTheStartingPoint > this.pageTow) // �Ŵ�
        {
            return 1;
        }
        else if (this.nNumMoveOne - this.nTheStartingPoint > this.pageOne || this.nNumMoveTow + this.nTheStartingPoint < this.pageTow) //��С
        {
            return 0;
        }
        else {
            return -1;
        }
    },
    limits: function () {
        if (this.iMgObj[0].offsetWidth <= this.clientWidth * 0.8 || this.iMgObj[0].offsetHeight <= this.iHeight * 0.8) {
            var nWidth = this.clientWidth * 0.8;
            var nHeight = this.iHeight * 0.8;
            this.iMgObj.css({
                'width': nWidth,
                'height': nHeight,
            });

            return 0;
        }
        else {
            return 1;
        }
    },
    upSmall: function () {
        if (this.iMgObj[0].offsetWidth < this.clientWidth) {
            this.iMgObj.animate(
            {
                width: this.iWidth,
                height: this.iHeight,
                left: 0,
                top: (this.clientHeight - this.iHeight) / 2
            }, { queue: false, duration: this.animationSpeed });
        }

        if (this.iMgObj[0].offsetHeight > this.tlg) {
            var nImgWidth = this.iMgObj[0].offsetWidth - 100;
            var nImgHeight = this.iMgObj[0].offsetHeight - 100
            var nImgLeft = this.iMgObj[0].offsetLeft + 50
            var nImgTop = this.iMgObj[0].offsetTop + 50;

            if (nImgLeft > 0) {
                nImgLeft = 0;
            }

            if (nImgTop > 0) {
                nImgTop = 0;
            }

            if ((this.clientWidth - nImgWidth) >= nImgLeft) {
                nImgLeft = this.clientWidth - nImgWidth;
            }

            if ((this.clientHeight - nImgHeight) >= nImgTop) {
                nImgTop = this.clientHeight - nImgHeight;
            }

            this.iMgObj.animate({
                width: nImgWidth,
                height: nImgHeight,
                left: nImgLeft,
                top: nImgTop
            }, { queue: false, duration: this.animationSpeed });
        }
    },
    recalculationTop: function () {
        this.res = 0;
        this.t = this.iMgObj[0].offsetWidth - this.clientWidth;
        this.l = ((this.iMgObj[0].offsetHeight - this.t));
        this.k = (this.clientHeight - this.l) / 2
        if (this.iMgObj[0].offsetTop < 0) {
            this.p = (((this.clientHeight - this.l) / 2) + Math.abs(this.iMgObj[0].offsetTop)) / this.t;
        }
        else {
            this.p = ((this.clientHeight - this.l) / 2) / this.t;
        }
    },
    amplificationOperationA: function (typeNum, evt)  // �Ŵ�A
    {


        if (this.iMgObj[0].offsetHeight >= this.tlg) {
            return;
        }

        if (typeNum) {
            this.tDisY1 = this.firstY - this.pageOne;
            this.tDisY2 = this.nNumMoveTow - this.lastY;
        }
        else {
            this.tDisY1 = this.firstY - this.pageOne;
            this.tDisY2 = this.lastY - this.nNumMoveTow;
        }

        this.firstY = this.pageOne;
        this.lastY = this.nNumMoveTow;

        this.elementWidth = this.iMgObj[0].offsetWidth;
        this.elementTop = this.iMgObj[0].offsetTop;
        this.elementLeft = this.iMgObj[0].offsetLeft;
        this.elementHeight = this.iMgObj[0].offsetHeight;

        this.elementWidthDynamic = this.tDisY1 + this.tDisY2;

        if (this.elementWidthDynamic < 1) {
            this.updateTouchValue(evt)
        }
        this.elementWidthDynamic = this.elementWidthDynamic * this.ispeed;

        this.iMgObj.css(
        {
            width: this.elementWidth + this.elementWidthDynamic,
            height: this.elementHeight + this.elementWidthDynamic
        });


        this.iMgObj.css("left", this.elementLeft - this.elementWidthDynamic / 2);
        this.iMgObj.css("top", this.elementTop - this.elementWidthDynamic / 2);

    },
    narrowImgA: function (typeNum, evt)  //A ��С
    {
        if (typeNum) {
            this.tDisY1 = this.nNumMoveOne - this.firstY;
            this.tDisY2 = this.lastY - this.nNumMoveTow;
        }
        else if (typeNum == 0) {
            this.tDisY1 = this.firstY - this.nNumMoveOne;
            this.tDisY2 = this.nNumMoveTow - this.lastY;
        }

        this.firstY = this.nNumMoveOne;
        this.lastY = this.nNumMoveTow;

        this.elementWidth = this.iMgObj[0].offsetWidth;
        this.elementTop = this.iMgObj[0].offsetTop;
        this.elementLeft = this.iMgObj[0].offsetLeft;
        this.elementHeight = this.iMgObj[0].offsetHeight;

        this.elementWidthDynamic = this.tDisY1 + this.tDisY2;

        this.elementWidthDynamic = this.elementWidthDynamic * this.ispeed;

        this.iMgObj.css({
            width: this.elementWidth - (this.elementWidthDynamic),
            height: this.elementHeight - (this.elementWidthDynamic)
        });
        // �������ƣ���ֹͼƬ����������

        this.iMgObj.css('left', this.elementLeft + ((this.elementWidthDynamic / 2)));
        this.iMgObj.css('top', this.elementTop + ((this.elementWidthDynamic / 2)));
    }
}