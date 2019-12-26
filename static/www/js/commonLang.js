+ function($, window) {


    // $(function init(window) {
    var initLanguage = new InitLanguage();
    initLanguage.init();
    window.initLanguage = initLanguage;
    // })(window);

    function InitLanguage() {
        this.$body = $("body");
        //初始函数
        this.init = function() {
            this.initTop();
            this.initFooter();
        };
        // 生成官网头部
        this.initTop = function() {
            var vm = this;
            $.ajax({
                url: "./head.html",
                dataType: "html",
                type: "get",
                success: function(html) {
                    var container = vm.$body.find("form").length > 0 ? vm.$body.find("form") : vm.$body;
                    container.prepend(html);
                    var header = template("header", window.constant.header);
                    container.find(".top .center").prepend(header);
                }
            });
        };

        //生成门票
        this.initScenic = function() {
            var vm = this;
            var scenic = template("scenic", window.constant.scenic);
            vm.$body.find(".scenic-container").append(scenic);
        };

        //生成门票
        this.initTicket = function() {
            var vm = this;
            var ticket = template("ticket", window.constant.ticket);

            vm.$body.find(".ticket-container").append(ticket);
        };

        //生成酒店
        this.initHotel = function() {
            var vm = this;
            var hotel = template("hotel", window.constant.hotel);
            vm.$body.find(".hotel-container").append(hotel);
        };

        //生成底部
        this.initFooter = function() {
            var vm = this;
            $.ajax({
                url: "./footer.html",
                dataType: "html",
                type: "get",
                success: function(html) {
                    vm.$body.append(html);
                    var footer = template("footer", window.constant.footer);
                    vm.$body.append(footer);
                }
            });
        };

        //生成景区详情
        this.initScenicDetail = function() {
            var vm = this;
            var index = vm.getUrl("index");
            var detail = window.constant.scenic.data[index];
            var $detailContainer = $(".detail-container");
            $detailContainer.find(".title").html(detail.title);
            $detailContainer.find(".description").html(detail.description);
            this.initSwiper(detail.picturesList);
        };
        //生成酒店详情
        this.initHotelDetail = function() {
            var vm = this;
            var index = vm.getUrl("index");
            var detail = window.constant.hotel.data[index];
            var $detailContainer = $(".detail-container");
            $detailContainer.find(".title").html(detail.title);
            $detailContainer.find(".description").html(detail.description);
            this.initSwiper(detail.picturesList);
        };
        this.getUrl = function(name) {
            var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');  
            var r = window.location.search.substr(1).match(reg);
            if (r != null) {     return unescape(r[2]);   }  
            return null;

        };
        this.initSwiper = function (pictureList) {
            if(pictureList.length > 0){
                var picturlListTag = "";
                var picturlListControl = "";
                for(var i = 0;i < pictureList.length;i++){
                    picturlListTag += '<li> <a href="javascript:void(0);"> <img alt="" width="" height="" style="background: url('+pictureList[i]+') no-repeat center;" src="../static/www/images/alpha.png" /> </a> </li>'
                    picturlListControl += '<li class="active"> <a style="cursor:default;">{{i + 1}}</a> </li>'
                }
                $("#picture-list .slides").html(picturlListTag);
                if(pictureList.length > 1){
                    $("#picture-list-control").html(picturlListControl);
                    //轮播图
                    var bannerSlider = new Slider($('#picture-list'), {
                        time: 5000,
                        delay: 400,
                        event: 'hover',
                        auto: true,
                        mode: 'fade',
                        controller: $('#picture-list-control'),
                        activeControllerCls: 'active'
                    });
                }
            }else{
                $("#picture-list").hide();
            }
        }
    }

}(jQuery, window);

// })(jQuery, window);