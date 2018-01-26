// JScript source code
//var sPath = "/Trade/";
//sPath = ""; //测试用发布需要隐掉


//全局变量
//$(document).ready(function () {
//    $.getJSON('http://' + secdomain + 'http://m.liming9309.quickapp.cn/common/getCustomer.ashx?t=' + new Date().getTime(), function (data) {
//        alert(JSON.stringify(data));
//        if (data['status'] === 'NLI') {
//            //alert('请登录！');
//            return;
//        }
//        $('#currentidcustomer').val(data['idCustomer']);
//    });
//});

/*
本地数据存储
*/
var CartDB = function (idCorp, idCustomer) {

    if (!idCustomer) {
        idCustomer = 0;
    }

    var key = idCorp + '_' + idCustomer + '_cart';

    function _getList(status) {
        var strcartlist,
            jsoncartlist;

        strcartlist = localStorage.getItem(key);
        jsoncartlist = strcartlist !== null && typeof strcartlist !== 'undefined' ? $.parseJSON(strcartlist) : new Array();
        if (typeof status == 'undefined') {
            return jsoncartlist;
        } else if (Boolean(status)) {
            var itemcount = jsoncartlist.length;
            var anotherlist = new Array();
            for (var i in jsoncartlist) {
                if (jsoncartlist[i].checked) {
                    anotherlist.push(jsoncartlist[i]);
                }
            }
            return anotherlist;
        }
    }

    function _containsIdware(jsoncartlist, idWare) {
        var itemcount;

        itemcount = jsoncartlist.length;
        for (var i = itemcount - 1; i >= 0; i--) {
            if (parseInt(jsoncartlist[i].idware) === parseInt(idWare)) {
                jsoncartlist[i].qty += 1;
                return true;
            }
        }
        return false;
    }

    return {
        //获取列表，true 获取已选，false 获取未选，null 获取全部
        getCartItmeList: function (status) {
            return _getList(status);
        },
        addQty: function (idWare, Qty) {
            var
                itemcount,
                jsoncartlist,
                hasWare = false;

            jsoncartlist = _getList();
            itemcount = jsoncartlist.length;
            for (var i = 0; i < itemcount; i++) {
                if (parseInt(jsoncartlist[i].idware) === parseInt(idWare)) {

                    hasWare = true;

                    if (Qty <= 0) {
                        //删除
                        jsoncartlist.splice(i, 1);
                        break;
                    }
                    else {
                        //加数量
                        jsoncartlist[i].qty += Qty;
                        break;
                    }
                }
            }

            if (!hasWare) {
                cartitem = {};
                cartitem.idware = idWare;

                cartitem.qty = Qty;
                cartitem.checked = true;

                jsoncartlist.push(cartitem);
            }

            localStorage.setItem(key, JSON.stringify(jsoncartlist));
        },
        setQty: function (idWare, Qty) {
            var
                itemcount,
                jsoncartlist;

            jsoncartlist = _getList();
            itemcount = jsoncartlist.length;
            for (var i = 0; i < itemcount; i++) {
                if (parseInt(jsoncartlist[i].idware) === parseInt(idWare)) {
                    jsoncartlist[i].qty = Qty;
                    break;
                }
            }

            localStorage.setItem(key, JSON.stringify(jsoncartlist));
        },
        setQty2: function (idWare, Qty, price) {
            var
                itemcount,
                jsoncartlist,
                hasWare = false;

            jsoncartlist = _getList();
            itemcount = jsoncartlist.length;
            for (var i = 0; i < itemcount; i++) {
                if (parseInt(jsoncartlist[i].idware) === parseInt(idWare)) {

                    hasWare = true;
                    if (Qty <= 0) {
                        //删除
                        jsoncartlist.splice(i, 1);
                        break;
                    }
                    else {
                        //加数量
                        jsoncartlist[i].qty = Qty;
                        break;
                    }
                }
            }

            if (!hasWare) {
                cartitem = {};
                cartitem.idware = idWare;

                cartitem.qty = Qty;
                cartitem.price = price;
                cartitem.checked = true;

                jsoncartlist.push(cartitem);
            }

            localStorage.setItem(key, JSON.stringify(jsoncartlist));
        },
        addCartItem: function (idWare, price) {
            var containsidware,
                cartitem,
                jsoncartlist;

            jsoncartlist = _getList();

            containsidware = _containsIdware(jsoncartlist, idWare);

            if (!containsidware) {
                cartitem = {};
                cartitem.idware = idWare;

                cartitem.qty = 1;
                cartitem.checked = true;
                cartitem.price = price;

                jsoncartlist.push(cartitem);
            }

            localStorage.setItem(key, JSON.stringify(jsoncartlist));
        },
        delCartItem: function (idWare) {
            var jsoncartlist,
                itemcount;

            jsoncartlist = _getList();
            itemcount = jsoncartlist.length;
            for (var i = itemcount - 1; i >= 0; i--) {
                if (parseInt(jsoncartlist[i].idware) === parseInt(idWare)) {
                    jsoncartlist.splice(i, 1);
                    break;
                }
            }

            localStorage.setItem(key, JSON.stringify(jsoncartlist))
        },
        clear: function () {
            localStorage.clear();
        },
        editStatus: function (idWare, status) {
            var jsoncartlist,
                itemcount;
            jsoncartlist = _getList();
            itemcount = jsoncartlist.length;
            for (var i = itemcount - 1; i >= 0; i--) {
                if (jsoncartlist[i].idware == idWare) {
                    jsoncartlist[i].checked = status;
                    break;
                }
            }
            localStorage.setItem(key, JSON.stringify(jsoncartlist));
        }
    };
};
/*本地数据存储*/


