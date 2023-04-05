(function ($) {
    "use strict";

    const statusMessage = {success: "success", error: "error", warning: "warning", info: "info"};
    //Toast
    const notifications = $(".notifications");

    const removeToast = (toast) => {
        toast.addClass("remove");
        setTimeout(() => toast.remove(), 500);
    };
// fa-check-circle
// fa-times-circle
// fa-exclamation-circle
// fa-info-circle
    const toastDetails = {
        success: {
            icon: "fa-check-circle",
            message: "Success : this is a success toast",
        },
        error: {
            icon: "fa-times-circle",
            message: "Error : this is a error toast",
        },
        warning: {
            icon: "fa-exclamation-circle",
            message: "Warning : this is a warning toast",
        },
        info: {
            icon: "fa-info-circle",
            message: "Warning : this is a info toast",
        },
    };
    const handleCreateToast = (id, text) => {
        toastDetails[id]["message"] = text;
        const {icon, message} = toastDetails[id];

        const toast = $("<li>");
        toast.addClass(`toast ${id} show`);
        toast.html(`
  <div class="column">
          <i class="fa ${icon}"></i>
          <span>${message}</span>
        </div>
        <i class="fa fa-times close-toast"></i>
  `);
        notifications.append(toast);
        setTimeout(() => removeToast(toast), 3000);
    };

    function showToast(id, text) {
        handleCreateToast(id, text);
    }

    $(document).on('click', '.close-toast', function () {
        removeToast($(this).parent());
    });

    // Login
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
                if (data.status == 200){
                    if ('referrer' in document) {
                        window.location = document.referrer;
                    }
                }else {
                    showToast(statusMessage.warning,data.message);
                }
            }
        })
    })


    //Product detail
    $(".tab-color").click(function () {
        var color = $(this).attr("data-color-id");
        $(".tab-pane").removeClass("active");
        $(".tab-pane.show").addClass("active");
        $(".btn-add-to-cart.add-cart").attr("data-color-id", color);
    })

    $("#quantity-product").keyup(function () {
        var number = $(this).val();
        number = number == "" ? 1 : number;
        $(".btn-add-to-cart.add-cart").attr("i", number);
    })

    $("#quantity-product").change(function () {
        var number = $(this).val();
        number = number == "" ? 1 : number;
        $(".btn-add-to-cart.add-cart").attr("i", number);
    })

    $(function () {
        $('.star-rating').barrating({
            theme: 'fontawesome-stars'
        });
    });

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
                console.log("load");
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
                    showToast(statusMessage.success, data.message);
                } else {
                    showToast(statusMessage.error, data.message);
                }

                // alert()
            },
        })
    });

    //Remove item mini cart
    $(document).on('click', '.btn-remove-item-cart', function () {
        var url = $("base").attr("href");
        var productId = $(this).attr("data-id");
        var colorId = $(this).attr("data-color");
        $.ajax({
            url: url+"ajax/cart/delete",
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
                    showToast(statusMessage.success, response.message);
                } else {
                    showToast(statusMessage.error, response.message);
                }

            },
        })
    });

    function updateMiniCart(data) {
        $("#list-item-minicart").empty();
        var url = $("base").attr("href");
        for (let i = 0 ; i < data.length; i++){
            var html1 = `<li>
                 <div class="single-shop-cart-wrapper">
                   <div class="shop-cart-img">
                    <a href="#"><img src="${url}assets/user/images/product/mini/${data[i].image}" alt="Image of Product"></a>
                   </div>
                   <div class="shop-cart-info">
                      <h5><a href="${url}product/${data[i].productId}">${data[i].name}</a></h5>`
            var html2 ="";
            if (data[i].sale > 0){
                html2 = `<del>${formatCurrency(data[i].price)}</del>
                         <span class="price">${formatCurrency(data[i].sale)}</span>`
            }else {
                html2 = `<span class="price">${formatCurrency(data[i].price)}</span>`
            }

            var html3 = `<span class="quantaty">Qty: ${data[i].quantity}</span>
                       <span class="cart-remove"><a class="btn-remove-item-cart" data-id="${data[i].productId}" data-color="${data[i].colorId}"><i class="fa fa-times"></i></a></span>
                   </div>
                </div>
                </li>`

            var html = html1 + html2 + html3;
            $("#list-item-minicart").append(html);
        }

    }

    function formatCurrency(number){
        let formatNumber = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(number);
        return formatNumber;
    }
})(jQuery);