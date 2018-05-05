$(function() {
    $('#input2').hide();
    $('#mode').change(function(){
        if($('#mode').val() == 2) {
            $('#input2').show();
        } else {
            $('#input2').hide();
        }
    });
});