/**
        * 数字格式转换成千分位
        *@param{Object}num
        */
function commafy(num) {
    if ((num + "") == "") {
        return "";
    }
    //            if (isNaN(num)) {
    //                return "";
    //            }
    num = num + "";
    if (/^.*\..*$/.test(num)) {
        var pointIndex = num.lastIndexOf(".");
        var intPart = num.substring(0, pointIndex);
        var pointPart = num.substring(pointIndex + 1, num.length);
        intPart = intPart + "";
        var re = /(-?\d+)(\d{3})/
        while (re.test(intPart)) {
            intPart = intPart.replace(re, "$1,$2")
        }
        num = intPart + "." + pointPart;
    } else {
        num = num + "";
        var re = /(-?\d+)(\d{3})/
        while (re.test(num)) {
            num = num.replace(re, "$1,$2")
        }
    }
    return num;
}
/**
* 去除千分位
*@param{Object}num
*/
function delcommafy(num) {
    if ((num + "") == "") {
        return "";
    }
    num = num.replace(/,/gi, '');
    return num;
}




function AddToShoppingCart(idCorp, idWare, idCustomer, source, $ele, callback, price) {

    if (price <= 0 || !price) {
        var $price = $('#realprice');
        if ($price.length > 0) {
            price = parseFloat($price.text());
        }
    }

    if (price <= 0 || !price) {
        alert("没有价格，不能购买");
        return;
    }


    if (!idCustomer && typeof (loginIdCus) != 'undefined') {
        idCustomer = loginIdCus;
    }

    var url = document.location.href;

    var re = /m\.|from=(app|ios)/ig;
    if (re.test(url)) {
        //alert('移动网站');
        if (!idCustomer) {
            //未登录则idCustomer=0
            idCustoemr = 0;
        }
        mobilebuy(idCorp, idWare, idCustomer, source, $ele, callback, price);
    }
    else {
        if (!idCustomer) {
            //document.location.href = "http://m.liming9309.quickapp.cn/1800000624http://m.liming9309.quickapp.cn/common/_10000004_8.html?url=" + escape(url);
            //if (idCorp != 1100005053) {
            document.location.href = "/" + idCorp + "http://m.liming9309.quickapp.cn/common/_10000004_8.html?url=" + escape(url);
            return;
            //}
        }

        var hasFaceAtt = document.getElementById('faceatt');
        if (hasFaceAtt) {
            var eDiv = document.getElementsByTagName('div');
            if (eDiv) {
                var Msg = "";
                for (var i = 0; i < eDiv.length; i++) {
                    if (eDiv[i].id.toUpperCase().indexOf('SHOWVALUE') >= 0) {
                        if (eDiv[i].innerText.indexOf('请选择') >= 0)
                            Msg += eDiv[i].innerText + "\r\n";
                    }
                }
            }

            if (Msg != "") {
                alert(Msg);
                return;
            }
        }

        var parm = GetParm(idCorp, idWare);
        var url = "http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?parm=" + parm + "&Language=Cn&dname=yes";

        var href = '',
        config = {
            "Skin": "fast",
            "Position": "5",
            "Slide": false,
            "Width": "902px",
            "Height": "576px",
            "NeedClickMaskClose": false,
            "MaskOpacity": 0.1,
            "NeedClose": true,
            "NeedTitle": false,
            "FollowIn": true,
            "BorderStyle": "",
            "Parent": "top",
            "LoadingText": ".....",
            "ScrollLock": true
        };

        //var buyWindow = new OpenDialog(href, config);

        //buyWindow.setUri(url);
        //buyWindow.Show();
        window.open("http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?parm=" + parm + "&Language=Cn&dname=yes", "AddToShoppingCart");
        //$('#btnbuy').attr('href', url);
    }
}

