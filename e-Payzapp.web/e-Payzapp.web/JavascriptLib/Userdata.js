function AddNewUser(dt) {
   
   

    //$.ajax({
    //    type: "GET",
    //    contentType: "application/json; charset=utf-8",
    //    url: "http://localhost:59667/api/Default/GetAllProvider/",
    //    data: "{}",
    //    dataType: "json",
    //    success: function (data) {
    //        $("#oprtr").html('');
    //        $("#dth").html('');
    //        $("#DATACARD").html('');
    //        $.each(data.providers, function () {
    //            if (this["service"] == ProviderType) {
    //                if (ProviderType == "MOBILE" || ProviderType == "POSTPAID") {
    //                    $("#oprtr").append('<li class="Oprselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)" onclick="selectTSM(this);">' + this["provider_name"] + '</a></li>');
    //                }
    //                if (ProviderType == "DTH") {

    //                    $("#dth").append('<li class="dthselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)">' + this["provider_name"] + '</a></li>');

    //                }
    //                if (ProviderType == "DATACARD") {

    //                    $("#DATACARD").append('<li class="dthselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)">' + this["provider_name"] + '</a></li>');

    //                }

    //            }


    //        });

    //    },
    //    error: function (result) {

    //        alert("Error " + result.statusText);
    //    }
    //});
}

$("#Signup").click(function () {
    var dt = {
        FName: $("#FName").val(),
        Mobile: $("#Mobile").val(),
        Password: $("#Password").val(),
        EmailAddress: $("#EmailAddress").val(),
    }
    alert(JSON.stringify(dt));

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:59667/api/ePayZapp/EpayZappInsert",
        data: JSON.stringify(dt),
        dataType: "json",
        success: function (data) {
            alert(JSON.stringify(data));
        },
        error: function (result) {

            alert("Error " + result.statusText);
        }
    });



});