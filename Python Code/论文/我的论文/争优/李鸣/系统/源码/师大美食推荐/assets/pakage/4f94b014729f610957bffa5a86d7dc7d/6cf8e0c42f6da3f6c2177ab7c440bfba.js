/*
    OpenDialogConfig
*/
var OpenDialogConfig = function (config) {
    if (typeof config == 'undefined')
        config = {};

    this._ClickEvent = "click";

    /*
        帧ID
    */
    this._FrameID = typeof config.FrameID == 'undefined' ? "" : config.FrameID;

    /*
        是否每次都重新加载
    */
    this._Reload = typeof config.Reload == 'undefined' ? false : config.Reload;

    /*
        锁定滚动
    */
    this._ScrollLock = typeof config.ScrollLock == 'undefined' ? false : config.ScrollLock;

    /*
        滚动样式定义
    */
    this._Scroll = typeof config.Scroll == 'undefined' ? { "overflow": "hidden" } : config.Scroll;

    /*
    类别
    值为iframe或div
    默认值：iframe
    */
    this._CoreType = typeof config.CoreType == 'undefined' ? 'iframe' : config.CoreType + '';

    /*
    加载过程
    值为true或false
    默认值：true
    */
    this._Loading = typeof config.Loading == 'undefined' ? true : config.Loading;

    this._LoadingText = typeof config.LoadingText == 'undefined' ? "" : config.LoadingText;

    /*
    宽度
    像素或百分比为单位
    默认值：auto
    */
    this._Width = typeof config.Width == 'undefined' ? 'auto' : config.Width + '';

    /*
   最小宽度
   像素或百分比为单位
   默认值：5%
   */
    this._MinWidth = typeof config.MinWidth == 'undefined' ? '5%' : config.MinWidth + '';

    /*
   最大宽度
   像素或百分比为单位
   默认值：90%
   */
    this._MaxWidth = typeof config.MaxWidth == 'undefined' ? '90%' : config.MaxWidth + '';

    /*
    高度
    像素或百分比为单位
    默认值：auto
    */
    this._Height = typeof config.Height == 'undefined' ? 'auto' : config.Height + '';

    if (this._Width == 'auto' || this._Height == 'auto')
        this._Loading = false;

    /*
  最小高度
  像素或百分比为单位
  默认值：5%
  */
    this._MinHeight = typeof config.MinHeight == 'undefined' ? '5%' : config.MinHeight + '';

    /*
   最大高度
   像素或百分比为单位
   默认值：90%
   */
    this._MaxHeight = typeof config.MaxHeight == 'undefined' ? '90%' : config.MaxHeight + '';

    /*
    横向偏移微调
    */
    this._Offset_X = typeof config.Offset_X == 'undefined' ? '0px' : config.Offset_X + '';

    /*
    纵向偏移微调
    */
    this._Offset_Y = typeof config.Offset_Y == 'undefined' ? '0px' : config.Offset_Y + '';

    /*
    皮肤
    值为以下一种：default
    默认值：default
    */
    this._Skin = typeof config.Skin == 'undefined' ? 'default' : config.Skin + '';

    /*
        边框样式名
        样式表 class名
        默认值:od-border-default
    */
    this._BorderStyle = typeof config.BorderStyle == 'undefined' ? 'od-border-' + this._Skin : config.BorderStyle + '';

    /*
    位置
    值为1至9，auto
    默认值：5
    */
    this._Position = typeof config.Position == 'undefined' ? "5" : config.Position + '';

    /*
        相对水平定位方向
    */
    this._PositionXName;

    /*
       相对水平定位值
   */
    this._PositionXValue;

    /*
       相对垂直定位方向
   */
    this._PositionYName;

    /*
      相对垂直定位值
  */
    this._PositionYValue;

    /*
        自定义时相对位置的目标元素
    */
    this._PositionFollow;

    /*
       横向偏移
       单位为像素或百分比
       Position为custom时，值为left、right、center
       默认值：0px
   */
    this._PositionXOffset = typeof config.PositionXOffset == 'undefined' ? "0px" : config.PositionXOffset + '';

    /*
        纵向偏移
        单位为像素或百分比
        Position为custom时，值为top、bottom、middle
        默认值：0px
    */
    this._PositionYOffset = typeof config.PositionYOffset == 'undefined' ? "0px" : config.PositionYOffset + '';

    /*
        动画方向
        值为horizon或vertical
    */
    this._SlideDirection;

    if (this._Position != "custom") { //当不是自定义时

        if (/left|center|right/gi.test(this._PositionXOffset) == true)
            this._PositionXOffset = "0px";

        if (/top|middle|bottom/gi.test(this._PositionYOffset) == true)
            this._PositionYOffset = "0px";

        this._PositionXName = "left";
        this._PositionYName = "top";

        this._SlideDirection = "vertical";
        switch (this._Position) {
            case '1':
                this._PositionXValue = "0px";
                this._PositionYValue = "0px";
                break;
            case '2':
                this._PositionXValue = "50%";
                this._PositionYValue = "0px";
                break;
            case '3':
                this._PositionXName = "right";
                this._PositionXValue = "0px";
                this._PositionYValue = "0px";
                break;
            case '4':
                this._PositionXValue = "0px";
                this._PositionYValue = "50%";
                this._SlideDirection = "horizontal";
                break;
            case '5':
                this._PositionXValue = "50%";
                this._PositionYValue = "50%";
                this._SlideDirection = "horizontal";
                break;
            case '6':
                this._PositionXName = "right";
                this._PositionXValue = "0px";
                this._PositionYValue = "50%";
                this._SlideDirection = "horizontal";
                break;
            case '7':
                this._PositionXValue = "0px";
                this._PositionYName = "bottom";
                this._PositionYValue = "0px";
                break;
            case '8':
                this._PositionXValue = "50%";
                this._PositionYName = "bottom";
                this._PositionYValue = "0px";
                break;
            case '9':
                this._PositionXName = "right";
                this._PositionXValue = "0px";
                this._PositionYName = "bottom";
                this._PositionYValue = "0px";
                break;
            default:
                this._PositionXValue = "50%";
                this._PositionYValue = "50%";
                this._SlideDirection = "horizontal";
                break;
        }
    }

    //当自定义时
    if (this._Position == "custom") {
        if (/left|center|right/gi.test(this._PositionXOffset) == false)
            this._PositionXOffset = "left";

        if (/top|middle|bottom/gi.test(this._PositionYOffset) == false)
            this._PositionYOffset = "top";

        this._PositionXValue = 0.0;
        this._PositionYValue = 0.0;

        this._PositionXName = config.PositionXName;

        this._PositionYName = config.PositionYName;

        this._SlideDirection = config.SlideDirection;

        this._PositionFollow = config.PositionFollow;
    }

    /*
    层叠位置
    以整数为单位
    默认值：10
    */
    this._Z = typeof config.Z == 'undefined' ? '210001' : config.Z + '';

    /*
    依附页面
    值为以下一种：top、parent、default
    默认值：default
    */
    this._Parent = typeof config.Parent == 'undefined' ? 'default' : config.Parent + '';
    this._CrossDomain = false;
    switch (this._Parent) {
        case 'top':
            this._Parent = window;
            do {
                try {
                    if (this._Parent === top.window)
                        break;
                    var test = this._Parent.parent.document.body;
                    this._Parent = this._Parent.parent;
                } catch (e) {
                    this._CrossDomain = true;
                }
            }
            while (this._CrossDomain == false)
            break;
        case 'parent':
            this._Parent = window;
            try {
                var test = this._Parent.parent.document.body;
                this._Parent = this._Parent.parent;
            } catch (e) {
                this._CrossDomain = true;
            }
            break;
        default:
            this._Parent = window;
            this._CrossDomain = false;
            break;
    }

    /*
    遮罩层显示过程动画时间
    以毫秒为单位
    默认值：200毫秒
    */
    this._MaskShowSpeed = typeof config.MaskShowSpeed == 'undefined' ? 200 : config.MaskShowSpeed;

    /*
    遮罩层隐藏过程动画时间
    以毫秒为单位
    默认值：200毫秒
    */
    this._MaskHideSpeed = typeof config.MaskHideSpeed == 'undefined' ? 200 : config.MaskHideSpeed;

    /*
    对话框显示过程动画时间
    以毫秒为单位
    默认值：500毫秒
    */
    this._DialogShowSpeed = typeof config.DialogShowSpeed == 'undefined' ? 500 : config.DialogShowSpeed;

    /*
    对话框隐藏过程动画时间
    以毫秒为单位
    默认值：500毫秒
    */
    this._DialogHideSpeed = typeof config.DialogHideSpeed == 'undefined' ? 500 : config.DialogHideSpeed;

    /*
    是否需要遮罩层
    值为true或false
    默认值：true
    */
    this._NeedMask = typeof config.NeedMask == 'undefined' ? true : config.NeedMask;

    /*
    是否需要标题
    值为true或false
    默认值：true
    */
    this._NeedTitle = typeof config.NeedTitle == 'undefined' ? true : config.NeedTitle;

    /*
    是否需要关闭按钮
    值为true或false
    默认值：true
    */
    this._NeedClose = typeof config.NeedClose == 'undefined' ? true : config.NeedClose;

    /*
    点击遮罩层是否关闭
    值为true或false
    默认值：true
    */
    this._NeedClickMaskClose = typeof config.NeedClickMaskClose == 'undefined' ? true : config.NeedClickMaskClose;

    /*
    显示或关闭时是否显示动画
    值为true或false
    默认值：true
    */
    this._Slide = typeof config.Slide == 'undefined' ? true : config.Slide;

    /*
    显示动画时是否原地滑出
    值为true或false
    默认值：false
    */
    this._SlideFixed = typeof config.SlideFixed == 'undefined' ? false : config.SlideFixed;

    /*
   对话框是否跟随可见区域移动
   值为true或false
   默认值:true
   */
    this._FollowIn = typeof config.FollowIn == 'undefined' ? true : config.FollowIn;

    /*
   对话框背景类型
   值为img或color
   默认值:color
   */
    this._DialogBackgroundType = typeof config.DialogBackgroundType == 'undefined' ? "color" : config.DialogBackgroundType + '';

    /*
   对话框背景图片
   值为链接
   默认值:空页面
   */
    this._DialogBackgroundImage = typeof config.DialogBackgroundImage == 'undefined' ? "about:blank" : config.DialogBackgroundImage + '';

    /*
  对话框背景颜色
  值为颜色值
  默认值:白色
  */
    this._DialogBackgroundColor = typeof config.DialogBackgroundColor == 'undefined' ? "transparent" : config.DialogBackgroundColor + '';

    /*
   遮罩层景类型
   值为img或color
   默认值:color
   */
    this._MaskBackgroundType = typeof config.MaskBackgroundType == 'undefined' ? "color" : config.MaskBackgroundType + '';

    /*
   遮罩层背景图片
   值为链接
   默认值:空页面
   */
    this._MaskBackgroundImage = typeof config.MaskBackgroundImage == 'undefined' ? "about:blank" : config.MaskBackgroundImage + '';

    /*
  遮罩层背景颜色
  值为颜色值
  默认值:白色
  */
    this._MaskBackgroundColor = typeof config.MaskBackgroundColor == 'undefined' ? "white" : config.MaskBackgroundColor + '';

    /*
  遮罩层透明度
  值为0至1的小数
  默认值:0.5
  */
    this._MaskOpacity = typeof config.MaskOpacity == 'undefined' ? "0.5" : config.MaskOpacity + '';

    /*
        内容页显示后回调函数
    */
    this._CallbackFunction = typeof config.CallbackFunction == 'undefined' ? function () { } : config.CallbackFunction;

    /*
        内容页显示后回调函数的参数数组
    */
    this._CallbackParams = typeof config.CallbackParams == 'undefined' ? null : config.CallbackParams;

    /*
        关闭回调事件
    */
    this._HideCallBack = typeof config.HideCallBack == 'undefined' ? function () { } : config.HideCallBack;

    /*
        关闭回调参数数组
    */
    this._HideCallBackParams = typeof config.HideCallBackParams == 'undefined' ? null : config.HideCallBackParams;
};

