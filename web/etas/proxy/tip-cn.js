console.log("This is a mirror for etas.com because it's blocked in China. ");

document.write('<header style="z-index: 999999; position: sticky; bottom: 0; height: 32px; line-height: 32px; background: #fff;" class="container">This is a mirror for China users</header>');


(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();



