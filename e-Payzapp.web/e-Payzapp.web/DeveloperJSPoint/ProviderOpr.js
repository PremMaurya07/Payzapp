var oprid=0;

function CustomerMobileNumberDetails(mob) {
   
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:59667/api/Default/GETCustomerMobileNoOPR/" + mob,
        data: "{}",
        dataType: "json",
        success: function (data) {
            oprid = data.provider_id;
            alert(JSON.stringify(data.provider_id));
            $("#" + data.provider_id).addClass("active");
            $("#" + data.plan_code).addClass("active");
            $("#oprname").html($("#s" + data.provider_id).data('pnam'));
            $("#cirname").html($("#s" + data.plan_code).data('pnam'));

           
            $('.aside').asidebar('open');
            $("#slide1").hide();
            $("#slide2").show();
            $("#Mobno").html($("#MobileInput").val());
        },
        error: function (result) {

            alert("Error " + result.statusText);
        }
    });

}





function Makeracharge() {

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:59667/api/Default/MakeRecharge2/",
        data: "{}",
        dataType: "json",
        success: function (data) {
            alert(JSON.stringify(data.message));
            
        },
        error: function (result) {

            alert(JSON.stringify(result.message));
        }
    });

}


function GetAllOpretoCircle(obj) {
       $.each(obj.StateZone, function () {        
           $("#crcl").append('<li class="circlezone"  id=' + this["plan_code"] + '><a onclick="selectTSMCC(this);" data-pnam=' + this["plan_name"] + ' data-pcid=' + this["plan_code"] + '  id=s' + this["plan_code"] + ' href="javascript:void(0)">' + this["plan_name"] + '</a></li>');
           
             
            });
}

function newcustomerdetails(bj) {
    $('.Oprselect').removeClass('active');
    $('.circlezone').removeClass('active');
    if ($(bj).val().length == 0)
    {
        alert("Well defined");
        $("#Mobno").html('');
    }
   
    if ($(bj).val().length == 10)
    {
       
        setTimeout(CustomerMobileNumberDetails($(bj).val()), 3000);
    }
  
}