/*
    OpenDialogUtil
*/
var OpenDialogUtil = function (o) {
    this._Config = o._Config;
    this._Body = o._Body;
    this._jQuery = o._jQuery;
};

OpenDialogUtil.prototype = {
    "isOuterLink": function (link) { //是否外链
        link = link.toLowerCase();

        if (link.indexOf("http://") != 0)
            return false;

        var domain = this._Config._Parent.document.domain.toLowerCase().replace('http://', '').replace('/', '').replace(/\.+/gi, '\\.'),
        pattern = new RegExp("^http://" + domain + "\\b", "gi");

        return pattern.test(link) == false;
    },
    "getPublicPositionInfo": function () { //位置信息
        var info = {};

        /*
            client
        */
        info["client"] = this.getClient();

        /*
            body
        */
        info["body"] = {
            "x": jQuery(this._Config._Parent.document).width(),
            "y": jQuery(this._Config._Parent.document).height()
        };

        /*
            custom-offset
        */
        info["custom_offset"] = this.getPixels(this._Config._Offset_X, this._Config._Offset_Y);

        return info;
    },
    "getCurrentPositionInfo": function (info) {
        /*
            scroll
        */
        var jQueryDocument = this._jQuery(this._Config._Parent.document.body);
        info["scroll"] = this._Config._FollowIn == true ? this.getPixels(0, 0) : this.getPixels(jQueryDocument.scrollLeft(), jQueryDocument.scrollTop());

        /*
            custom、offset
        */
        if (this._Config._Position != "custom") {
            info["custom"] = this.getPixels(this._Config._PositionXValue, this._Config._PositionYValue);
            info["offset"] = this.getPixels(this._Config._PositionXOffset, this._Config._PositionYOffset);

            if (this._Config._PositionXName == "right")
                info["custom"].x = -parseInt(info["custom"].x);

            if (this._Config._PositionYName == "bottom")
                info["custom"].y = -parseInt(info["custom"].y);
        }

        if (this._Config._Position == "custom") {
            var jQueryFollow = this._jQuery(this._Config._PositionFollow),
                followWidth = parseInt(jQueryFollow.width()),
                followHeight = parseInt(jQueryFollow.height()),
                followOffset = jQueryFollow.offset(),
                followLeft = parseInt(followOffset.left),
                followTop = parseInt(followOffset.top);

            info["custom"] = {};
            info["custom"].x = this._Config._PositionXName == "left" ? followLeft : parseInt(info["client"].x) - followLeft;
            info["custom"].y = this._Config._PositionYName == "top" ? followTop : parseInt(info["client"].y) - followTop;

            info["offset"] = {};
            switch (this._Config._PositionXOffset) {
                case "left": //居左
                    info["offset"].x = this._Config._PositionXName == "left" ? 0 : parseInt(info["dialog"].x);
                    break;
                case "center": //居中
                    info["offset"].x = parseInt((parseFloat(followWidth - parseInt(info["dialog"].x)) / 2));
                    if (this._Config._PositionXName == "right")
                        info["offset"].x += parseInt(info["dialog"].x);
                    break;
                case "right": //居右
                    info["offset"].x = this._Config._PositionXName == "left" ? followWidth - parseInt(info["dialog"].x) : followWidth;
                    break;
                default:
                    break;
            }

            switch (this._Config._PositionYOffset) {
                case "top": //居上
                    info["offset"].y = this._Config._PositionYName == "top" ? -parseInt(info["dialog"].y) : 0;
                    break;
                case "middle": //居中
                    info["offset"].y = parseInt((parseFloat(followHeight - parseInt(info["dialog"].y)) / 2));
                    if (this._Config._PositionYName == "bottom")
                        info["offset"].y += parseInt(info["dialog"].y);
                    break;
                case "bottom": //居下
                    info["offset"].y = this._Config._PositionYName == "top" ? followHeight : followHeight + parseInt(info["dialog"].y);
                    break;
                default:
                    break;
            }
        }

        if (this._Config._PositionXName == "right") {
            info["scroll"].x = -parseInt(info["scroll"].x);
            info["offset"].x = -parseInt(info["offset"].x);
        }

        if (this._Config._PositionYName == "bottom") {
            info["scroll"].y = -parseInt(info["scroll"].y);
            info["offset"].y = -parseInt(info["offset"].y);
        }

        /*
            percent
        */
        info["percent"] = {
            "x": parseFloat(this._Config._PositionXValue) / 100.0,
            "y": parseFloat(this._Config._PositionYValue) / 100.0
        };

        //var text = '';
        //for (var key1 in info) {
        //    text += key1 + "：\r\n";
        //    for (var key2 in info[key1])
        //        text += key2 + "：" + info[key1][key2];
        //    text += "\r\n";
        //}
        //alert(text);

        return info;
    },
    "getPixels": function (x, y) { //百分比转像素
        var client = this.getClient();

        if (/%$/.test(x) == true)
            x = parseInt(parseInt(client.x) * parseInt(x.replace('%', '')) / 100);
        if (/%$/.test(y) == true)
            y = parseInt(parseInt(client.y) * parseInt(y.replace('%', '')) / 100);

        return {
            "x": x,
            "y": y
        };
    },
    "getClient": function () {
        var doc = this._Config._Parent.document.documentElement, client = {
            "x": parseInt(doc.clientWidth),
            "y": parseInt(doc.clientHeight)
        };

        if (client.y == 0)
            client.y = parseInt(this._Config._Parent.document.body.clientHeight);

        if (client.y == 0)
            client.y = jQuery(this._Config._Parent.document).height();

        return client;
    },
    "getWAH": function (panel) {
        var wah = this.getPixels(this._Config._Width, this._Config._Height);

        if (this._Config._CoreType == "div" && this._Config._Auto == true) {
            var flag = false;
            if (panel._j.css("display") != "block") {
                panel._j.show();
                flag = true;
            }

            var jDiv = panel._Dialog._ChildPanel._Div._j;

            if (this._Config._Width == "auto")
                wah.x = parseInt(jDiv.outerWidth());

            if (this._Config._Height == "auto")
                wah.y = parseInt(jDiv.outerHeight());

            //alert(jDiv.width() + "," + jDiv.outerWidth() + "," + jDiv.height() + "," + jDiv.outerHeight() + "," + jDiv.get(0).scrollWidth + "," + jDiv.get(0).offsetWidth + "," + jDiv.get(0).scrollHeight + "," + jDiv.get(0).offsetHeight);

            if (flag == true)
                panel._j.hide();
        }

        return wah;
    },
    "getClickEvent": function () {
        var system = {
            win: false,
            mac: false,
            xll: false
        };

        var platform = navigator.platform;
        system.win = platform.indexOf("Win") == 0;
        system.mac = platform.indexOf("Mac") == 0;
        system.x11 = (platform == "X11") || (platform.indexOf("Linux") == 0);

        return system.win || system.mac || system.xll ? "click" : "touchstart";
    }
};

