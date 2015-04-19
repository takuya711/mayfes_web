$('.nonactive').hover(
    function () {
        $(this).removeClass('nonactive');
        $(this).addClass('active');
    },
    function () {
        $(this).removeClass('active');
        $(this).addClass('nonactive');
    }
    );