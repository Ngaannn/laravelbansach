jQuery(document).ready(function ($) {
    jQuery('.stellarnav').stellarNav({
        theme: 'light'
    });
});

// menu mobile
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}

// menu mobile

var owl = $('.owl-carousel');
owl.owlCarousel({
    margin: 10,
    loop: true,
    autoplay:false,
    autoplayTimeout:2000,
    autoplayHoverPause:true,
    responsive: {
        0: {
            items: 2
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
});

// click hiển thị thêm box slider

jQuery.fn.extend({
    setMenu:function () {
        return this.each(function() {
            var containermenu = $(this);

            var itemmenu = containermenu.find('.a-last-child');
            itemmenu.click(function () {
                var submenuitem = containermenu.find('.xtlab-ctmenu-sub-hidden');
                submenuitem.slideToggle(200);

            });

            $(document).click(function (e) {
                if (!containermenu.is(e.target) &&
                    containermenu.has(e.target).length === 0) {
                     var isopened =
                        containermenu.find('.xtlab-ctmenu-sub-hidden').css("display");

                     if (isopened == 'block') {
                         containermenu.find('.xtlab-ctmenu-sub-hidden').slideToggle(200);
                     }
                }
            });
        });
    },

});

$('.xtlab-ctmenu-sub').setMenu();

$('.a-last-child').on('click',function () {
    if($(this).hasClass("active")){
        $('.a-last-child').removeClass("active");
        document.getElementById("p1").innerHTML = "Xem thêm danh mục";
    }
    else{
        $(this).addClass("active");
        document.getElementById("p1").innerHTML = "Rút gọn danh mục";
    }
    $(this).prev('.xtlab-ctmenu-sub-hidden').slideToggle();

});


// cập nhật số lượng trong giỏ hàng

$(".chuc-nang-update").click(function(){
    var rowId = $(this).attr('id');
    var qty = $(this).parent().parent().find(".so-luong").val();
    var token = $("input[name='_token']").val();
    $.ajax({
        url:'cap-nhat-gio-hang/'+rowId+'/'+qty,
        type:'GET',
        cache:false,
        data:{
            "_token":token,
            "id":rowId,
            "qty":qty
        },

        success:function(data){
            location.reload();
            if(data == "oke"){
                window.location = "gio-hang"
            }
        }
    });
});

 /*--------- quantity change js start ---------*/
    $('.pro-qty').prepend('<span class="dec qtybtn">-</span>');
    $('.pro-qty').append('<span class="inc qtybtn">+</span>');
    $('.qtybtn').on('click', function () {
        var $button = $(this);
        var oldValue = $button.parent().find('input').val();
        if ($button.hasClass('inc')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find('input').val(newVal);
    });
    /*--------- quantity change js end ---------*/



// slider chi tiết sản phẩm
$(document).ready(function() {
    $("#content-slider").lightSlider({
        loop:true,
        keyPress:true
    });
    $('#image-gallery').lightSlider({
        gallery:true,
        item:1,
        thumbItem:5,
        slideMargin: 0,
        speed:500,
        auto:false,
        // auto:true,
        loop:true,
        onSliderLoad: function() {
            $('#image-gallery').removeClass('cS-hidden');
        }  
    });
});