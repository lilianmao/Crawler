var isFirst;// 是否是第一次访问
var isIndex;// 是否是首页
var is2G = false;// 是否是2G网络
var reNum = 0;// 页面刷新次数

//此次点击是否滑动
var CLICK_HAVE_SLIDE = false;

//页面临时参数
var PAGE_TEMPORARY_PARAMETERS = "";

// 截取url参数
function getUrlStr(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return unescape(r[2]);
    return 0;
};
reNum = parseInt(getUrlStr('reNum'));

// 删除url参数
function delUrlStr(url, ref) {
    return url.replace(new RegExp("\\b" + ref + "=[^&]*", "gi"), "").replace(/\?+|\?+\&+/gi, "?").replace(/\&+/gi, "&").replace(/(?:\?+|\&+)$/gi, "");
};

// 等待加载PhoneGap
if (document.addEventListener)
    document.addEventListener("deviceready", onDeviceReady, false);

// PhoneGap加载完毕
function onDeviceReady() {
    //回退键
    document.addEventListener("backbutton", eventBackButton, false);
    // 返回键
    document.addEventListener("menubutton", eventMenuButton, false);
    // 菜单键
    document.addEventListener("searchbutton", eventSearchButton, false);

    // 搜索键
    if (true_index) {
        isIndex = true;
    } else {
        isINdex = false;
    }
    if (isIndex) {
        isFirst = getDB("index");
    }
};

//按钮事件
function eventBackButton() {
    //微店宝内编辑子页返回，秦密，2015-1-30
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
    navigator.notification.confirm('确定退出程序吗？', function (button) {
        if (button == '1') {
            //navigator.app.exitApp();
            close_app();
        }
    }, '退出', '确定,取消');
};

function removeBack() {
    document.removeEventListener("backbutton", exitApp, false);
    document.removeEventListener("backbutton", eventBackButton, false);

    // 注销返回键
};

// 菜单键
function eventMenuButton() { };

// 搜索键
function eventSearchButton() { };

//md5插件
function successMd(msg) {
    //返回md5的字符串
    alert(msg);
}
function failMd() {
    alert('md5失败');
}
var StringMd5 = {
    strToMd5: function (str) {
        cordova.exec(successMd, failMd, "CDVMd5", "StrMd5", [str]);
    }
}
//调用
function toMd5(str) {
    StringMd5.strToMd5(str);
}

// 播放音频
var my_media = null;
var mediaTimer = null;
function playAudio(src) {
    // 从目标文件创建Media对象
    my_media = new Media(src, onSuccess, onError);
    // 播放音频
    my_media.play();
    // 每秒更新一次媒体播放到的位置
    if (mediaTimer == null) {
        mediaTimer = setInterval(function () {
            // 获取媒体播放到的位置
            my_media.getCurrentPosition(
			// 获取成功后调用的回调函数
			function (position) {
			    if (position > -1) {
			        setAudioPosition((position / 1000) + "sec");
			    }
			},
			// 发生错误后调用的回调函数
			function (e) {
			    setAudioPosition("Error: " + e);
			});
        }, 1000);
    }
};

// 暂停音频播放
function pauseAudio() {
    if (my_media)
        my_media.pause();
};

// 停止音频播放
function stopAudio() {
    if (my_media)
        my_media.stop();
    clearInterval(mediaTimer);
    mediaTimer = null;
};

// 创建Media对象成功后调用的回调函数
function onSuccess() {
};

// 创建Media对象出错后调用的回调函数
function onError(error) { };

// toast弹出提示，调用方法：showToast(content);
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
//打开外链
function open_outSide(url) {
    window.OutSide.outSide(url, function (res) {
    }, function (error) {
        showToast(error);
    });
};

// 检查网络情况
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
// 检查sdcard的文件是否存在
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
                showToast("请检查网络连接");
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
            showToast("请检查网络连接");
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



// 下载缓存到本地 调用方法：loadPageURL(url,localUrl,bool);
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

// 打开sd卡页面
function openUrl() {
    window.location = url_open + '&reNum=' + reNum;
};

