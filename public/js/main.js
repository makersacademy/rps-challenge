$('#human').on("click", function() {
	$('#player2_name').show();
})

$('#computer').on("click", function() {
	if( $('#player2_name').is(':visible') ) {
		$('#player2_name').value = null;
		$('#player2_name').hide();
	}
})