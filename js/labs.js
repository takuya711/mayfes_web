/**$(".lablist").hover(
    function () {
        $(this).children('p').show("fast");
    },
    function () {
        $(this).children('p').hide("fast");
    }
);**/

/**$(".lablist").hover(
    function () {
        $(this).click(
        function () {
            $(this).children('p').show("fast");
        })
    },
    function () {
        $(this).children('p').hide("fast");
    }
);**/

$(".lablist").hover(
    function () {
        $(this).css("cursor","pointer");
    },
    function () {
        $(this).css("cursor","pointer");
    }
);

$(".lablist").on('click', function () {
    if ($(this).children('p').css('display') == 'none') {
        $(this).children('p').show("normal");
    }
    else {
        $(this).children('p').hide("normal");
    }
});