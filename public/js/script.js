
Mousetrap.bind('r', function(){
    $("#rules_popup").css("visibility", "visible");
    $(".close_button").click(function() {
        $("#rules_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('s', function(){
    $("#scores_popup").css("visibility", "visible");
    $(".close_button").click(function() {
        $("#scores_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('t', function(){
    $("#themes_popup").css("visibility", "visible");
    $(".close_button").click(function() {
        $("#themes_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('q u a c k', function(){
    $("#easter_egg_popup").css("visibility", "visible");
    $(".close_button").click(function() {
        $("#easter_egg_popup").css("visibility", "hidden");
    })
});

$(document).ready(function(){
    $("#grey").click(function(){
        $(".popup_contents").css({ backgroundColor: "#303E4E" });
        $("html").css({ backgroundColor: "#303E4E" });
    });
    $("#lilac").click(function(){
        $(".popup_contents").css({ backgroundColor: "#776D94" });
        $("html").css({ backgroundColor: "#776D94" });
    });
    $("#yellow").click(function(){
        $(".popup_contents").css({ backgroundColor: "#FEBF13" });
        $("html").css({ backgroundColor: "#FEBF13" });
    });
    $("#blue").click(function(){
        $(".popup_contents").css({ backgroundColor: "#4285F4" });
        $("html").css({ backgroundColor: "#4285F4" });
    });
    $("#green").click(function(){
        $(".popup_contents").css({ backgroundColor: "#34A853" });
        $("html").css({ backgroundColor: "#34A853" });
    });
    $("#red").click(function(){
        $(".popup_contents").css({ backgroundColor: "#D34644" });
        $("html").css({ backgroundColor: "#D34644" });
    });
});