// 下载超时时调用
function timeOut() {
    showToast("网络不给力，更新失败");
    isStop = true;
    $("#update").css("display", "none");
    $("#autoupdate").css("display", "none");
};

function showError() {
    $("#loading").css("display", "none");
    showToast("数据加载失败，请稍后再试");
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
 * 检查版本更新 调用方法：updateApp();
 */
function alertUpdate(url, name, time, size) {
    navigator.notification.confirm('发现有新版本:\n名称:' + name + '\n更新时间:' + time + '\n大小:' + size + '\n是否更新？', function (button) {

        if (button == '1') {
            // goToBrowser(url);
            Down_App(url, name);
        }
    }, '版本更新', '立即更新,稍后更新');
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


//ios版本更新
function download_ios() {
    top.open('http://www.quickapp.cn/common/qm/download/getApp.html?idcorp=' + _sys_idcorp + '&platform=ios&dname=yes', '_blank',
            'location=yes');
}
function ios_update(name, time, size) {

    navigator.notification.confirm('发现有新版本:\n名称: ' + name + '\n更新时间: '
            + time + '\n大小: ' + size + '\n是否更新？', function (button) {
                if (button == '1') {
                    download_ios();
                }
            }, '版本更新', '立即更新,稍后更新');
}

function alert_ios(name, time, size) {


    if (/[?&](ios=cache)\b/gi.test(window.location) == true) {
        //新版
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
        //旧版
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
        jsonp: "callbackparam",//服务端用于接收callback调用的function名的参数
        jsonpCallback: "success_jsonpCallback",//callback的function名称
        success: function (json) {
            var time1 = json[0].time;
            alert_ios(json[0].name, json[0].time, json[0].size);
        },
        error: function () {
            // alert('fail');
        }
    });
}


// 自动刷新
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


//剪切板
function success() { }

function fail() { }

var Pasteboard = {
    paste: function (success, fail, str) {
        top.cordova.exec(success, fail, "Pasteboard", "paste", [str]);
    }

};
//调用剪切板方法
function pasteStr(str, func_success, func_fail) {
    Pasteboard.paste(
      func_success,
      func_fail, str);
}


//下载app新版本
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

//返回首页
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

//关闭app
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
/*获得根目录*/
var href_ios = window.location.href;
var downFolder;
if (/[?&](from=ios)\b/gi.test(href_ios) == true) {
    href_ios = href_ios.substring(0, href_ios.indexOf('sdcard') + 7);
    downFolder = href_ios.substring(href_ios.indexOf('file://') + 7, href_ios.length);
    dwonFolder = encodeURI(downFolder);
}

/* 记录临时缓存*/
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


// ios 检测网络链接 并提示
function checkConIosCache(url) {

    if (checkConnection() == false) {

        var name = url.substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.')) + '.html';

        window.location.href = downFolder + name + "?from=ios&ios=cache";
        setTimeout(function () {
            alert('网络不给力,请检查网络链接');
        }, 3000);

        return;
    }
};

//获取下载地址（获取打包文件的下载地址）
function getResponseText(url) {
    // ios测试网络
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

//文件下载
function loadPageURL_ios(url, localUrl, bool) {
    //去掉ios标识（某处有冲突，后面会再加回）
    url = url.replace(/from=ios|ios=cache|renum=\d+|loadurl=[^&]+/gi, "");

    //去掉ios输入时的未知字符(%25u2006)
    url = url.replace(/%25u2006/gi, "");

    //整理多余的?、&（如??、?&、&&）
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
            //  alert('打开本地');
            tar = decodeURI(url);
            tar += tar.indexOf("?") == -1 ? "?from=ios&ios=cache" : "&from=ios&ios=cache";

            if (PAGE_TEMPORARY_PARAMETERS != "")
                tar += "&" + PAGE_TEMPORARY_PARAMETERS;

            window.location.href = tar;
            return;
        } else {

            //alert('打开远程');
            url += url.indexOf("?") == -1 ? "?from=ios&ios=cache" : "&from=ios&ios=cache";

            uri = getResponseText(url);

            loadUrl = "&loadUrl=" + encodeURIComponent(url);

            var name = url.substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.')) + '.html';

            tar = decodeURI(downFolder + name);

            //记录临时文件
            saveCacheFile(name);
        }

    } else {

        // 强制刷新
        if (window.location.href.indexOf("&loadUrl") == -1) {

            // alert('刷新本地');

            var name = url.substring(url.lastIndexOf('sdcard') + 7, url.length);

            tar = decodeURI(downFolder + name);

            uri = getResponseText(localUrl + '&ios=cache');

        } else {

            //  alert('刷新远程');
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

    //去掉双问号
    tar = tar.replace(/\?$/gi, "");

    fileTransfer.download(uri, tar, function (entry) {
        tar = tar + "?from=ios" + '&reNum=' + reNum + loadUrl + "&ios=cache";

        if (PAGE_TEMPORARY_PARAMETERS != "")
            tar += "&" + PAGE_TEMPORARY_PARAMETERS;

        window.location.href = tar;
    }, function (error) {
        alert("加载失败！");
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
    //判断是否滑动
    var coordinate = { x: 0, y: 0 }, offset = { x: 0, y: 0 };

    var $body = $(document.body);

    //划动开始
    //记录开始坐标，重置划动状态
    $body.on(ClickStartEvent, function (e) {
        CLICK_HAVE_SLIDE = false;
        if (ClickStartEvent == 'touchstart')
            e = e.originalEvent.targetTouches[0];
        coordinate.x = e.clientX;
        coordinate.y = e.clientY;
        offset.x = 0;
        offset.y = 0;
    });

    //划动中
    //移动距离超过5px，划动状态设置为已划动
    //划动状态为已划动后，划动中触发时无操作
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

    //划动结束
    //重置划动状态
    $body.on(ClickEndEvent, function (e) {
        CLICK_HAVE_SLIDE = false;
    });

    //ios 打电话
    $(".service-phone").parent().on(clickEvent, function (e) {
        if (/[?&]from=ios\b/gi.test(location.href) == true)
            location.href = $(this).attr("href");
    });

    //图片点击后显示大图
    $body.delegate('img:not(.notbig)', clickEvent, function () {
        var $this = $(this), a = $this.parents("a,.cutauchor,.opendialog,.cutJump,.cutjump");

        //编辑模式时不放大
        if (/from2=(?:editview|weidbview)/gi.test(location.href) == true)
            return true;

        if (a.length == 0)
            ImgLarge($this);
    });

    //目标点击效果（abox）
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

        //300ms后清除点击效果
        setTimeout(function () {
            jTMP.removeClass("abox-active");
        }, 300);
    });

    //大部分点击跳转事件在此处理
    $body.delegate('.cutauchor,a:not(".notcut,.opendialog,openfloat,.openslide,.cutJump,.cutjump,.video")',
        ClickEvent, function (e) {
            if (CLICK_HAVE_SLIDE == true)
                return;

            //在点击有效时才禁用默认
            e.preventDefault();

            cutAuchor(encodeURI($(this).attr("href")), $(this));
        });

    //跳转出App
    $body.delegate('.cutjump,.cutJump', clickEvent, function (e) {
        var href = encodeURI($(this).attr("href"));
        var url = "http://m.liming9309.quickapp.cn/common/qm/http/redirectApp.html?title=" + encodeURI(escape(document.title)) + "&url=" + href;
        goToBrowser(url);
        e.preventDefault();
    });

    //视频
    $body.delegate('.video', clickEvent, function (e) {
        if (typeof this.VideoPanel != "undefined") {
            this.VideoPanel.show();
            e.preventDefault();
        }

        var href = $(this).attr("href");
        var $html = $('<div class="video-panel">'
                        + '<div class="video">'
                            + '<video controls="controls" src="' + href + '">您的浏览器不支持 video 标签。</video>'
                        + '</div>'
                        + '<div class="back">返回</div>'
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
        //ios新版
        if (/[?&]ios=cache\b/gi.test(location.href) == true)
            url += "&ios=cache";

        //android
        if (/[?&]from=app\b/gi.test(location.href) == true)
            url += "&from=app";

        location.href = url;

        e.preventDefault();
    });

    //不截获
    $body.delegate('.notcut', ClickEvent, reset);
});

function cutAuchor(href, jTarget, flag, _target) {
    //app中有可能出现 href = undefined 时崩溃的情况
    if (typeof href == "undefined")
        return false;

    href = href.replace(/&flag=appload/gi, "");

    href = doubleDomain(href);

    if (typeof _target == "undefined")
        _target = window;

    //点击时加入样式
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

    //可视化编辑时
    try {
        if (/from2=(editview|weidbview)/gi.test(location.href) == true) {
            var from2_type = RegExp.$1;
            //有class=this-edit时，不跳转
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
                //整理href
                href = href.replace(/(?:^http:\/\/m\.[^.]+\.quickapp\.cn)|(?:dname=yes)|(?:from2=editview)|(?:client=m)|(?:return=1)/gi, "").replace(/\&+/gi, "&").replace(/\?\&+/gi, "?");

                //首页时
                if (href == "/" || href == "" || href.indexOf("?") == 0) {
                    if (typeof top._sys_admin_idcorp != "undefined") {
                        href = "http://m.liming9309.quickapp.cn/corpsvc/temp/t/mdefault.aspx?idcorp=" + top._sys_admin_idcorp + "&dname=yes&from2=" + from2_type + "&client=m&return=1";
                    }
                }
                else {//子页时
                    href = href.indexOf("?") == -1 ? href + "?dname=yes&from2=" + from2_type + "&client=m&return=1" : href + "&dname=yes&from2=" + from2_type + "&client=m&return=1";
                }
            }
        }
    } catch (e) { alert(e) };

    //正常访问
    if (/[?&](from=app|ios=cache)\b/gi.test(location.href) == false) {
        checkConnectionIos();
        _target.location.href = href;
        return false;
    }

    //app中有可能出现 href = undefined 时崩溃的情况
    if (typeof href == "undefined")
        return false;

    PAGE_TEMPORARY_PARAMETERS = /\?(.+)$/gi.test(href) == true ? RegExp.$1 : "";

    //ios app内访问
    if (/[?&]ios=cache\b/gi.test(href) == false && /[?&]ios=cache\b/gi.test(location.href) == true) {
        try {
            //外链用窗口方向打开
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

    //android app内访问
    if (/[?&]from=app\b/gi.test(href) == false && /[?&]from=app\b/gi.test(location.href) == true) {
        try {
            //外链用窗口方向打开
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

// 下拉刷新ajax调用
function getPakageInfo(result) {// 取得打包信息
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

// 双域名hack
function doubleDomain(href) {
    return /^(http:\/\/m\.[^./]+\.quickapp\.cn){2,}/gi.test(href) == true ? href = RegExp.$1 + href.replace(/http:\/\/m\.[^./]+\.quickapp\.cn/gi, "") : href;
};

// 判断是否为外链
function isOutLink(href) {
    //带域名且不是quickapp的
    return /^(?:http:\/\/)?(?:[^./&?]+\.)+(?:cn|com|net|me|co|org|gov)/gi.test(href) == true && href.toLowerCase().indexOf(".quickapp.cn") == -1;
};

// 滑动及下拉刷新调用
function checkPageURL(href) {

    if (checkConnection() == false) {
        alert('网络不给力,请检查网络链接');
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
        // 包含"/mnt/sdcard"时取得真正的url后调用loadpageURL

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
        // 不包含"/mnt/sdcard"时直接调用loadpageURL
    }
};

/* ios 检测网络链接 并提示*/
function checkConnectionIos() {
    if (/[?&]from=ios\b/gi.test(location.href) == true &&

checkConnection() == false) {
        alert('网络不给力,请检查网络链接');
        return false;
    }
};

/*
 * app_DB
 */

// 创建数据库
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

// 插入或修改
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

// 删除字段
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

// 修改字段
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

// 查询
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

/** 预先加载页面图片**/
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
    点击图片放大
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



    oTopElement.find("body").eq(0).append(sRes + '<div id="popup" style="z-index:210000000;position:absolute;left:' + aPosition[1] + 'px;top:' + aPosition[0] + 'px;width:' + clientWidth * 0.6 + 'px;height:' + clientHeight * 0.6 + 'px;"><div id="down-load">下载</div><div id="close"></div><div id="content" style="width:' + aPosition[3] + 'px;height:' + aPosition[2] + 'px"><img id="poImg" src="' + sUrl + '" width="100%" /></div></div>');

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
/*******图片下载******/
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
	    showToast("文件保存在:" + res);
	},
	function (error) {
	    showToast(error + "保存失败，请重试");
	});

}
/***多点触屏***/

function ImageAmplification(configure) {
    this.iMgObj = configure.iMgObj;   // 
    /**************
    *放大缩小功能变量方法*
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
    *滑动图片功能变量*
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


        /******上下滑动******/
        if (this.imgSlideT()) {
            this.imgGoTop();

        }
        else if (this.imgSlideT() == 0) {
            this.imgGoBottom();

        }

        /******左右滑动******/
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
            if (this.startY - this.imgY > this.specifications) //上滑动
            {
                return 1;
            }
            else if (this.imgY - this.startY > this.specifications)  // 下滑动
            {
                return 0;
            }
        }
    },
    imgSlideL: function () {
        if (Math.abs(this.imgX - this.startX) > this.specifications) {
            if (this.imgX - this.startX > this.specifications)    //  右滑动
            {
                return 1;
            }
            else if (this.startX - this.imgX > this.specifications)  // 左滑动
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
        this.pageOne = evt.touches[0].clientY; // 记录手指按下时的第1坐标
        this.pageTow = evt.touches[1].clientY; // 记录手指按下时的第2坐标
        this.firstY = evt.touches[0].clientY; //记录手指按下时的第1坐标
        this.lastY = evt.touches[1].clientY;   //记录手指按下时的第2坐标
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

        //  判断哪个手指先按下
        if (__this__.priority()) {
            if (__this__.amplificationA() == 1)  // 放大
            {
                this.release = true;
                this.strops = false;

                __this__.amplificationOperationA(0, oEvent);
            }
            else if (__this__.amplificationA() == 0)   // 缩小
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
            if (__this__.amplificationB() == 1)  // 放大
            {
                this.release = true;
                this.strops = false;
                __this__.amplificationOperationA(1, oEvent);

            }
            else if (__this__.amplificationB() == 0)  //缩小
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
    amplificationA: function ()  // 放大缩小
    {
        if (this.nNumMoveOne - this.nTheStartingPoint > this.pageOne || this.nNumMoveTow + this.nTheStartingPoint < this.pageTow)  //放大
        {
            return 1;
        }
        else if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne || this.nNumMoveTow - this.nTheStartingPoint > this.pageTow)  //缩小 
        {
            return 0;
        }
        else if (this.nNumMoveOne + this.nTheStartingPoint > this.pageOne && this.nNumMoveTow - this.nTheStartingPoint > this.pageTow) {
            return -1;   // 往下滑动
        } else if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne && this.nNumMoveTow + this.nTheStartingPoint < this.pageTow) {
            return -1; // 上滑动
        }
    },
    amplificationB: function ()  // 判断放大缩小
    {
        if (this.nNumMoveOne + this.nTheStartingPoint < this.pageOne || this.nNumMoveTow - this.nTheStartingPoint > this.pageTow) // 放大
        {
            return 1;
        }
        else if (this.nNumMoveOne - this.nTheStartingPoint > this.pageOne || this.nNumMoveTow + this.nTheStartingPoint < this.pageTow) //缩小
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
    amplificationOperationA: function (typeNum, evt)  // 放大A
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
    narrowImgA: function (typeNum, evt)  //A 缩小
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
        // 左右限制，防止图片滑出可视区

        this.iMgObj.css('left', this.elementLeft + ((this.elementWidthDynamic / 2)));
        this.iMgObj.css('top', this.elementTop + ((this.elementWidthDynamic / 2)));
    }
}