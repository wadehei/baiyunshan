/**
 * Created by Administrator on 2016/11/27 0027.
 */
/**
 * tab标签定位
 */
$(function () {
    $(function () {
        var fobj = $('.menuTop');
        var fpos = fobj.offset();
        $(window).scroll(function () {
            checkPos(fobj, fpos);
        });
    });

    function checkPos(fobj, fpos) {
        if ($.browser.msie && $.browser.version == '6.0') {
            var scTop = $(window).scrollTop();
            scTop > fpos.top ? fobj.css({
                'position': 'absolute',
                'z-index': 3,
                'top': scTop - fpos.top
            }) : fobj.attr('style', '');
        }
        else {
            ($(window).scrollTop() > fpos.top) ? fobj.css({
                'position': 'fixed',
                'z-index': 3,
                'top': 0
            }) : fobj.css({'position': 'static'});
        }
    }

    //自动定位
    $(function () {
        var tab_a = $('.menuTop li');
        tab_a.click(function () {
            $(this).addClass('on').siblings().removeClass('on');
        });
        $(window).scroll(function () {
            var Scroll_tab = $('.menuTop').offset().top;//滚动切换
            $('.packTab').each(function (i, n) {
                var tab_infor = $(n).offset().top;
                if (tab_infor > 0 && Scroll_tab >= tab_infor) {
                    $('.menuTop li').eq(i).addClass('on').siblings().removeClass('on');
                }
            });
        });
    });
});
/**
 * 详情图片（小图）自动轮播
 */
jQuery(".foucebox").slide({
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    delayTime: 300,
    triggerTime: 50,
    startFun: function (i) {
        jQuery(".foucebox .hoverBg").animate({"margin-top": 60 * i}, 150);
    }
});