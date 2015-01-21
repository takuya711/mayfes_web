$(function () {
	sizing();
	$(window).resize(function() {
		sizing();
	});
});

function sizing(){
	$("#main").attr({height:$("#wrapper").height()});
	$("#main").attr({width:$("#wrapper").width()});
}

jQuery(document).ready(function(){
    $(document).mousemove(function(e){
        jmouseX = e.pageX;
        jmouseY = e.pageY;
    }); 
})