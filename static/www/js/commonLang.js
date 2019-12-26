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
        }

        //生成景区详情
        this.initScenicDetail = function() {
            var vm = this;
            var index = vm.getUrl("index");
            var detail = window.constant.scenic.data[index];
            var $detailContainer = $(".detail-container");
            $detailContainer.find(".title").html(detail.title);
            $detailContainer.find(".description").html(detail.description);
        };
        this.getUrl = function(name) {
            var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');  
            var r = window.location.search.substr(1).match(reg);
            if (r != null) {     return unescape(r[2]);   }  
            return null;

        }
    }

}(jQuery, window);

// })(jQuery, window);