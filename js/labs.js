$(".lablist").hover(
    function () {
        $(this).children('p').show("fast");
    },
    function () {
        $(this).children('p').hide("fast");
    }
);