/*
    OpenDialogStyle
*/
var OpenDialogStyle = function (o) {
    this._Config = o._Config;
    this._jQuery = o._jQuery;
};

OpenDialogStyle.prototype = {
    "addClass": function (jQueryTarget, className) {
        this.removeClass(jQueryTarget, className);
        jQueryTarget.addClass(className);
    },
    "removeClass": function (jQueryTarget, className) {
        while (typeof jQueryTarget.attr("class") != 'undefined' && jQueryTarget.attr("class").indexOf(className) != -1)
            jQueryTarget.removeClass(className);
    },
    "addBackGround": function (jQueryTarget, bgType, bgImg, bgColor) {
        if (bgType == 'img')
            jQueryTarget.css("backgroundImage", "url(" + bgImg + ")");
        if (bgType == 'color')
            jQueryTarget.css("backgroundColor", bgColor);
    }
};

/*
    OpenDialogEvent
*/
var OpenDialogEvent = function () { };

OpenDialogEvent.prototype = {
    "addEventListener": function (jQueryTarget, eventName, callbackFunction, callbackParam) {
        jQueryTarget.unbind(eventName).bind(eventName, function (e) {
            callbackFunction(callbackParam);
            e.preventDefault();
        });
    },
    "removeEventListener": function (jQueryTarget, eventName) {
        jQueryTarget.unbind(eventName);
    }
};

