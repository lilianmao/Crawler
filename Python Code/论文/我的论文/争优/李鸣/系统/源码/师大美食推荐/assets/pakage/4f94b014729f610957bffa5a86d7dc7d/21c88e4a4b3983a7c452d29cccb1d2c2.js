function slide(obj, direction, fn) {
    //touchstart事件 
    var startX = 0;
    var x = 0;
    var toch = 50;
    obj.on("touchstart",
    function(event) {
        var e = event.originalEvent;

        var touch = e.targetTouches[0]; //获取第一个触点
        x = Number(touch.pageX); //页面触点X坐标  

        //记录触点初始位置  
        startX = x;

        obj.on("touchmove",
        function(evt) {
            var evt = evt.originalEvent;
            touch = evt.touches[0]; //获取第一个触点  
            x = Number(touch.pageX); //页面触点X坐标  

        });

    })

    obj.on("touchend",
    function() {

        if (x - startX < -toch || x - startX > toch) {
            if (direction == "right") {
                if (x - startX > toch) {
                    if (fn) {
                        fn();
                        identifier(obj);
                    }
                    return;
                }
            } else {
                if (x - startX < toch) {
                    if (fn) {
                        fn();
                        identifier(obj);
                    }
                    return;
                }
            }
        }

    })
}