var game = new Game();
var player = new Player();
var computer = new Computer();

$(document).ready(function() {

  $('#game-display').text(game.gameStart());

  $("#submitBtn").click(function(){
    $("myForm").submit();
    var userInput = $( "#player-turn" ).val()
    player.makeTurn(userInput)
  });

  $('#game-outcome').text(game.outcome());

});