/*
    OpenDialog
*/
var OpenDialog = function (param, config) {
    config = new OpenDialogConfig(config);

    this._Config = config;
    this._Config._Auto = this._Config._Width == 'auto' || this._Config._Height == 'auto';

    this._Uri = '';
    this._Div = '';
    this._TitleContent = '';
    this._isOuterLink = false;
    this._Body = this._Config._Parent.document.body;
    this._Top = this;

    this._Callback;
    this._Callback_Param;

    this._Config._CoreType == "iframe" ? this.setUri(param) : this.setDiv(param);

    this.Init();
};

OpenDialog.prototype = {
    "Init": function () {
        if (typeof jQuery == 'undefined')
            return;

        this._jQuery = jQuery;

        this._Style = new OpenDialogStyle(this);

        this._Util = new OpenDialogUtil(this);

        this._Event = new OpenDialogEvent();

        this._PositionInfo = this._Util.getPublicPositionInfo();

        this._Config._ClickEvent = this._Util.getClickEvent();

        if (this._Config._NeedMask == true)
            this._Mask = new OpenDialogMask(this);

        if (this._Config._CoreType == "iframe")
            this._Event.addEventListener(this._jQuery(this._Config._Parent), "resize", this.resize, this);

        this._DialogPanel = new OpenDialogDialogPanel(this);
    },
    "Show": function (callback, param) {
        this._Callback = callback;
        this._Callback_Param = param;

        //自适应高宽时跨域帧无法显示
        if (this._Config._CoreType == "iframe") {
            this._isOuterLink = this._Util.isOuterLink(this.getUri());
            if (this._Config._Auto == true && this._isOuterLink == true)
                return false;
        }

        if (this._Config._NeedMask == true)
            this._Mask.Show();

        this._DialogPanel.Show();

        return true;
    },
    "ShowOver": function () {
        if (typeof this._Callback == 'function')
            this._Callback(this.Callback_Param);
    },
    "Hide": function () {
        this._DialogPanel.Hide();
    },
    "resize": function (_self) {
        _self._PositionInfo = _self._Util.getPublicPositionInfo();

        if (_self._Config._NeedMask == true)
            _self._Mask.resize();

        _self._DialogPanel.resize();
    },
    "setUri": function (uri) {
        this._Uri = uri;

        if (/from2=editview/gi.test(this._Config._Parent.location) == true) {
            //可视化编辑时
            var href = this._Uri;
            try {
                //整理href
                href = href.replace(/(?:^http:\/\/m\.[^.]+\.quickapp\.cn)|(?:dname=yes)|(?:from2=editview)|(?:client=m)|(?:return=1)/gi, "").replace(/\&+/gi, "&").replace(/\?\&+/gi, "?");

                //首页时
                if (href == "/" || href == "" || href.indexOf("?") == 0) {
                    if (typeof top._sys_admin_idcorp != "undefined") {
                        href = "http://m.liming9309.quickapp.cn/corpsvc/temp/t/mdefault.aspx?idcorp=" + top._sys_admin_idcorp + "&dname=yes&from2=editview&client=m&return=1";
                    }
                }
                else {//子页时
                    href = href.indexOf("?") == -1 ? href + "?dname=yes&from2=editview&client=m&return=1" : href + "&dname=yes&from2=editview&client=m&return=1";
                }
                this._Uri = href;
            } catch (e) { }
        }
    },
    "getUri": function (uri) {
        return this._Uri;
    },
    "setDiv": function (div) {
        this._Div = div;
    },
    "getDiv": function (div) {
        return this._Div;
    },
    "setTitleContent": function (title) {
        this._TitleContent = title;
    },
    "getTitleContent": function () {
        return this._TitleContent;
    },
    "setFrameHeight": function (height) {
        this._DialogPanel._Dialog._ChildPanel._Frame._j.css("height", parseInt(height) + "px");
    }
};

/*
    OpenDialogMask
*/
var OpenDialogMask = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this.Init();
};

