$(document).before(function () {
    if (Request.Browser.JavaScript) {

        alert("Javascript Enabled");
        Activate();

    }

    else {

        alert("Javascript Disabled");

    }
  
   
});

function login2() {

    var emailormobile = $("#MobileorEmail").val();
    var password = $("#Password1").val();

    if (emailormobile.length == 0) {
        $("#auth").hide();
        $("#auth").html('');
        $("#errem").show();
        $("#errpass").hide();
        $("#errpass").html('');
        $("#errem").html("Please enter Email or Mobile!");
    }
    else if (password.length == 0) {
        $("#auth").hide();
        $("#auth").html('');
        $("#errem").hide();
        $("#errem").html('');
        $("#errpass").show();
        $("#errpass").html("Please enter Password!");
    }
    else {

        $("#errpass").hide();
        $("#errpass").html('');
        $("#errem").hide();
        $("#errem").html('');

        var res = is_mobile_valid(emailormobile);
        if (res != false) {
            if (emailormobile == 10) {
                $("#errem").hide();
                $("#errem").html('');
                Login(emailormobile, password);
            } else {
                $("#errem").show();
                $("#errem").html("Enter Email or Mobile! is valid");
            }

        }
        else {

            if (validateEmail(emailormobile)) {
                $("#errem").hide();
                $("#errem").html('');
                Login(emailormobile, password);
            }
            else {
                $("#errem").show();
                $("#errem").html("Enter Email or Mobile! is valid");
            }

        }
    }


}

function Login(emailormob, pass)
{
    var dt =new Object();
    dt.EmailAddress = emailormob;
    dt.Password = pass;
  
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/api/ePayZappLogin/Login/",
        data: JSON.stringify(dt),
        dataType: "json",
        success: function (data) {
            Activate();
            stype = 1;
          },
        error: function (result) {

            alert("Error " + result.statusText);
        }
    });

};
var StResult,stype=0;
function Activate()
{     $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "/api/ePayZappLogin/ActiveEmailuser",
            data: {},
            dataType: "json",
            success: function (data) {              

                alert(JSON.stringify(data));
                StResult = data.Key;
                stype = data.Value.ID;
               // if (stype == 1) {
                    $("#username").html('');
                    $("#auth").html('');
                    $("#auth").hide();
                    if (data.Key != 'false') {

                        $("#loginform").hide();
                        $("#username").show();
                        $("#username").html(data.Key);
                        $("#username1").html(data.Key);
                        $("#login-box").hide();
                        $('#mask').remove();
                        $("#auth").hide();
                        $("#auth").html('');
                    }
                    else {
                        $("#loginform").show();
                        $("#username").hide();
                        $("#username").html('');
                        $("#auth").show();
                        $("#auth").html("Access is denied!");
                    }
               // }

            },
            error: function (result) {

                alert("Error " + result.statusText);
            }
        });
    

};





function validateEmail(sEmail) {
    var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
    if (filter.test(sEmail)) {
        return true;
    }
    else {
        return false;
    }
}

function is_mobile_valid(string_or_number) {
    var mobile = string_or_number;
    if (mobile.length != 10) {
        return false;

    }
    intRegex = /[0-9 -()+]+$/;
    is_mobile = true;
    for (var i = 0; i < 10; i++) {
        if (intRegex.test(mobile[i])) {
            continue;
        }
        else {
            is_mobile = false;
            break;
        }
    }
    return is_mobile;

}



