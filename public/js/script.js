
Mousetrap.bind('r', function(){
    $("#rules_popup").css("visibility", "visible");
    $("#rules_popup, #rules_contents").click(function() {
        $("#rules_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('s', function(){
    $("#scores_popup").css("visibility", "visible");
    $("#scores_popup, #scores_contents").click(function() {
        $("#scores_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('p', function(){
    $("#preferences_popup").css("visibility", "visible");
    $("#preferences_popup, #preferences_contents").click(function() {
        $("#preferences_popup").css("visibility", "hidden");
    })
});

Mousetrap.bind('q u a c k', function(){
    $("#easter_egg_popup").css("visibility", "visible");
    $("#easter_egg_popup, #easter_egg_contents").click(function() {
        $("#easter_egg_popup").css("visibility", "hidden");
    })
});