OpenDialogMask.prototype = {
    "Init": function () {
        var maskHtml = '<div></div>';
        this._j = this._jQuery(maskHtml).hide();

        this._Style.addClass(this._j, 'od-sys-' + this._Config._Skin);
        this._Style.addClass(this._j, 'od-mask-' + this._Config._Skin);
        this._Style.addBackGround(this._j, this._Config._MaskBackgroundType, this._Config._MaskBackgroundImage, this._Config._MaskBackgroundColor);

        this._j.css({
            "z-index": this._Config._Z,
            "opacity": this._Config._MaskOpacity,
            "position": "absolute",
            "top": "0px",
            "left": "0px"
        });

        this._jQuery(this._Body).append(this._j);

        if (this._Config._NeedClickMaskClose == true)
            this._Event.addEventListener(this._j, this._Config._ClickEvent, this.ClickHide, this);
    },
    "Show": function () {
        this._PositionInfo = this._Container._PositionInfo;

        var css = {};

        this.setWidth(this._PositionInfo.body.x);
        this.setHeight(this._PositionInfo.body.y);
        if (this._PositionInfo.body.y == 0) {
            this.setHeight(this._PositionInfo.client.y);
            css["position"] = "fixed";
        }

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "ShowBegin": function () {
        this._j.fadeIn(this._Config._MaskShowSpeed);
    },
    "Hide": function () {

    },
    "HideBegin": function () {
        this._j.fadeOut(this._Config._MaskHideSpeed);
    },
    "ClickHide": function (mask) {
        mask._Container.Hide();
    },
    "resize": function () {
        this.Show();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogDialogPanel
*/
var OpenDialogDialogPanel = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;
    this._TempWidth;
    this._TempHeight;
    this._offsetTop;
    this._offsetLeft;
    this._offsetTempTop;
    this._offsetTempLeft;

    this.Init();
};

OpenDialogDialogPanel.prototype = {
    "Init": function () {
        var panelHtml = '<div></div>';
        this._j = this._jQuery(panelHtml).hide();


        this._Style.addClass(this._j, 'od-dp-' + this._Config._Skin);
        this._Style.addClass(this._j, 'od-sys-' + this._Config._Skin);

        var css_position = this._Config._FollowIn == true ? "fixed" : "absolute";

        this._j.css({
            "z-index": parseInt(this._Config._Z) + 1,
            "position": css_position
        });

        this._jQuery(this._Body).append(this._j);

        this._PositionInfo = this._Container._PositionInfo;

        this._Dialog = new OpenDialogDialog(this);
    },
    "Show": function () {
        this._j.hide();

        if (this._Config._NeedMask == true)
            this._Container._Mask.ShowBegin();

        var css = this.getPosition();

        //有滑入动画时
        if (this._Config._Slide == true && this._Config._SlideFixed == false) {
            if (this._Config._SlideDirection == "horizontal") {
                css.width = parseInt(this.getLeft()) + parseInt(this.getWidth());
                css[this._Config._PositionXName] = "0px";
            }
            if (this._Config._SlideDirection == "vertical") {
                css.height = parseInt(this.getTop()) + parseInt(this.getHeight());
                css[this._Config._PositionYName] = "0px";
            }
        }

        this.setTempWidth(css.width);
        this.setTempHeight(css.height);
        this.setTempLeft(css[this._Config._PositionXName]);
        this.setTempTop(css[this._Config._PositionYName]);

        this._j.css(css);

        this._Dialog.Show(this._JSON_Dialog);
    },
    "ShowBegin": function () {
        this._j.show();
        this._Dialog.ShowBegin();
    },
    "ShowOver": function () {
        var css = {
            "width": this.getWidth(),
            "height": this.getHeight()
        };
        css[this._Config._PositionXName] = this.getLeft();
        css[this._Config._PositionYName] = this.getTop();
        this._j.css(css);
        this._Dialog.ShowOver();

        this._Container.ShowOver();
    },
    "Hide": function () {
        var css = {
            "width": this.getTempWidth(),
            "height": this.getTempHeight()
        };
        css[this._Config._PositionXName] = this.getTempLeft();
        css[this._Config._PositionYName] = this.getTempTop();
        this._j.css(css);

        this._Dialog.Hide();
    },
    "HideBegin": function () {
        this._Dialog.HideBegin();
    },
    "HideOver": function () {
        if (this._Config._NeedMask == true)
            this._Container._Mask.HideBegin();

        this._j.hide();
        this._Dialog.HideOver();

        this._Config._HideCallBack(this._Config._HideCallBackParams);
    },
    "resize": function () {
        this._j.css(this.getPosition());

        this._Dialog.resize();
    },
    "getPosition": function () {
        //得到dialog高宽
        var dialog = this._JSON_Dialog = this._Util.getWAH(this);

        var x_border = parseInt(this._Dialog._j.css("borderLeftWidth")) + parseInt(this._Dialog._j.css("borderRightWidth")),
            y_border = parseInt(this._Dialog._j.css("borderTopWidth")) + parseInt(this._Dialog._j.css("borderBottomWidth"));

        var border = {};

        border["x"] = x_border ? parseInt(x_border) : 0;
        border["y"] = y_border ? parseInt(y_border) : 0;

        this.setWidth(parseInt(dialog.x) + border.x);
        this.setHeight(parseInt(dialog.y) + border.y);

        this._PositionInfo["dialog"] = dialog;
        this._PositionInfo["border"] = border;

        this._PositionInfo = this._Util.getCurrentPositionInfo(this._PositionInfo);

        this.setLeft(parseInt(this._PositionInfo.custom.x) - parseInt(parseFloat(parseInt(parseInt(dialog.x) + border.x) * parseFloat(this._PositionInfo.percent.x))) + parseInt(this._PositionInfo.scroll.x) + parseInt(this._PositionInfo.offset.x) + parseInt(this._PositionInfo.custom_offset.x));
        this.setTop(parseInt(this._PositionInfo.custom.y) - parseInt(parseFloat(parseInt(parseInt(dialog.y) + border.y) * parseFloat(this._PositionInfo.percent.y))) + parseInt(this._PositionInfo.scroll.y) + parseInt(this._PositionInfo.offset.y) + parseInt(this._PositionInfo.custom_offset.y));

        var css = {
            "width": this.getWidth(),
            "height": this.getHeight()
        };

        css[this._Config._PositionXName] = this.getLeft();
        css[this._Config._PositionYName] = this.getTop();

        return css;
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    },
    "setTop": function (top) {
        this._offsetTop = top;
    },
    "setLeft": function (left) {
        this._offsetLeft = left;
    },
    "getTop": function () {
        return this._offsetTop;
    },
    "getLeft": function () {
        return this._offsetLeft;
    },
    "setTempHeight": function (height) {
        this._TempHeight = height;
    },
    "setTempWidth": function (width) {
        this._TempWidth = width;
    },
    "getTempHeight": function () {
        return this._TempHeight;
    },
    "getTempWidth": function () {
        return this._TempWidth;
    },
    "setTempTop": function (top) {
        this._offsetTempTop = top;
    },
    "setTempLeft": function (left) {
        this._offsetTempLeft = left;
    },
    "getTempTop": function () {
        return this._offsetTempTop;
    },
    "getTempLeft": function () {
        return this._offsetTempLeft;
    }
};

/*
    OpenDialogDialog
*/
var OpenDialogDialog = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;
    this._offsetTempTop;
    this._offsetTempLeft;

    this.Init();
};

OpenDialogDialog.prototype = {
    "Init": function () {
        var dialogHtml = '<div></div>';
        this._j = this._jQuery(dialogHtml);

        this._Style.addClass(this._j, 'od-dialog-' + this._Config._Skin);

        if (this._Config._BorderStyle != "")
            this._Style.addClass(this._j, this._Config._BorderStyle);

        this._Style.addBackGround(this._j, this._Config._DialogBackgroundType,
            this._Config._DialogBackgroundImage, this._Config._DialogBackgroundColor);


        this._j.css({
            "position": "relative"
        });

        this._Container._j.append(this._j);

        this._PositionInfo = this._Container._PositionInfo;

        if (this._Config._NeedTitle == true) {
            this._TitleBar = new OpenDialogTitleBar(this);
        }

        if (this._Config._NeedClose == true) {
            this._CloseButton = new OpenDialogCloseButton(this);
        }

        this._ChildPanel = this._Config._CoreType == "iframe"
            ? new OpenDialogFramePanel(this)
            : new OpenDialogDivPanel(this);
    },
    "Show": function (json_dialog) {
        var dialog = this._JSON_Dialog = json_dialog;

        this.setWidth(dialog.x);
        this.setHeight(dialog.y);

        var css = {
            "width": this.getWidth(),
            "height": this.getHeight(),
            "top": -parseInt(this.getHeight()),
            "left": -parseInt(this.getWidth())
        };

        this._j.css(css);

        if (this._Config._NeedTitle == true)
            this._TitleBar.Show();

        if (this._Config._NeedClose == true)
            this._CloseButton.Show();

        this._ChildPanel.Show();
    },
    "ShowBegin": function () {
        var dialog = this._JSON_Dialog;

        this.setWidth(dialog.x);
        this.setHeight(dialog.y);

        var css = {
            "width": this.getWidth(),
            "height": this.getHeight(),
            "top": "0px",
            "left": "0px"
        };

        if (this._Config._Slide == true) {
            if (this._Config._SlideDirection == "horizontal")
                css.left = this._Config._PositionXName == "left" ? -parseInt(css.width) : css.width;
            if (this._Config._SlideDirection == "vertical")
                css.top = this._Config._PositionYName == "top" ? -parseInt(css.height) : css.height;
        }

        this._j.css(css);

        var animate = {
            "opacity": "show",
            "top": css.top,
            "left": css.left
        };

        if (this._Config._Slide == true) {
            if (this._Config._SlideDirection == "horizontal")
                animate.left = this._Config._PositionXName == "left" ? parseInt(this._Container.getTempWidth()) - parseInt(this._j.outerWidth()) : "0px";

            if (this._Config._SlideDirection == "vertical")
                animate.top = this._Config._PositionYName == "top" ? parseInt(this._Container.getTempHeight()) - parseInt(this._j.outerHeight()) : "0px";
        }

        this.setTempLeft(animate.left);
        this.setTempTop(animate.top);

        var dialogPanel = this._Container;
        this._j.hide().animate(animate, this._Config._DialogShowSpeed, function () {
            dialogPanel.ShowOver();
        });

        this._ChildPanel.ShowBegin();
    },
    "ShowOver": function () {
        this._j.css({
            "top": "0px",
            "left": "0px"
        });
    },
    "Hide": function () {
        this._j.css({
            "top": this.getTempTop(),
            "left": this.getTempLeft()
        });

        this._ChildPanel.Hide();

        this._Container.HideBegin();
    },
    "HideBegin": function () {
        var animate = {
            "opacity": "hide"
        };

        if (this._Config._Slide == true) {
            if (this._Config._SlideDirection == "horizontal")
                animate["left"] = this._Config._PositionXName == "left" ? -parseInt(this.getWidth()) : this.getWidth();

            if (this._Config._SlideDirection == "vertical")
                animate["top"] = this._Config._PositionYName == "top" ? -parseInt(this.getHeight()) : this.getHeight();
        }

        var dialogPanel = this._Container;
        this._j.animate(animate, this._Config._DialogShowSpeed, function () {
            dialogPanel.HideOver();
        });
    },
    "HideOver": function () {
        this._j.show(); //不show会造成dialog被隐藏，下次显示无法取得高宽
    },
    "resize": function () {
        var dialog = this._Util.getPixels(this._Config._Width, this._Config._Height);
        this.setWidth(dialog.x);
        this.setHeight(dialog.y);

        var css = {
            "width": this.getWidth(),
            "height": this.getHeight(),
            "top": "0px",
            "left": "0px"
        };

        this._j.css(css);

        if (this._Config._NeedTitle == true)
            this._TitleBar.resize();

        if (this._Config._NeedClose == true)
            this._CloseButton.resize();

        this._ChildPanel.resize();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    },
    "setTempTop": function (top) {
        this._offsetTempTop = top;
    },
    "setTempLeft": function (left) {
        this._offsetTempLeft = left;
    },
    "getTempTop": function () {
        return this._offsetTempTop;
    },
    "getTempLeft": function () {
        return this._offsetTempLeft;
    }
};

/*
    OpenDialogTitleBar
*/
var OpenDialogTitleBar = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this.Init();
}

