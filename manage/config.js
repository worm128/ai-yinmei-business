console.log(window.location.hostname);
window.AppConfig = {
    apiUrl: 'http://'+window.location.hostname+':9888/',  //后端接口服务
    blive: 'http://'+window.location.hostname+':12450/',  //blivechat弹幕系统：https://github.com/xfgryujk/blivechat
    ws: 'ws://'+window.location.hostname+':18765',  //ws公共服务
};