/*
 * 手机网站点击购物以后执行
*/
function mobilebuy(idCorp, idWare, idCustomer, source, $ele, callback, price) {
    var cartDb = new CartDB(idCorp, idCustomer);

    if (idCustomer == 0 && source == 'buynow') {
        cartDb.clear();
    }

    cartDb.addCartItem(idWare, price);
    //alert(JSON.stringify());
    FreshShopCart();


    //2014-9-10日取消提示
    //if (!idCustomer || idCustomer == 0) {
    //    var ret = confirm('您还没有登录！\r\n如果您有本站帐号，请点击确定进行登录！\r\n如果没有本站帐号，请点击取消直接购买！');
    //    if (ret) {

    //        var url = "http://m.liming9309.quickapp.cn/localidcorp_10000061_5.html";
    //        url = url.replace("localidcorp", _sys_idcorp);
    //        cutAuchor(url, $ele);
    //        return;
    //    }
    //}

    if (callback) {
        callback();
    }
}

function AddToShoppingCart_En(idCorp, idWare) {
    var parm = GetParm(idCorp, idWare);
    window.open("http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?parm=" + parm + "&Language=En", "AddToShoppingCart");
}

function addtoshoppingcart(idCorp, idWare) {
    var parm = GetParm(idCorp, idWare);
    window.open("http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?parm=" + parm + "&Language=Cn", "AddToShoppingCart");
}

function addtoshoppingcart_en(idCorp, idWare) {
    var parm = GetParm(idCorp, idWare);
    window.open("http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?parm=" + parm + "&Language=En", "AddToShoppingCart");
}

function GetParm(idCorp, idWare) {
    var inputlist = document.getElementsByTagName("input");
    var sFaceAtt = "";
    var sCollocate = "";
    var sAdjunct = "";
    var sOneByOne = "";

    for (var i = 0; i < inputlist.length; i++) {
        if (inputlist[i].type.toUpperCase() == "RADIO") {
            var sId = inputlist[i].id.toUpperCase();
            if (sId == "FACEATT") {
                if (inputlist[i].checked)
                    sFaceAtt = sFaceAtt + inputlist[i].value + ",";
            }

            if (sId == "WARECONFIG") {
                if (inputlist[i].checked)
                    sCollocate = sCollocate + inputlist[i].value;
            }
        }

        if (inputlist[i].type.toUpperCase() == "CHECKBOX") {
            if (inputlist[i].id.toUpperCase() == "WAREFITTING") {
                if (inputlist[i].checked) {
                    sAdjunct = sAdjunct + inputlist[i].value + ",";
                }
            }

            if (inputlist[i].id.toUpperCase() == "ONEBYONE") {
                if (inputlist[i].checked) {
                    sOneByOne = sOneByOne + inputlist[i].value + ",";
                }
            }
        }
    }

    //	alert(sFaceAtt);
    //	alert(sCollocate);
    //	alert(sAdjunct);

    //	sOneByOne = '10000146,10000146,';

    var buyNum = 1;
    var $buynum = $('#buynum');
    if ($buynum.length > 0) {
        buyNum = $buynum.val();
        if (isNaN(buyNum)) {
            buyNum = 1;
        }
    }

    var parm = idCorp + "#" + idWare + "#" + sFaceAtt + "#" + sCollocate + "#" + sOneByOne + "#" + buyNum + "|" + sAdjunct;
    //	document.write(parm)
    //	alert(parm)

    parm = escape(parm)
    //	sFaceAtt = "";
    //	sFaceAtt = "油性,中期,";
    //	sCollocate = "";
    //	sCollocate = "69,70,";
    //	sAdjunct = "";
    //	sAdjunct = "10000136,10000135,";

    return parm;
}

