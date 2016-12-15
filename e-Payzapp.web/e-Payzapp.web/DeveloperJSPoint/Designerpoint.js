

$(document).ready(function () {
  
    $("#Proce").on("click", function () {
      
        if ($("#MobileInput").val().length == 0) {
            alert("Reqired");
            $("#Mobno").html('');
        }
        
        if ($("#MobileInput").val().length == 10) {
            setTimeout(CustomerMobileNumberDetails($("#MobileInput").val()), 3000);

        }
    });



    $("#Po1").on("click", function () {
        $("#zone2").hide();
    });
    $("#Pr1").on("click", function () {
        $("#zone2").show();
    });
    $("#Proce1").on("click", function () {

        $("#slide3").hide();
        $("#slide4").show();
    });

    $("#Return").on("click", function () {
        $("#slide2").hide();
        $("#slide1").show();
    });

    $("div.bhoechie-tab-menu>div.list-group>a").click(function (e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
    $('#MobileInput').keyup(filterNonDigits);

});

function filterNonDigits(evt) {
    var event = evt || window.event;
    var val = event.target.value;
    var filtered = val.replace(/[^0-9]/g, '');

    if (filtered !== val) {
        event.target.value = filtered;
        event.target.className += " error";
    }
}
