function slide(obj, direction, fn) {
    //touchstart�¼� 
    var startX = 0;
    var x = 0;
    var toch = 50;
    obj.on("touchstart",
    function(event) {
        var e = event.originalEvent;

        var touch = e.targetTouches[0]; //��ȡ��һ������
        x = Number(touch.pageX); //ҳ�津��X����  

        //��¼�����ʼλ��  
        startX = x;

        obj.on("touchmove",
        function(evt) {
            var evt = evt.originalEvent;
            touch = evt.touches[0]; //��ȡ��һ������  
            x = Number(touch.pageX); //ҳ�津��X����  

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