OpenDialogTitleBar.prototype = {
    "Init": function () {
        var titleBarHtml = '<div></div>';
        this._j = this._jQuery(titleBarHtml);

        this._Style.addClass(this._j, 'od-titlebar-' + this._Config._Skin);

        this._Container._j.append(this._j);

        this._Title = new OpenDialogTitle(this);
    },
    "Show": function () {
        this.setWidth(this._Container.getWidth());
        this.setHeight(parseInt(this._j.outerHeight()));

        this._Title.Show();

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "Hide": function () {
        this._Title.Hide();
    },
    "resize": function () {
        this.Show();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogTitle
*/
var OpenDialogTitle = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this.Init();
}

OpenDialogTitle.prototype = {
    "Init": function () {
        var titleHtml = '<div></div>';
        this._j = this._jQuery(titleHtml);

        this._Style.addClass(this._j, 'od-title-' + this._Config._Skin);

        this._Container._j.append(this._j);
    },
    "Show": function () {
        var content = this._Top.getTitleContent();
        this._j.html(content);

        this.setWidth(parseInt(this._Container.getWidth()) - parseInt(this._j.css("margin-left")));
        this.setHeight(this._Container.getHeight());

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "Hide": function () {
        //title._j.css("width", "0px");
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogCloseButton
*/
var OpenDialogCloseButton = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this.Init();
}

OpenDialogCloseButton.prototype = {
    "Init": function () {
        var closeButtonHtml = '<div></div>';
        this._j = this._jQuery(closeButtonHtml);

        this._Style.addClass(this._j, 'od-close-' + this._Config._Skin);

        this._j.css({
            "z-index": parseInt(this._Config._Z) + 3
        });

        this._Container._j.append(this._j);

        this._Event.addEventListener(this._j, 'mouseover', this.Hover, this);
        this._Event.addEventListener(this._j, 'mouseout', this.Out, this);
        this._Event.addEventListener(this._j, this._Config._ClickEvent, this.Click, this);
    },
    "Hover": function (closeButton) {
        closeButton._Style.addClass(closeButton._j, 'od-close-hover-' + closeButton._Config._Skin);
    },
    "Out": function (closeButton) {
        closeButton._Style.removeClass(closeButton._j, 'od-close-hover-' + closeButton._Config._Skin);
    },
    "Click": function (closeButton) {
        closeButton._Top.Hide();
    },
    "Show": function () {
        this.setWidth(this._j.outerWidth());
        this.setHeight(this._j.outerHeight());

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "resize": function () { },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogFramePanel
*/
var OpenDialogFramePanel = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this._Loading;

    this.Init();
};

OpenDialogFramePanel.prototype = {
    "Init": function () {
        var panelHtml = '<div></div>';
        this._j = this._jQuery(panelHtml);

        this._Style.addClass(this._j, 'od-panel-' + this._Config._Skin);

        this._Container._j.append(this._j);

        if (this._Config._Loading == true)
            this._Loading = new OpenDialogFrameLoading(this._Container);

        this._Frame = new OpenDialogFrame(this);
    },
    "Show": function () {
        this.setWidth(this._Container.getWidth());
        var titleBarHeight = this._Config._NeedTitle == true ? this._Container._TitleBar.getHeight() : 0;

        this.setHeight(parseInt(this._Container.getHeight()) - parseInt(titleBarHeight));

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });

        this._j.css(this._Config._Scroll);

        if (this._Config._Loading == true)
            this._Loading.Show();

        this._Frame.Show();
    },
    "Hide": function () {
    },
    "ShowBegin": function () {
        if (this._Config._Loading == true)
            this._Loading.ShowBegin();
    },
    "resize": function () {
        this.setWidth(this._Container.getWidth());
        var titleBarHeight = this._Config._NeedTitle == true ? this._Container._TitleBar.getHeight() : "0px";
        this.setHeight(parseInt(this._Container.getHeight()) - parseInt(titleBarHeight));

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });

        this._Frame.resize();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogFrameLoading
*/
var OpenDialogFrameLoading = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this._Loading;

    this.Init();
};

OpenDialogFrameLoading.prototype = {
    "Init": function () {
        var loadingHtml =
            '<div style="position:absolute;top:0px;left:0px;background-color:#dfdfdf;display:none;">'
                + '<div class="content" style="position:relative;height:70px;text-align:center;vertical-align:middle;">'
                    + '<div class="img" style="position:relative;float:left;width:20px;height:30px;">'
                        + '<img style="width:18px;height:18px;border:0px;position:relative;top:6px;left:0px;" src="/mnt/sdcard/bbaaabddhc/0d5ecb9370125e6bca491b3e9ea748e6/fc190f95e0b7ca268f1385fa82d29fa6.gif"/>'
                    + '</div>'
                    + '<div class="text" style="position:relative;float:left;height:30px;line-height:30px;"><span style="font-size:16px;">' + this._Config._LoadingText + '</span></div>'
                    + '<div class="control" style="position:relative;float:left;height:40px;">'
                        + '<div class="retry" style="position:absolute;cursor:pointer;top:10px;border:1px solid gray;box-shadow:2px 2px 4px gray;height:28px;line-height:28px;text-align:center;vertical-align:middle;width:60px;letter-spacing:2px;">重试</div>'
                        + '<div class="close" style="position:absolute;cursor:pointer;top:10px;border:1px solid gray;box-shadow:2px 2px 4px gray;height:28px;line-height:28px;text-align:center;vertical-align:middle;width:60px;letter-spacing:2px;">关闭</div>'
                    + '</div>'
                + '</div>'
            + '</div>';

        this._j = this._jQuery(loadingHtml);

        this._jContent = this._j.find('.content');
        this._jImg = this._jContent.find('.img');
        this._jText = this._jContent.find('.text');
        this._jSpan = this._jText.find('span');
        this._jControl = this._jContent.find('.control');
        this._jRetry = this._jControl.find('.retry');
        this._jClose = this._jControl.find('.close');

        this._Event.addEventListener(this._jClose, 'click', this.Close, this._Top);
        this._Event.addEventListener(this._jRetry, 'click', this.Retry, this);

        this._Container._j.append(this._j);
    },
    "Show": function () {
        this.setWidth(parseInt(this._Container.getWidth()));
        this.setHeight(parseInt(this._Container.getHeight()));

        this._j.css({
            "width": this.getWidth() + "px",
            "height": this.getHeight() + "px",
            "z-index": parseInt(this._Config._Z) + 2,
            "margin": "0px",
            "padding": "0px"
        }).show();
    },
    "ShowBegin": function () {
        var contentWidth = parseInt(this._jText.width()) + 20;

        this._jContent.css({
            "width": contentWidth + "px",
            "top": parseInt((this.getHeight() - 60) / 2) + "px",
            "left": parseInt((this.getWidth() - contentWidth) / 2) + "px"
        });

        this._jControl.css({
            "width": contentWidth + "px"
        });

        var buttonLeft = parseInt((contentWidth - 120) / 2);
        this._jRetry.css("left", buttonLeft + "px");
        this._jClose.css("left", buttonLeft + 66 + "px");

        this._jContent.show();
    },
    "Hide": function () {
        this._jContent.hide();
        this._j.fadeOut(618);
    },
    "Close": function (top) {
        top.Hide();
    },
    "Retry": function (loading) {
        loading._Container._ChildPanel._Frame.Retry();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogFrame
*/
var OpenDialogFrame = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;
    this._isInit = false;

    this._Width;
    this._Height;
};

OpenDialogFrame.prototype = {
    "Init": function () {
        var scrolling = this._Top._isOuterLink == true ? "auto" : "no";

        var id = this._Config._FrameID == "" ? "" : ' id="' + this._Config._FrameID + '"';
        var frameHtml = '<iframe' + id + ' scrolling="' + scrolling + '" frameborder="0" src="' + this._Top.getUri() + '" allowtransparency="true"></iframe>';

        var frame = this;
        this._j = this._jQuery(frameHtml);

        this._Style.addClass(this._j, 'od-frame-' + this._Config._Skin);

        this.setWidth(this._Container.getWidth());
        this.setHeight(this._Container.getHeight());

        this._j.css({ //帧宽度或高度为百分比时的hack
            "width": this.getWidth(),
            "height": this.getHeight()
        });

        this._Container._j.find("iframe").remove();

        this._Container._j.append(this._j);

        this._isInit = true;
    },
    "Show": function () {
        this._Top._DialogPanel._j.show();

        if (this._isInit == false || this._Config._Reload == true) {
            this.Init();
            var frame = this;
            this._j.one('load', function () {
                frame.Show_Callback(false);
                frame._Config._CallbackFunction(frame._Config._CallbackParams, frame._j);
                frame._isInit = true;
            });
        } else {
            this.Show_Callback(true);
            this._Config._CallbackFunction(this._Config._CallbackParams, this._j);
        }

        if (this._Config._Loading == true)
            this._Top._DialogPanel.ShowBegin();
    },
    "Show_Callback": function (reShow) {
        if (this._Top._isOuterLink == true) {
            this.setWidth(this._Container.getWidth());
            this.setHeight(this._Container.getHeight());
        } else {
            var frameBody = this._j.get(0).contentWindow.document.body;

            this._j.get(0).contentWindow.ThisOpenDialog = this._Top;

            var f_scrollWidth = parseInt(frameBody.scrollWidth), f_scrollHeight = parseInt(frameBody.scrollHeight);
            if (f_scrollWidth >= this.getWidth() || this._Config._Width == "auto")
                this.setWidth(parseInt(frameBody.scrollWidth));
            if (f_scrollHeight >= this.getHeight() || this._Config._Height == "auto")
                this.setHeight(parseInt(frameBody.scrollHeight));

 http://m.liming9309.quickapp.cn/js/           //temp.css hack
            this._j.contents().find(".temp-scroller").css("margin-top", "0px");
            this._j.contents().find(".temp-scroller-bottom").css("height", "0px");
            this._j.contents().find("body").css({
                "background-image": "none",
                "background-repeat": "none",
                "background-color": "transparent"
            });
        }

        this._j.css({
            "width": this.getWidth() + "px",
            "height": this.getHeight() + "px"
        });

        if (reShow == false && this.getHeight() > this._Container.getHeight()) {
            this._Container._j.css("overflow-y", "auto");
        }

        if (this._Top._isOuterLink == false && typeof this._j.get(0).contentWindow.OpenDialogLoad != "undefined")
            this._j.get(0).contentWindow.OpenDialogLoad();

        this._Config._Loading == true ? this._Container._Loading.Hide() : this._Top._DialogPanel.ShowBegin();
    },
    "resize": function () {
        if (typeof this._j == 'undefined' || this._j.length < 0)
            return;

        if (this._Top._isOuterLink == true) {
            this.setWidth(this._Container.getWidth());
            this.setHeight(this._Container.getHeight());
        } else {
            if (this._Config._Width.indexOf("%") != -1) {
                this.setWidth(this._Container.getWidth());
            }

            if (this._Config._Height.indexOf("%") != -1) {
                this.setHeight(this._Container.getHeight());
            }
        }

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "Retry": function () {
        this._isInit = false;
        this._j.unbind();
        this.Show();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogDivPanel
*/
var OpenDialogDivPanel = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this.Init();
};

OpenDialogDivPanel.prototype = {
    "Init": function () {
        var panelHtml = '<div></div>';
        this._j = this._jQuery(panelHtml);

        this._Style.addClass(this._j, 'od-panel-' + this._Config._Skin);

        this._Container._j.append(this._j);

        this._Div = new OpenDialogDiv(this);
    },
    "Show": function () {
        this.setWidth(this._Container.getWidth());
        var titleBarHeight = this._Config._NeedTitle == true ? this._Container._TitleBar.getHeight() : 0;
        this.setHeight(parseInt(this._Container.getHeight()) - parseInt(titleBarHeight));

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight(),
            "overflow": "hidden"
        });

        this._Div.Show();
    },
    "Hide": function () { },
    "ShowBegin": function () { },
    "resize": function () {
        this.setWidth(this._Container.getWidth());
        var titleBarHeight = this._Config._NeedTitle == true ? this._Container._TitleBar.getHeight() : 0;
        this.setHeight(parseInt(this._Container.getHeight()) - parseInt(titleBarHeight));

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });

        this._Div.resize();
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};

/*
    OpenDialogDiv
*/
var OpenDialogDiv = function (container) {
    this._Top = container._Top;
    this._Container = container;
    this._Config = container._Config;
    this._jQuery = container._jQuery;
    this._Body = container._Body;
    this._Style = container._Style;
    this._Util = container._Util;
    this._Event = container._Event;

    this._Width;
    this._Height;

    this.Init();
};

OpenDialogDiv.prototype = {
    "Init": function () {
        this._j = this._jQuery("#" + this._Top.getDiv()).show();
        if (/this-edit/gi.test(this._j.parent().prop("class")) == true)
            this._j = this._j.parent();
        this._Container._j.append(this._j);
    },
    "Show": function () {
        this._Top._DialogPanel._j.show();
        this._j.show();

        this.Show_Callback();

        this._Config._CallbackFunction(this._Config._CallbackParams);
    },
    "Show_Callback": function () {
        this._Top._DialogPanel.ShowBegin();
    },
    "resize": function () {
        if (typeof this._j == 'undefined' || this._j.length < 0)
            return;

        this._j.css({
            "width": this.getWidth(),
            "height": this.getHeight()
        });
    },
    "setHeight": function (height) {
        this._Height = height;
    },
    "setWidth": function (width) {
        this._Width = width;
    },
    "getHeight": function () {
        return this._Height;
    },
    "getWidth": function () {
        return this._Width;
    }
};