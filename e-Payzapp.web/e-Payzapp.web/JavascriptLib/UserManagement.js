function MyPayment(mypay) {
   
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/api/Default/MakeRecharge2",
        data: JSON.stringify(mypay),
        dataType: "json",
        success: function (data) {
           
            alert(JSON.stringify(data));
        },
        error: function (result) {

            alert("Error " + result.statusText);
        }
    });


};