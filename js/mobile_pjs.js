(function () {
    if (getDevice=='sp' || getDevice=='tab'){
        document.getElementById('wrapper').innerHTML = '<canvas data-src="./processing/digits.pde"></canvas>';
    }
});

/**
 *  ユーザーのデバイスを返す
 *  
 *  @return     スマホ(sp)、タブレット(tab)、その他(other)
 *
 */
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

