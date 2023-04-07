(function ($) {
    // Login
    const pattern = /^[a-zA-Z0-9]+$/;
    const input = $('#registerDate');
    const today = new Date().toISOString().split('T')[0];
    input.attr('max', today);

    $('#login-form').submit(function (e) {
        e.preventDefault();
        var loginFr = $(this);
        $.ajax({
            type: loginFr.attr("method"),
            url: loginFr.attr("action"),
            data: loginFr.serialize(),
            beforeSend: function (data) {
                $(".box-loading").addClass("active");
            },
            success: function (response) {
                var data = JSON.parse(response);
                $(".box-loading").removeClass("active");
                if (data.status == 200) {
                    if ('referrer' in document) {
                        window.location = document.referrer;
                    }
                } else {
                    showToast(statusMessage.warning, data.message);
                }
            }
        })
    })

    //register
    $('.form-register').submit(function (e) {
        e.preventDefault();
        var baseUrl = $('base').attr('href');
        var registerFrm = $(this);
        $.ajax({
            type: registerFrm.attr("method"),
            url: baseUrl + registerFrm.attr("action"),
            data: registerFrm.serialize(),
            beforeSend: function (data) {
                $(".box-loading").addClass("active");
            },
            success: function (response) {
                var data = JSON.parse(response);
                $(".box-loading").removeClass("active");
                if (data.status === 200) {
                    window.location = baseUrl;
                }
                if(data.status === 300)   {
                    showToast(statusMessage.warning, data.message);
                }
                if (data.status === 400) {
                    showToast(statusMessage.error, data.message);
                }
            },error: function (data){
                $(".box-loading").removeClass("active");
                showToast(statusMessage.error, "Lỗi kết nối.");
            }
        })

    })

    //product detail
    var i = 1;
    $("#btn-more-review").click(function () {

        var total = $("#total-review").html();
        var numberPage = total / 5;
        numberPage = parseInt(numberPage);
        var element = $(this);
        var url = $(this).attr("action");

        $.ajax({
            url: url + i.toString(),
            type: "get",
            beforeSend: function (data) {
                $(this).attr("disabled", true);
                element.text("Đang tải...");
            },
            success: function (data) {
                i = i + 1;
                element.text("Xem thêm");
                $(this).attr("disabled", false);
                $("#list-product-review").append(data);
            }, error: function (data) {
                element.text("Xem thêm");
                $(this).attr("disabled", false);
            }
        });

        if (i >= numberPage) {
            $(this).addClass("hide");
        }
    });

    //cart
    // add to cart
    $(document).on('click', '.product-quantity-action', function () {
        var url = $("base").attr("href");
        var productId = $(this).attr("product-id");
        var colorId = $(this).attr("data-color-id");
        if ($(this).attr('id') === "action-plus"){
            number =  1;
        }
        if ($(this).attr('id') === "action-minus"){
            number =  - 1;
        }

        $.ajax({
            url: url + "ajax/cart/add",
            type: "post",
            data: {
                "id": productId,
                "colorId": colorId,
                "i": number,
            }, beforeSend: function (data) {
                $(".box-loading").addClass("active");
            }
            , success: function (response) {
                $(".box-loading").removeClass("active");
                const data = JSON.parse(response);
                if (data.status === 200) {
                    $(".subtotal-minicart").html(formatCurrency(data.sTotalCart));
                    $("#quantity-minicart").html(data.cCart);
                    $(".total-save").html(formatCurrency(data.tSave));
                    updateMiniCart(data.cartList);
                    updateCart(data.cartList);
                    showToast(statusMessage.success, data.message);
                } else {
                    showToast(statusMessage.warning, data.message);
                }
            }, error : function (){
                showToast(statusMessage.error, "Lỗi máy chủ");
            }
        })
    })
    $("a.btn-add-to-cart").click(function () {
        var action = $(this).attr("action");
        var productId = $(this).attr("product-id");
        var colorId = $(this).attr("data-color-id");
        var i = $(this).attr("i");
        var element = $(this);
        $.ajax({
            url: action,
            type: "post",
            data: {
                "id": productId,
                "colorId": colorId,
                "i": i,
            }, beforeSend: function (data) {
                element.text("Đang thêm...");
            }
            , success: function (response) {
                element.text("Thêm giỏ hàng");
                const data = JSON.parse(response);
                if (data.status === 200) {
                    $(".subtotal-minicart").html(formatCurrency(data.sTotalCart));
                    $("#quantity-minicart").html(data.cCart);
                    $(".total-save").html(formatCurrency(data.tSave));
                    updateMiniCart(data.cartList);
                    updateCart(response.cartList);
                    showToast(statusMessage.success, data.message);
                } else {
                    showToast(statusMessage.warning, data.message);
                }
            }, error : function (){
                showToast(statusMessage.error, "Lỗi máy chủ");
            }
        })
    });

    //Remove item mini cart
    $(document).on('click', '.btn-remove-item-cart', function () {
        var url = $("base").attr("href");
        var productId = $(this).attr("data-id");
        var colorId = $(this).attr("data-color");
        $.ajax({
            url: url + "ajax/cart/delete",
            type: "post",
            data: {
                "id": productId,
                "colorId": colorId,
            }, beforeSend: function (data) {

            }
            , success: function (data) {
                const response = JSON.parse(data);
                if (response.status === 200) {
                    $(".subtotal-minicart").html(formatCurrency(response.sTotalCart));
                    $("#quantity-minicart").html(response.cCart);
                    $(".total-save").html(formatCurrency(response.tSave));
                    updateMiniCart(response.cartList);
                    updateCart(response.cartList);
                    showToast(statusMessage.success, response.message);
                } else {
                    showToast(statusMessage.error, response.message);
                }

            },
        })
    });
})(jQuery);
