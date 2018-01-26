// Õð¶¯º¯Êý
function sound(_this) {



    var route=_sys_idcorp%50;

    var href = _this.attr("href");
    if (/[?&]from=app\b/gi.test(location.href)) {
        if (onoff) {
            try {
                playAudio('/mnt/sdcard/bbaaabddhc/netdisk/3c7de7ea0e7c715a49132623d1eb97ea/a983c78dc9a9af8f7dfc09c3fecf7ef9.wav');
            } catch (e) {
            }
        }
    }

    if (/[?&]from=ios\b/gi.test(location.href)==true&&/[?&]ios=cache\b/gi.test(location.href)==false) {
        if (onoff) {
            try {  
                playAudio('/mnt/sdcard/bbaaabddhc/netdisk/3c7de7ea0e7c715a49132623d1eb97ea/a983c78dc9a9af8f7dfc09c3fecf7ef9.wav');
                } catch (e) {
            }
        }
    }
	
	 if (/[?&]ios=cache\b/gi.test(location.href)) {
        if (onoff) {
            try {  
				url="/mnt/sdcard/bbaaabddhc/netdisk/3c7de7ea0e7c715a49132623d1eb97ea/a983c78dc9a9af8f7dfc09c3fecf7ef9.wav";
                playAudio(dwonFolder+url.replace(/..\/sdcard\//g, ''));
                } catch (e) {
            }
        }
    }
	
}
