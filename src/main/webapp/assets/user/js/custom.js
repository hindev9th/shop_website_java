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

    //loading
    $('.btn-return').click(function (){
        $(".box-loading").addClass("active");
    })
    $(window).on('unload', function() {
        $('.box-loading').removeClass("active");
    });

    //register
    $('#pwd-confirm').keyup(function (){
        var password = $('#register-pwd').val();
        var confirm = $(this).val();

        if (confirm == password){
            $(this).css('border','2px solid #198754');
        }else {
            $(this).css('border','2px solid #ec5a4a');
        }
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

    //minicart
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

    window.updateMiniCart = updateMiniCart;
    window.showToast = showToast;
    window.formatCurrency = formatCurrency;
    window.removeToast = removeToast;
    window.statusMessage = statusMessage;
})(jQuery);