function injectAsidebar(jQuery) {
    jQuery.fn.asidebar1 = function asidebar1(status) {
        switch (status) {
            case "open":
                var that = this;
                // fade in backdrop
                if ($(".aside1-backdrop").length === 0) {
                    $("body").append("<div class='aside1-backdrop'></div>");
                }
                $(".aside1-backdrop").addClass("in");


                function close() {
                    $(that).asidebar1.apply(that, ["close"]);
                }

                // slide in asidebar
                $(this).addClass("in");
                $(this).find("[data-dismiss=aside1], [data-dismiss=asidebar1]").on('click', close);
                $(".aside1-backdrop").on('click', close);
                break;
            case "close":
                // fade in backdrop
                if ($(".aside1-backdrop.in").length > 0) {
                    $(".aside1-backdrop").removeClass("in");
                }

                // slide in asidebar
                $(this).removeClass("in");
                break;
            case "toggle":
                if ($(this).attr("class").split(' ').indexOf('in') > -1) {
                    $(this).asidebar1("close");
                } else {
                    $(this).asidebar1("open");
                }
                break;
        }
    }
}

// support browser and node
if (typeof jQuery !== "undefined") {
    injectAsidebar(jQuery);
} else if (typeof module !== "undefined" && module.exports) {
    module.exports = injectAsidebar;
}