$(document).ready(function () {
    //touchstart
    var eventname = 'touchstart';

    var system = {
        win: false,
        mac: false,
        xll: false
    };

    var platform = navigator.platform;
    system.win = platform.indexOf("Win") == 0;
    system.mac = platform.indexOf("Mac") == 0;
    system.x11 = (platform == "X11") || (platform.indexOf("Linux") == 0);

    var isPC = system.win || system.mac || system.xll;


    if (isPC) {
        eventname = 'click';
    }

    ///


    //console.log('http://m.liming9309.quickapp.cn/common/load ShoppingCart.js');
    $('.btnBuy').unbind(eventname);
    $('.btnBuy').bind(eventname, function (e) {
        e.stopPropagation();
        var $this = $(this);
        var idCorp = $this.attr('idCorp');
        var idWare = $this.attr('idWare');
        var price = $this.attr('price');
        //alert("idCorp=" + idCorp + ';idWare=' + idWare);

        AddToShoppingCart(idCorp, idWare, 0, 'btnbuy', $this, function () {
            //alert("已添加到购物车！");
        }, price);

        return false;
    });

    $('.buynow').bind(eventname, function (e) {
        e.stopPropagation();
        var $this = $(this);
        var idCorp = $this.attr('idCorp');
        var idWare = $this.attr('idWare');
        var price = $this.attr('price');
        AddToShoppingCart(idCorp, idWare, 0, 'buynow', $this, function () {
            //跳转到结算页
            //var url = "http://m.liming9309.quickapp.cn/localidcorp_0_8.html?sp=1100000112-20000050&dname=yes";

            //跳转到购物车
            var url = "http://m.liming9309.quickapp.cn/localidcorp_0_8.html?sp=1100000112-20000049&dname=yes";


            url = url.replace("localidcorp", _sys_idcorp);
            cutAuchor(url, $this);
        }, price);

        return false;
    });
});


//应用商店
$(function () {

    calculate();

    $('.item').each(function (idx, item) {
        $(item).click(function () {
            $('.item').removeClass('itemchked');
            var $this = $(this);
            $this.addClass('itemchked');

            $('#itemprice').html('<img src="/mnt/sdcard/bbaaabddhc/0d5ecb9370125e6bca491b3e9ea748e6/749f8c461bd1ec512e0602c8cd78b686.gif" style="display: inline;height:15px;width:15px;">');

            $.getJSON('http://m.liming9309.quickapp.cn/CorpSvc/getWarePrice.ashx?idcorp=' + getIdCorp() + '&idware=' + getIdWare() + '&t=' + new Date().getTime(), function (sJson) {
                $('#itemprice').html('');
                $('#uniteprice').text(sJson.price);
                $('#itemprice').text(sJson.price);
                calculate();
            });
        });
    });

    $('.duration').each(function (idx, item) {
        $(item).click(function () {
            $('.duration').removeClass('durationchk');
            var $this = $(this);
            $this.addClass('durationchk');
            calculate();
        });
    });
});

var calculate = function () {
    var $durationchk = $('.durationchk');
    var num = parseFloat($durationchk.attr('num'));

    var price = parseFloat($('#uniteprice').text());
    $('#itemprice').text((price * num).toFixed(2));

    var idWare = getIdWare();

    $('#btnBuyService').attr('href', 'http://m.liming9309.quickapp.cn/Trade/AddToShoppingCart.aspx?idCorp=' + getIdCorp() + '&idWare=' + idWare + '&num=' + num + '&Language=Cn&dname=yes');

}

var getIdWare = function () {
    var idWare = 0;
    var $itemchked = $('.itemchked');
    if ($itemchked.length > 0) {
        idWare = $itemchked.attr('idWare');
    }
    return idWare;
}

var getIdCorp = function () {
    var re = /(idCorp=)?(\d{10})_?/ig;
    var idCorp;
    if (re.test(document.location.href)) {
        idCorp = RegExp.$2;
    }
    return idCorp;

}
