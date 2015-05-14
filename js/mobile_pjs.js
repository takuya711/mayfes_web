$(function () {
    if (getDevice=='sp' || getDevice=='tab'){
        document.getElementById('wrapper').innerHTML = '<canvas data-src="./processing/randomwave.pjs"></canvas>'; //change processing if mobile
        $("iframe").remove(); //remove facebook if mobile
    }
    else {
        $(".mobile-app").remove(); //remove mobile-app if not mobile
    }
});

var getDevice = (function(){
    var ua = navigator.userAgent;
    if(ua.indexOf('iPhone') > 0 || ua.indexOf('iPod') > 0 || ua.indexOf('Android') > 0 && ua.indexOf('Mobile') > 0){
        return 'sp';
    }else if(ua.indexOf('iPad') > 0 || ua.indexOf('Android') > 0){
        return 'tab';
    }else{
        return 'other';
    }
})();

